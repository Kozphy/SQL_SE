-- https://en.wikibooks.org/wiki/SQL_Exercises/Scientists
-- 6.1 List all the scientists' names, their projects' names, 
-- and the hours worked by that scientist on each project, 
-- in alphabetical order of project name, then scientist name.
-- TODO: fix that get empty 
select Name from Scientists
join AssignedTo where Scientists.SSN = AssignedTo.Scientist
join Projects where Projects.Code = AssignedTo.Project


-- 6.2 Select the project names which are not assigned yet
