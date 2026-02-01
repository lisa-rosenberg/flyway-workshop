# Flyway Workshop – Database Migrations with H2

This repository is a tiny hands-on Flyway workshop project.
It demonstrates how to version and evolve a database schema using Flyway with a local H2 database.

## Prerequisites
You only need:
- Java (JDK) installed 
- An IDE of your choice

You do not need Maven installed globally. 
This project uses the Maven Wrapper (mvnw), which is already included.

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

Start the H2 console: h2.cmd

This opens the H2 console in your browser.

### Login credentials

Username: sa
Password: password

Once logged in, you can:
- inspect tables
- run SQL queries
- view Flyway’s schema history

## Tasks
Under the tasks folder you will find several small hands-on tasks, for example:

- adding new columns via Flyway migrations
- inserting test data
- introducing constraints (e.g. NOT NULL)
- evolving the schema step by step

These tasks are designed to be solved incrementally, just like in a real project.