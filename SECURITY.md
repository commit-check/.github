# Security Policy

**Commit Check** takes the security of our software seriously. This policy outlines our approach to vulnerability management, supported versions, and how to report security issues.

## Supported Versions

The following versions of Commit Check projects are currently receiving security updates:

| Project / Component | Status | Supported Versions |
|---------------------|--------|--------------------|
| [commit-check](https://github.com/commit-check/commit-check) (CLI) | 🟢 Active | Latest minor (semver) |
| [commit-check-action](https://github.com/commit-check/commit-check-action) (GitHub Action) | 🟢 Active | Latest major version |
| commit-check-mcp (MCP Server) | 🔧 Experimental | See project README |

> **Note:** Only the **latest** minor/patch release of each project receives security patches.
> Users are strongly encouraged to keep their dependencies up to date.

### End-of-Life Components

No components are currently end-of-life. EOL status will be documented here when applicable.

## SLSA & Supply Chain Security

Commit Check is working toward **SLSA Level 3** compliance across our build and release pipeline.

| Requirement | Status | Details |
|-------------|--------|---------|
| Build provenance | ✅ | Verifiable attestations via GitHub Actions |
| Source integrity | ✅ | Signed tags and commits where possible |
| Isolated builds | ✅ | Ephemeral CI environments |
| Reproducible builds | 🔄 | In progress |
| SLSA badge | 🏗️ | Pending Level 3 verification |

Security-related SLSA metadata is published with each release. See individual project repositories for the latest SLSA badge and attestation details.

## Reporting a Vulnerability

We encourage responsible disclosure. **Please do not report security vulnerabilities via public GitHub issues.**

### Private Disclosure (Recommended)

1. **Email** — Send details to **[xianpeng.shen@gmail.com](mailto:xianpeng.shen@gmail.com)**
2. **Encryption** — If the issue is sensitive, please encrypt your report using our PGP key (see below).
3. **Response** — You will receive an acknowledgment within **48 hours**, followed by a detailed assessment and remediation timeline.

### GitHub Security Advisories

For projects that have the feature enabled, you may also report via **GitHub Security Advisories** under the "Security" tab of the affected repository. This method provides a private channel and optionally allows you to participate in the fix.

### What to Include

To help us triage and fix the issue quickly, please provide:

- **Project and version** affected
- **Description** of the vulnerability (type, impact)
- **Steps to reproduce** — minimal, self-contained example preferred
- **Proof of concept** (if available)
- **Suggested fix** (optional but appreciated)

### What to Expect

| Timeframe | Action |
|-----------|--------|
| ≤ 48 hours | Acknowledgment of receipt |
| 5–10 days | Initial triage and severity assessment |
| ≤ 30 days | Fix released (critical/high severity) |
| ≤ 90 days | Fix released (moderate/low severity) |

We will keep the reporter informed throughout the process and will credit you in the security advisory (unless you prefer to remain anonymous).

## PGP Key

For encrypted communication:

```
Key ID:       [TBD]
Fingerprint:  [TBD]
```

> **Note:** A dedicated security PGP key is being provisioned. In the interim,
> plain-text email to [xianpeng.shen@gmail.com](mailto:xianpeng.shen@gmail.com) is preferred.

## Security Practices

### For Maintainers

- All code changes go through **pull request review** with at least one approval.
- **Signed commits** are required for all repositories.
- **Branch protection** is enforced on `main` for all active repos.
- Secrets are managed via GitHub Actions secrets — never hard-coded.
- Dependency updates are reviewed via automated Dependabot / Renovate PRs.

### For Contributors

- Follow our [CONTRIBUTING.md](CONTRIBUTING.md) guidelines.
- Do not include credentials, tokens, or secrets in code, commits, or issues.
- If you discover a potential vulnerability, follow the reporting process above.

## Related Resources

- [SLSA Framework](https://slsa.dev)
- [GitHub Security Advisories](https://docs.github.com/en/code-security/security-advisories)
- [OpenSSF Best Practices](https://bestpractices.coreinfrastructure.org)
- [commit-check documentation](https://commit-check.github.io)
