<div align="center">

<!-- PNG rather than SVG: GitHub proxies README images through camo, which
     handles SVG unreliably. The .svg files alongside these are the source. -->
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/commit-check/.github/main/branding/banner-dark.png">
  <img src="https://raw.githubusercontent.com/commit-check/.github/main/branding/banner-light.png" alt="Commit Check — Clean commits. Clear standards.">
</picture>

Enforce commit message, branch naming, author, and signoff standards —
one policy, across your CLI, pre-commit, CI, and AI agents.

[![PyPI](https://img.shields.io/pypi/v/commit-check?logo=pypi&logoColor=white&color=2c9ccd)](https://pypi.org/project/commit-check/)
[![Downloads](https://img.shields.io/pypi/dm/commit-check?color=2c9ccd)](https://pypi.org/project/commit-check/)
[![Marketplace](https://img.shields.io/badge/Marketplace-commit--check--action-2c9ccd?logo=githubactions&logoColor=white)](https://github.com/marketplace/actions/commit-check-action)
[![License: MIT](https://img.shields.io/badge/License-MIT-2c9ccd.svg)](https://opensource.org/licenses/MIT)
[![Website](https://img.shields.io/badge/Website-commit--check.com-2c9ccd?logo=git&logoColor=white)](https://commit-check.com)

</div>

---

## What it looks like

```text
CC001 message check failed ==> updated the parser
The commit message should follow Conventional Commits. See https://www.conventionalcommits.org
Suggest: Use <type>(<scope>): <description>, where <type> is one of: feat, fix, docs, style, refactor, test, chore, perf, build, ci
Docs: https://commit-check.com/rules/#cc001
```

Every failure names a **stable rule ID**, the value that failed, what to do
about it, and where it is documented. The same verdict is available as JSON, a
job summary, a PR comment, or an MCP tool call — so the thing that fails your
build and the thing your agent reads are the same thing.

## One policy, four places

```
                      cchk.toml
                          │
        ┌─────────────────┼─────────────────┬─────────────────┐
        ▼                 ▼                 ▼                 ▼
  your machine       pre-commit         GitHub CI         AI agents
 (commit-check)         hook             Action             (MCP)
        │                 │                 │                 │
        └─────────────────┴────────┬────────┴─────────────────┘
                                   ▼
                       same rules, same verdict
```

**Commit Check** (aka **cchk**) is an open-source policy engine for Git commit
metadata — commit messages, branch names, committer name and email, signoff,
and more.

Write the rules once in a versioned TOML file and every enforcement point reads
that same file, so a commit that passes on a laptop passes in CI, and an agent
asking *"would this message be accepted?"* gets the answer your maintainers
actually configured. Organizations can go one step further: `inherit_from`
points at a shared config, and each repository overrides only what it must.

## Quick start

There is nothing to configure to begin with. Out of the box it enforces
Conventional Commits, Conventional Branch, and sane subject lengths.

**As a pre-commit hook** — feedback while the message is still being written:

```yaml
# .pre-commit-config.yaml
repos:
  - repo: https://github.com/commit-check/commit-check
    rev: v2.13.4
    hooks:
      - id: check-message
      - id: check-branch
```

**In GitHub Actions** — where it stops being a suggestion and becomes a policy:

```yaml
# .github/workflows/commit-check.yml
- uses: commit-check/commit-check-action@v2
  with:
    message: true
    branch: true
    pr-title: true
    job-summary: true
    pr-comments: true  # needs permissions: pull-requests: write
```

The full walkthrough, every rule, and the configuration reference live at
**[commit-check.com](https://commit-check.com)**.

## The Commit Check family

| Project | What it is | Use it for |
| --- | --- | --- |
| [**commit-check**](https://github.com/commit-check/commit-check) | Python CLI & pre-commit hook | Local checks, CI pipelines, scripting |
| [**commit-check-action**](https://github.com/commit-check/commit-check-action) | GitHub Action | PR & push validation, job summaries, PR comments |
| [**commit-check-mcp**](https://github.com/commit-check/commit-check-mcp) | Model Context Protocol server | Letting AI agents validate against your rules |
<!-- | **commit-check-app** | GitHub App | Zero-config, org-wide checks *(coming soon)* | -->

## What it does not do

Worth knowing before you adopt it:

- It reads commit **metadata** — messages, branch names, author identity,
  signoff, push safety. It does not read your code, and it is not a linter.
- A pre-commit hook can be skipped with `--no-verify`. Only the CI check is
  really a policy; the hook is there to save you the round trip.
- Imperative-mood checking judges a word's *form*, so a subject led by a noun
  that looks like a gerund (`fix: spelling in the docs`) gets reported. Reading
  the ending cannot tell those two apart.

## Where Commit Check fits

Commit metadata rules are usually behind a paid tier. GitHub's
[metadata restrictions](https://docs.github.com/en/enterprise-server@3.11/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/available-rules-for-rulesets#metadata-restrictions)
need Enterprise; Bitbucket's equivalent,
[Yet Another Commit Checker](https://marketplace.atlassian.com/apps/1211854/yet-another-commit-checker?tab=overview&hosting=datacenter),
is a paid Marketplace app. Commit Check is the open alternative — and because
the policy is a file in your repository rather than a settings page, it can be
reviewed, diffed, and rolled back like anything else you version.

- 🔒 **SLSA Level 3 build provenance.** Every release carries a signed
  attestation you can check yourself:

  ```console
  $ pip download commit-check --no-deps -d .
  $ gh attestation verify commit_check-*.whl --repo commit-check/commit-check
  ```

- 🏢 Runs in repositories across **Apache**, **Texas Instruments**, **Mila**,
  and [many more](https://github.com/commit-check/commit-check-action/network/dependents)
- 📖 MIT licensed, actively maintained, and itself following
  [Conventional Commits](https://www.conventionalcommits.org/) and
  [Conventional Branch](https://conventional-branch.github.io/)

## Get involved

We welcome feedback, bug reports, and feature requests from the community.

- [Issues](https://github.com/commit-check/commit-check/issues) — bug reports & feature requests
- [Discussions](https://github.com/commit-check/commit-check/discussions) — questions, ideas, and community conversations
- [Documentation](https://commit-check.com) — guides, configuration reference, and more
