# Setup auth + analytics (Supabase)

This guide walks you through enabling **soft signup login** for the tracker and an **admin dashboard** at `/admin.html` where only you can see user metrics.

**What users will experience after setup:**
- Visitors land on a welcome screen with three sign-in options: Google, GitHub, or email magic link (no password).
- After signing in, they see the full tracker with cloud sync across devices.
- Every user is captured in your `profiles` table — you get 100% visibility.

**Before setup (default / local-only mode):** The tracker works for everyone without any login — progress saves to localStorage only. This is fine for testing. As soon as you add Supabase credentials, the login wall goes up automatically.

**Time required:** ~20 minutes.
**Cost:** Free. Supabase's free tier covers 50,000 monthly active users.

---

## 1. Create a Supabase project

1. Go to https://supabase.com and sign up (GitHub login is fastest).
2. Click **New project**. Give it a name (e.g. `ai-engineer-roadmap`).
3. Set a strong database password. You won't need it again unless you use the SQL editor directly.
4. Pick the region closest to most of your users (US East is fine as default).
5. Click **Create new project**. Wait ~2 minutes for provisioning.

## 2. Run the database schema

In your Supabase project:

1. Left sidebar → **SQL Editor** → **New query**.
2. Paste the entire contents of `supabase-schema.sql` (in this repo).
3. Click **Run**. You should see "Success" with no errors.

This creates three tables: `profiles`, `progress`, `events` — with Row Level Security (RLS) configured so users can only read/write their own data, and analytics events are insert-only for everyone.

## 3. Enable OAuth providers

Left sidebar → **Authentication** → **Providers**.

### Google
1. Toggle Google ON.
2. Follow the link "How to configure Google OAuth" — it walks you through creating a Google Cloud OAuth client.
3. You'll get a Client ID + Client Secret. Paste them into Supabase.
4. Copy the "Callback URL" Supabase shows you and paste it into your Google Cloud OAuth client's "Authorized redirect URIs".
5. Save.

### GitHub
1. Toggle GitHub ON.
2. Go to https://github.com/settings/developers → **New OAuth App**.
3. Application name: `AI Engineer Roadmap`. Homepage URL: your live site. Authorization callback URL: the callback URL Supabase shows you.
4. Copy the generated Client ID + Secret back to Supabase.
5. Save.

### Email (already enabled by default)
Email magic links work out of the box. No setup needed.

## 4. Configure redirect URLs

**Authentication** → **URL Configuration**.

Add both of these to the "Redirect URLs" allow list:
- `https://haranprithvii.github.io/ai-engineer-roadmap/tracker.html`
- `https://haranprithvii.github.io/ai-engineer-roadmap/admin.html`

Also add `http://localhost:*` if you ever want to test locally.

Set the **Site URL** to: `https://haranprithvii.github.io/ai-engineer-roadmap/`

## 5. Grab your credentials

Left sidebar → **Project Settings** → **API**.

You need two values:
- **Project URL** — looks like `https://abcdefghijk.supabase.co`
- **anon public key** — long JWT starting with `eyJhbGciOi...`

The anon key is **safe to put in client-side code**. It can only do what your RLS policies allow. Do NOT use the `service_role` key anywhere in your frontend.

## 6. Wire up the tracker

Open `docs/tracker.html` in your editor. Near the top you'll see:

```js
window.ROADMAP_CONFIG = {
  SUPABASE_URL: "",
  SUPABASE_ANON_KEY: "",
  ENABLE_ANALYTICS: true
};
```

Paste your values:

```js
window.ROADMAP_CONFIG = {
  SUPABASE_URL: "https://YOURPROJECT.supabase.co",
  SUPABASE_ANON_KEY: "eyJhbGciOi...(long string)",
  ENABLE_ANALYTICS: true
};
```

## 7. Wire up the admin dashboard

Open `docs/admin.html`. Near the top:

```js
window.ROADMAP_CONFIG = {
  SUPABASE_URL: "",
  SUPABASE_ANON_KEY: "",
  ADMIN_EMAIL: ""
};
```

Paste your URL + anon key + the email you want to use for admin access:

```js
window.ROADMAP_CONFIG = {
  SUPABASE_URL: "https://YOURPROJECT.supabase.co",
  SUPABASE_ANON_KEY: "eyJhbGciOi...",
  ADMIN_EMAIL: "you@yourdomain.com"
};
```

Only this email will be able to access the dashboard. Anyone else who tries the magic link will be redirected but shown the login screen again.

## 8. Commit and push

```bash
git add docs/tracker.html docs/admin.html
git commit -m "Enable cloud sync + admin dashboard"
git push
```

Wait ~60 seconds for GitHub Pages to rebuild.

## 9. Test it

1. Open an incognito window → go to your tracker.
2. Click **☁ Sync progress** (top right of toolbar).
3. Try each sign-in method. Magic link is slowest (email delivery).
4. Check a task, reload the page — your progress should be preserved.
5. Open `https://haranprithvii.github.io/ai-engineer-roadmap/admin.html` and sign in with your admin email. You should see yourself in the users table.

## Troubleshooting

**"Invalid login credentials" / can't sign in with OAuth**
→ Check that the Callback URL in Google/GitHub matches the one Supabase shows exactly, including https://.

**Magic link email never arrives**
→ Check spam. Supabase's free tier uses a shared sending domain — you can set up your own SMTP later (SendGrid free tier works well).

**Admin dashboard says "Setup required" even after config**
→ Make sure you pushed `docs/admin.html` and hard-refreshed (Cmd+Shift+R).

**"Row-level security policy" errors in console**
→ Re-run `supabase-schema.sql` in full. Some policies may not have been created.

## What's stored?

- **`profiles`**: user id, email, signup timestamp. Populated automatically when a user signs in.
- **`progress`**: your tracker state blob (checked tasks + which phases are expanded), one row per user.
- **`events`**: anonymous pageviews + task completions + logins. Used for the admin funnel charts.

No IP addresses, no session recording, no third-party analytics.

## Future monetization hooks

Once you have users signed up, you already have what you need. When the time comes:

- Add a `plan` column to `profiles` (e.g. `'free' | 'pro'`).
- Gate premium features in `tracker.html` by checking the user's plan.
- Use Stripe Checkout (also has a free tier for early use) — Supabase has an integration.
- Email your user list about the launch. That's your most valuable asset.
