# Task 2: Add `status` column

## Goal
Extend `user_profile` table with a status.

## Task
- Create a new versioned Flyway migration
- Add a column `status` to the `user_profile` table
- Decide yourself:
  - on a reasonable data type
  - the length for the `status`
  - whether a default value is appropriate
  - nullability
- Ensure that the migration can be applied