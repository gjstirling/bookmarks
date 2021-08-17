# Bookmark Challenge
---------------------
Task
-------

```
As a User
So I know what I have bookmarked
I need to to print a list of bookmarks

```

Domain Model diagram
----------------------
https://miro.com/app/board/o9J_l2U-ZSE=/


## Usage instructions
1. ### Setting up the database


* Connect to psql

* Create the databases using the psql command:
`CREATE DATABASE bookmark_manager;`

* Connect to the production database using the pqsl command: `\c bookmark_manager`;

* Create the bookmarks table using the psql command: `CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));`