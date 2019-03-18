# NLW Madoc
NLW configuration for Madoc. This will be used to build a fork-able template for other Madoc implementations once stable.

## Generating new admin password
Use this tool to generate a new hash:
```
$ bin/generate-password <new secure password>
```

Modify `database/sql/09-user.sql` and swap the password hash there for the one you've generated. 

## Generating new users
To generate a complete new user (sql) you can use this tool. It will output SQL that can be added to the `sql/09-user.sql` file and will be generated on boot.
```
$ bin/generate-user <username> <email> <password> [group]
```
The default group is `global_admin`.
