# CI Quality Gate

CI quality gates turn engineering rules into repeatable checks.

## Recommended Gates

- dependency restore
- compile or type check
- unit tests
- integration tests where feasible
- static analysis
- security scan where applicable
- artifact packaging
- report upload

## Pull Request Gate

A pull request should not be merged until it includes:

- a clear change summary
- linked issue, spec, or requirement
- test evidence
- risk notes
- rollback or mitigation notes for risky changes

## Example CI Stages

```text
checkout
lint
unit-test
integration-test
static-scan
package
upload-artifact
```

## Failure Policy

Failed gates should block merge unless there is an explicit, reviewed exception. Exceptions should include owner, reason, risk, and follow-up date.
