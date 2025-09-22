# easycrawl-common-prisma
A shared database schema repository for the Node.js project at Easycrawl.

## Use as a Git Submodule
Add this repository as a git submodule to your project:
```bash
git submodule add https://github.com/easycrawl-dev/easycrawl-common-prisma.git prisma
```

## When schema needs to be edited
Pull the latest changes before making any edits:
```bash
npx prisma pull
npx prisma generate --no-engine  # to update the Prisma Client, this is necessary
```

Make your schema changes in `prisma/schema.prisma`:
```bash
vi prisma/schema.prisma
```
After editing the schema, create a new migration with a descriptive name, run the migration command:
```bash
npx prisma migrate dev --name <your_migration_name>
```
**To apply migrations in other environments (e.g., production), use:**
```bash
npx prisma migrate deploy
```