------------------------------------09 22 2025-----------------------------------
--feeling anxious tonight
--

--this one looks complicated.

--but so far 3 columns or fields.
--Name, Grade and Mark.

--Katie doesn't want the names of those students who received a grade lower than 8.

--ok,
--I think I want to start focusing on the first question or part of the question thus far.

--it will make me feel like I am being productive.
--since practicing is the key.
--

--I am going to go ahead and get the three columns.
--which may already be a JOIN.

--what kind?
--I think INNER JOIN.

--let me print off some result sets.

USE The_Report;
SELECT *
	FROM Students;

USE The_Report;
SELECT *
	FROM Grades;

--Nice,
--the tables look glorious.

--next.

--the columns are 
--Name, Grade and Marks.

--alright,
--I am almost crisply getting a picture of how to go about doing this.

--let me just quietly work on it.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON --THERE IS NO WAY TO JOIN

--Seems for me I have to figure out what the ON condition is.

--let me re-read the problem.

--down at the problem description they do give an example answer.
--this is a really weird problem.

--I think simply unsolvable.
--but there are ways of joining tables with no common row or field.  
--so, i think it will be a cross join?

--its such a weird vizualization.
