-- ==========================================================================
-- AI Engineer Roadmap — Supabase schema
-- Paste this entire file into Supabase → SQL Editor → New query → Run.
-- Safe to re-run: uses IF NOT EXISTS where possible.
-- ==========================================================================

-- ---------------------------------------------------------------------------
-- 1) PROFILES — one row per signed-up user.
--    Automatically populated via trigger when a new auth.users row is created.
-- ---------------------------------------------------------------------------
create table if not exists public.profiles (
  id         uuid primary key references auth.users(id) on delete cascade,
  email      text,
  created_at timestamptz not null default now()
);

alter table public.profiles enable row level security;

-- A user can read only their own profile
drop policy if exists "profiles_select_self" on public.profiles;
create policy "profiles_select_self"
  on public.profiles for select
  using (auth.uid() = id);

-- A user can update only their own profile
drop policy if exists "profiles_update_self" on public.profiles;
create policy "profiles_update_self"
  on public.profiles for update
  using (auth.uid() = id);

-- Admins (defined by having the 'admin' role in JWT claims, OR via email allow-list below)
-- can read all profiles. Easiest version: match on email.
-- Replace the email here with YOUR admin email.
drop policy if exists "profiles_select_admin" on public.profiles;
create policy "profiles_select_admin"
  on public.profiles for select
  using (
    auth.jwt() ->> 'email' in (
      select email from public.admin_emails
    )
  );

-- ---------------------------------------------------------------------------
-- 2) ADMIN_EMAILS — tiny allow-list table so the admin dashboard query works.
--    Insert YOUR email here after running this script (instructions at bottom).
-- ---------------------------------------------------------------------------
create table if not exists public.admin_emails (
  email text primary key
);

alter table public.admin_emails enable row level security;
drop policy if exists "admin_emails_select_self" on public.admin_emails;
create policy "admin_emails_select_self"
  on public.admin_emails for select
  using (auth.jwt() ->> 'email' = email);

-- ---------------------------------------------------------------------------
-- 3) PROGRESS — one row per user, holding their full tracker state.
-- ---------------------------------------------------------------------------
create table if not exists public.progress (
  user_id    uuid primary key references auth.users(id) on delete cascade,
  state      jsonb not null default '{}'::jsonb,
  open_state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.progress enable row level security;

drop policy if exists "progress_select_self" on public.progress;
create policy "progress_select_self"
  on public.progress for select
  using (auth.uid() = user_id);

drop policy if exists "progress_insert_self" on public.progress;
create policy "progress_insert_self"
  on public.progress for insert
  with check (auth.uid() = user_id);

drop policy if exists "progress_update_self" on public.progress;
create policy "progress_update_self"
  on public.progress for update
  using (auth.uid() = user_id);

drop policy if exists "progress_select_admin" on public.progress;
create policy "progress_select_admin"
  on public.progress for select
  using (auth.jwt() ->> 'email' in (select email from public.admin_emails));

-- ---------------------------------------------------------------------------
-- 4) EVENTS — analytics log (pageviews, task_complete, login).
--    INSERT is open to everyone (including anonymous pageviews).
--    SELECT is admin-only.
-- ---------------------------------------------------------------------------
create table if not exists public.events (
  id          bigserial primary key,
  event_type  text not null,
  user_id     uuid references auth.users(id) on delete set null,
  path        text,
  referrer    text,
  user_agent  text,
  meta        jsonb,
  created_at  timestamptz not null default now()
);

alter table public.events enable row level security;

-- Anyone (including anon role) can insert events
drop policy if exists "events_insert_any" on public.events;
create policy "events_insert_any"
  on public.events for insert
  with check (true);

-- Only admins can read
drop policy if exists "events_select_admin" on public.events;
create policy "events_select_admin"
  on public.events for select
  using (auth.jwt() ->> 'email' in (select email from public.admin_emails));

create index if not exists events_created_at_idx on public.events (created_at desc);
create index if not exists events_type_idx on public.events (event_type);

-- ---------------------------------------------------------------------------
-- 5) TRIGGER — automatically create a profile row when a new user signs up.
-- ---------------------------------------------------------------------------
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, email)
  values (new.id, new.email)
  on conflict (id) do nothing;
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- ==========================================================================
-- FINAL STEP — add your admin email.
-- Replace the email below with the email you'll use to log into admin.html,
-- then re-run JUST this INSERT (or run the whole file again — it's idempotent).
-- ==========================================================================

-- insert into public.admin_emails (email) values ('you@yourdomain.com');
