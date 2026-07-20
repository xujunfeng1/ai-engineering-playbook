# Spec-Driven Development

Spec-driven development is useful when a change affects multiple modules, APIs, data models, tests, or deployment behavior.

## When A Spec Is Required

Write a spec before implementation when the change includes:

- cross-service or cross-module behavior
- public API or contract changes
- database schema changes
- permission or identity logic
- payment, billing, or other high-risk workflows
- migration or rollback requirements
- multi-step AI-assisted development

## Spec Content

A useful spec should include:

- background and problem statement
- goals and non-goals
- affected modules
- data model changes
- API contract changes
- core flow design
- compatibility concerns
- testing strategy
- release and rollback plan
- open questions

## Review Gate

Before implementation, reviewers should confirm:

- the problem is clearly scoped
- the design follows existing architecture
- data and API changes are compatible
- testing coverage is realistic
- rollback and observability are considered

## Implementation

Implementation should follow the spec. If reality differs from the spec, update the spec or record the decision instead of silently diverging.
