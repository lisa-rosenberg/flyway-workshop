# Task 5: Add a new table

## Goal
Extend the database schema by introducing a new table that belongs to the `user_profile` table.

## Task
- Create a new versioned Flyway migration
- You can decide on the name of the new table and its purpose
- The new table should:
  - have a primary key column `id`
  - have a foreign key column `user_profile_id` that references the `user_profile` table
  - You can decide on additional columns as appropriate
- Ensure that the migration can be applied.