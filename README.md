# Flyway Workshop – Database Migrations with Flyway and H2

This repository is a tiny hands-on Flyway workshop project.
It demonstrates how to version and evolve a database schema using Flyway with a local H2 database.

## Prerequisites
You only need:
- Java (JDK) installed (it may be necessary to use JDK 21 or newer)
- An IDE of your choice

You do not need Maven installed globally. 
This project uses the Maven Wrapper (mvnw), which is already included.
You don't have to use the Maven Wrapper, though. 
You can also use your globally installed Maven version, or a bundled Maven version in your IDE.

## Getting Started

### 1. Clone this repository
```bash
git clone <repository-url>
cd <repository-folder>
```
### 2. Open the project in your IDE 
The project already contains:
- Maven Wrapper 
- Flyway configuration 
- an embedded H2 database

## Database Setup
The database is automatically created and migrated when you run the Maven Flyway commands.
- Database: H2 
- Database files location: `db/h2 `
- The database is stored locally (file-based), not in memory.

## Database Migrations
All database migrations are located in: `db/migration/`

Structure:

```
db/migration/
├── base/   # base schema migrations
└── dev/    # development / test data migrations
```

Flyway automatically detects and executes these migrations in the correct order.

## Running Flyway
For convenience, a few CMD scripts are provided.

### Standard migration
Runs the default Flyway migration setup: `flyway-migrate.cmd`

This will:
- connect to the H2 database
- apply all pending migrations
- update the Flyway schema history table

### Development migration
Runs a custom Flyway migration (e.g. including dev/test data): `flyway-migrate-dev.cmd`

Use this when working on development-specific migrations.

## H2 Console
You can inspect the database using the H2 web console. 
You can start it using the provided script: `h2.cmd`
This opens the H2 console in your browser.

You can also use a different database client of your choice that supports H2.

### Connection details
Make sure to use the following JDBC URL to connect:

```
jdbc:h2:./db/h2/local
```

### Login credentials
Username: `sa`
Password: `password`

Once logged in, you can:
- inspect tables
- run SQL queries
- view Flyway’s schema history (see the `flyway_schema_history` table)

### Further information
- if you want to run Flyway commands, you need to close the H2 console first, as it locks the database files. 
  For this, just close the terminal window where you started the H2 console.
- if you want to reset the database, you can simply delete the files in the `db/h2/` folder.
- you can delete a version from the `flyway_schema_history` table to re-apply a specific migration.
  This will only delete the record of that migration from Flyway's history, but will not revert any changes made by that migration.
  Keep in mind that this may lead to inconsistencies.
  For local development, deleting a version is okay, but avoid this in production environments.

## Tasks
Under the tasks folder you will find several small hands-on tasks, for example:

- adding new columns via Flyway migrations
- inserting test data
- introducing constraints (e.g. NOT NULL)
- evolving the schema step by step

These tasks are designed to be solved incrementally, just like in a real project.
In case you get stuck, you can reset the database by deleting the files in the `db/h2/` folder.
For the local database, this is fine, as it only contains test data.