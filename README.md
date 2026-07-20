# AI Engineering Playbook

A practical playbook for turning AI-assisted development from ad-hoc prompting into a repeatable engineering workflow.

This repository provides lightweight templates, checklists, and scripts for teams that use AI coding assistants and want better control over specifications, review, testing, CI quality gates, and evidence-based delivery.

## Why This Exists

AI can speed up coding and documentation, but unmanaged AI-assisted development can also create new risks:

- unclear requirements and missing design decisions
- context loss across sessions and tools
- code that does not match local architecture rules
- tests that are described but not actually executed
- pull requests without enough verification evidence
- repeated low-level defects such as missing fields, boundary issues, or inconsistent test naming

This playbook helps teams define a shared workflow so AI output becomes reviewable, traceable, and testable.

## What Is Included

- AI collaboration contract
- Spec-driven development workflow
- Testing strategy and report templates
- CI quality gate guidance
- Pull request checklist
- Defect analysis template
- Test naming check script

## Repository Structure

```text
.
├── docs/
│   ├── ai-collaboration-contract.md
│   ├── spec-driven-development.md
│   ├── testing-strategy.md
│   ├── ci-quality-gate.md
│   ├── ai-assisted-test-report-template.md
│   └── quality-evidence.md
├── templates/
│   ├── spec-template.md
│   ├── pr-checklist.md
│   ├── test-report-template.md
│   ├── defect-analysis-template.md
│   └── release-plan-template.md
├── scripts/
│   └── check-test-naming.sh
├── .github/
│   └── workflows/
│       └── markdown-check.yml
├── CONTRIBUTING.md
└── LICENSE
```

## Recommended Workflow

1. Start with a spec for non-trivial work.
2. Ask AI tools to follow the spec, architecture rules, and local conventions.
3. Split tests into unit, integration, and flow-level checks.
4. Run local verification before opening a pull request.
5. Use the PR checklist to document risk, verification, and rollback notes.
6. Let CI enforce build, test, static scan, and quality gates.
7. Record test and defect analysis results for future reuse.

## Quick Start

Copy the templates you need into your project:

```bash
cp templates/spec-template.md docs/specs/
cp templates/pr-checklist.md .github/PULL_REQUEST_TEMPLATE.md
cp scripts/check-test-naming.sh scripts/
```

Run the test naming check:

```bash
bash scripts/check-test-naming.sh .
```

## Scope

This project is intentionally lightweight. It does not replace your existing SDLC, CI platform, or testing framework. It provides a baseline that can be adapted to Java, JavaScript, Python, or mixed technology teams.

## License

MIT
