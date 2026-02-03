# Task 5: Add a new table for user notes

## Goal
Extend the database schema by introducing a new table that belongs to the `user_profile` table.

## Task
- Create a new versioned Flyway migration
- The name of the new table should be "user_note"
- The new table should:
  - have a primary key column `id`
  - have a foreign key column `user_profile_id` that references the `user_profile` table
  - include a `note` column to store text notes
- Ensure that the migration can be applied.