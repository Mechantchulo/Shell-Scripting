# Shell-Scripting

A collection of reusable, well-documented Bash scripts for small utilities, automation tasks, and demos. This repository is a workspace for creating, testing, and sharing shell scripts. Each script should be self-contained, documented at the top, and safe to run on a developer machine.

## Project structure

Top-level files:

- `bashtest.sh` — example/test script (placeholder for demonstration or quick checks).
- `create_folder.sh` — utility script to create folders (example name; see header inside script for details).
- `mytest.sh` — an additional test/demo script.
- `README.md` — this file.

As the repository grows, add new scripts at the root or under a subfolder such as `scripts/` and update this README with short descriptions.

## Goals and conventions

- Keep scripts small and single-purpose.
- Include a header comment (see "Script header template" below) explaining purpose, usage, inputs, and outputs.
- Prefer POSIX/Bash-compatible syntax to maximize portability.
- Keep destructive actions (rm, overwrite) behind an explicit flag and require confirmation by default.
- Add a short usage/help output (`--help` or `-h`) to each script.

## How to run the scripts

1. Make the script executable (one-time):

```bash
chmod +x ./create_folder.sh
# or make all scripts executable
chmod +x ./*.sh
```

2. Run a script directly:

```bash
./create_folder.sh [arguments]
```

3. Or run with an explicit shell (useful to test with a specific shell):

```bash
bash ./bashtest.sh
# or
zsh ./mytest.sh
```

4. View help:

```bash
./create_folder.sh --help
```

## Example usage

Below is a generic example for `create_folder.sh`. Replace with the script-specific flags shown in the script header.

```bash
# create a folder named 'sample' in the current directory
./create_folder.sh sample

# create with a parent path
./create_folder.sh -p /tmp/projects sample

# show help
./create_folder.sh -h
```

## Script header template (recommended)

Include the following block at the top of every script so other contributors know how to use it and what to expect:

```bash
#!/usr/bin/env bash
# =============================================================================
# name: script-name.sh
# description: Short one-line description of what the script does.
# usage: ./script-name.sh [options] <positional-args>
# options:
#   -h, --help    Show this help message and exit
#   -f, --force   Force behavior (use carefully)
# inputs: Describe files/environment variables that the script reads
# outputs: Describe files/side-effects the script writes or modifies
# exit codes: 0=ok, 1=invalid args, 2=runtime error, etc.
# =============================================================================

set -euo pipefail

usage() {
  sed -n '1,40p' "$0" | sed -n 's/^# //p'  # prints the commented header block
}

if [[ ${1:-} =~ ^(-h|--help)$ ]]; then
  usage
  exit 0
fi
```

This enforces a consistent help behavior and documents assumptions.

## Adding new scripts

- Create a file with a descriptive name and the header template above.
- Make it executable and add examples to this README or a `docs/` file.
- Open a PR with a short description and a usage example.

## Safety and testing

- Test scripts in a safe environment (temporary dirs, containers, or VMs) before running on important machines.
- Use `set -euo pipefail` and careful quoting to avoid mistakes.
- Add checks for required commands (e.g., `command -v jq >/dev/null || { echo "jq is required"; exit 1; }`).

## Contributing

Contributions are welcome. When submitting new scripts or changes:

1. Add or update the script header with usage examples.
2. Keep changes focused and documented in the PR description.
3. If your change affects other scripts, update this README.

## Troubleshooting

- "Permission denied" when running: ensure the script is executable (`chmod +x`).
- Unexpected behavior: run with `bash -x ./script.sh` to trace execution.

## License

Add a license file (for example `LICENSE` with MIT or another license) at the repository root if you want to make usage and contribution terms explicit.

## Contact

If you want help improving these scripts or adding CI/tests, open an issue or reach out in the repository's issue tracker.

---


