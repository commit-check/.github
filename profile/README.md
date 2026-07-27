<div align="center">

<img src="https://raw.githubusercontent.com/commit-check/.github/main/branding/logo-small.jpg" alt="Commit Check" width="400">

# Commit Check

**Clean commits. Clear standards.**

Enforce commit message, branch naming, author, and signoff standards —
one policy, across your CLI, pre-commit, CI, and AI agents.

[![PyPI](https://img.shields.io/pypi/v/commit-check?logo=pypi&logoColor=white&color=2c9ccd)](https://pypi.org/project/commit-check/)
[![Downloads](https://img.shields.io/pypi/dm/commit-check?color=2c9ccd)](https://pypi.org/project/commit-check/)
[![Marketplace](https://img.shields.io/badge/Marketplace-commit--check--action-2c9ccd?logo=githubactions&logoColor=white)](https://github.com/marketplace/actions/commit-check-action)
[![SLSA 3](https://slsa.dev/images/gh-badge-level3.svg)](https://slsa.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-2c9ccd.svg)](https://opensource.org/licenses/MIT)
[![Website](https://img.shields.io/badge/Docs-commit--check.github.io-2c9ccd?logo=git&logoColor=white)](https://commit-check.github.io)

</div>

---

## Why Commit Check

**Commit Check** (aka **cchk**) is an open-source policy engine for Git commit
metadata — commit messages, branch names, committer name/email, signoff, and
more — helping teams keep a **consistent, compliant, and clean Git history**.

Define your rules once in a single versioned config, and enforce them
identically everywhere: on a developer's machine, in CI, and in AI-assisted
workflows.

It's a lightweight, open alternative to GitHub Enterprise
[metadata restrictions](https://docs.github.com/en/enterprise-server@3.11/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets#metadata-restrictions)
and Bitbucket's paid
[Yet Another Commit Checker](https://marketplace.atlassian.com/apps/1211854/yet-another-commit-checker?tab=overview&hosting=datacenter),
built for a modern DevOps and Infrastructure-as-Code workflow.

## The Commit Check family

| Project | What it is | Use it for |
| --- | --- | --- |
| [**commit-check**](https://github.com/commit-check/commit-check) | Python CLI & pre-commit hook | Local checks, CI pipelines, scripting |
| [**commit-check-action**](https://github.com/commit-check/commit-check-action) | GitHub Action | PR & push validation, job summaries, PR comments |
| [**commit-check-mcp**](https://github.com/commit-check/commit-check-mcp) | Model Context Protocol server | Letting AI agents validate against your rules |
<!-- | **commit-check-app** | GitHub App | Zero-config, org-wide checks *(coming soon)* | -->

## Key features

- ✅ **Conventional Commits** & **Conventional Branch** enforcement
- ✅ **Author** name / email validation with configurable patterns
- ✅ **Signoff (DCO)** verification
- ✅ **Rebase / merge-base** and **force-push** safety checks
- ✅ **AI attribution governance** — detect or forbid AI-generated commit trailers
- ✅ **One config** (`cchk.toml`), with org-level inheritance, shared across CLI, pre-commit & CI
- ✅ **Job summaries & PR comments**, plus **JSON output** and **MCP tools** for automation and AI agents

## Trusted & secure

- 🔒 **SLSA Level 3** build provenance, with artifact attestation verified at install time
- 🏢 Used by teams at **Apache**, **Texas Instruments**, **Mila**, and [many more](https://github.com/commit-check/commit-check-action/network/dependents)
- 📖 **MIT licensed**, actively maintained, and following [Conventional Commits](https://www.conventionalcommits.org/) and [Conventional Branch](https://conventional-branch.github.io/)

## Get involved

We welcome feedback, bug reports, and feature requests from the community.

- [Issues](https://github.com/commit-check/commit-check/issues) — bug reports & feature requests
- [Discussions](https://github.com/commit-check/commit-check/discussions) — questions, ideas, and community conversations
- [Documentation](https://commit-check.github.io) — guides, configuration reference, and more
