# Task 4: Make `phone_number` NOT NULL

## Goal
The phone number should now be mandatory.

## Task
- Create a new versioned Flyway migration
- Ensure that:
  - existing rows do not violate the new constraint
  - `phone_number` ends up as `NOT NULL`
- Ensure that the migration can be applied.