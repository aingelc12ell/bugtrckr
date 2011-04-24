--
-- Ticket
--
CREATE TABLE Ticket (id INTEGER PRIMARY KEY AUTOINCREMENT, hash char(12) UNIQUE, title varchar(40), description text, created int, owner int, assigned int, type int, state int, priority int, category varchar(40), milestone int);
INSERT INTO Ticket (id, hash, title, description, created, owner, type, state, priority, category, milestone) VALUES (1, 'b026324c6904b2a9cb4b88d6d61c81d1', 'Example Ticket', 'This Ticket is just a little example', 1, 1, 2, 1, 1, 3, 1, 1);
--
-- User
--
CREATE TABLE User (id integer PRIMARY KEY AUTOINCREMENT, name varchar(45), hash varchar(12) UNIQUE, password varchar, salt varchar, email varchar, admin bool, lastProject int);
INSERT INTO User (id, name, hash, password, salt, email, admin) VALUES (1, 'adm', 'b026324c6904b2a9cb4b88d6d61c81d1', 1, 1, 'admin@bugtrckr', 1, 0);
INSERT INTO User (id, name, hash, password, salt, email, admin) VALUES (2, 'johndoe', '26ab0db90d72e28ad0ba1e22ee510510', 2, 2, 'johndoe@bugtrckr', 0, 0);
--
-- Project
--
CREATE TABLE Project (id INTEGER PRIMARY KEY AUTOINCREMENT, hash char(12) UNIQUE, name varchar);
INSERT INTO Project (id, hash, name) VALUES (1, 'b026324c6904b2a9cb4b88d6d61c81d1', 'Example Project');
--
-- Milestone
--
CREATE TABLE Milestone (id INTEGER PRIMARY KEY AUTOINCREMENT, hash char(12) UNIQUE, name varchar, description text, finished int, project int);
INSERT INTO Milestone (id, hash, name, description, finished, project) VALUES (1, 'b026324c6904b2a9cb4b88d6d61c81d1', 'First Milestone', 'UUUUAH', 1, 1);
--
-- Activity
--
CREATE TABLE Activity (id INTEGER PRIMARY KEY AUTOINCREMENT, hash char(12) UNIQUE, description text, user int, changed int, project int);
INSERT INTO Activity (id, hash, description, user, changed, project) VALUES (1, 'b026324c6904b2a9cb4b88d6d61c81d1', 'Example Activity', 1, 1, 1);
--
-- Role
--
CREATE TABLE Role ("id" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , "name" VARCHAR, "issuesAssigneable" BOOL, "proj_editProject" BOOL, "proj_manageMembers" BOOL, "iss_editIssues" BOOL, "iss_addIssues" BOOL, "iss_deleteIssues" BOOL, "iss_moveIssue" BOOL, "iss_editWatchers" BOOL, "iss_addWatchers" BOOL, "iss_viewWatchers" BOOL);
--
-- ProjectPermission
--
CREATE TABLE ProjectPermission ("userId" INTEGER, "projectId" INTEGER, "roleId" INTEGER);
