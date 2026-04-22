# Python & Engineering — Map of Content

All concept notes in this cluster. Use the Graph view (Cmd/Ctrl+G) to see how they interconnect.

- [[Data Types]] — Python's built-ins: int, float, str, bool, list, dict, set, tuple. Know their time complexities cold.
- [[Comprehensions]] — List/dict/set comprehensions: `[x*2 for x in xs if x>0]`. Idiomatic Python, often faster than loops.
- [[Decorators]] — Functions that wrap other functions: `@cache`, `@staticmethod`, `@app.get('/')`. Used everywhere in FastAPI, PyTorch `@torch.no_grad`.
- [[Context Managers]] — The `with` statement. Implements `__enter__`/`__exit__`. Used for file handles, DB connections, `torch.no_grad()`.
- [[Generators]] — Functions with `yield` — produce values lazily. Essential for streaming LLM responses and large datasets.
- [[Dataclasses]] — `@dataclass` auto-generates `__init__`, `__repr__`, `__eq__`. Use instead of bare classes for data containers. Pydantic extends these for validation.
- [[Type Hints]] — `def f(x: int) -> str: ...`. Static typing in Python. Catch bugs early, enable better autocomplete. Pair with `mypy` or `pyright`.
- [[Virtual Environments]] — Isolated Python installs per project. Use `uv venv` or `python -m venv`. Never install globally.
- [[Dependency Management]] — Tools: `pip`, `uv`, `poetry`, `conda`. Pin versions in `requirements.txt` or `pyproject.toml`. Commit your lockfile.
- [[Big O Notation]] — How runtime/memory scales with input size. O(1), O(log n), O(n), O(n log n), O(n²). Interview bread-and-butter.
- [[Hashmaps]] — Python `dict`. O(1) lookup/insert on average. The key data structure for DSA problems.
- [[Recursion]] — A function that calls itself. Foundation for tree/graph traversal, divide-and-conquer, dynamic programming.
- [[Git]] — Distributed version control. Learn: branch, commit, rebase, merge, cherry-pick, PRs, resolving conflicts.
- [[Command Line]] — Bash/zsh fluency: grep, sed, awk, find, xargs, |, >, <, &. Speeds up everything.

## Tags
#moc #python
