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

--USE The_Report;
--SELECT *
--	FROM Students;

--USE The_Report;
--SELECT *
--	FROM Grades;

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

-------------------------------------------------09 25 2025-------------------------------

--ok,
--I will mainly focus on working out the connection between the tables.
--it must be somewhere in the problem
--otherwise,
--not sure what I would do.

--yeah,

--my understanding of this problem is changing 

--reading it has changed it.

--i think i am loading or assigning positions in the grades table.?

--yeah.
--this is such a weird task.

--do I do inner join?

--the joining column though?
--which is it then?

--like I think they are joined but the join condition is a subquery?

--this is assuming that the join can be done as a subquery.

--yeah,
--ON Studens.Marks = 
--	(SELECT 

--ok, now I am gorgeously lost.
--how could I join this?
--but also,
--is my understanding completely wrong?
--could be.

--I think I like to get lost in learning.
--I am reminded what that interviewer taught me 
--that I have to understand the question better.

--ok,
--seems grade might be the better 

--the line "The report must be in descending order by grade -- i.e. higher grades are entered first."

--is making me hallucinate an answer where I get some sort of sorting algorythm going to separate between min and max mark.
--it is just a hallucination.
--but I think just even working it out is a week long venture.
--I am trying to see if I get a new understanding.
--

--maybe I need to release the understanding I have right now
--
--reading the problem more
--is making me keep pointing to this definitely being some sort of complex  join.
--the join is/has a subquery.
--or is an IF statement

--IF Marks.74 is between Min_Mark.70 and Max_Mark.79
--yeah this is a weird one.

--I am sure that I have done this king of subquery join condition before style.
--so I am confident.

--but it failed hillariously last time so it makes me feel bad about using it again.

--what else can there be though?
--I need to work on this sorting.

--it is a sorting thing right?

--I might look into for next time.

--
--------------------------------------09 28 2025------------------------------------

--alright,
--I get to continue working on this weird problem.

--this line in the hackerrank website
--has awakened new possibilities for me

--"Ketty doesn't want the NAMES of those students who received a grade lower than 8."

--could that be the join condition?

--it is so complicated.

--how do I sort names into grades.  when the grade is loosely tied to the mark?

--alright, fine
--basically,

--I need a way to sort?
--or link 87 to be GRADE 9

--there must be nice way of doing it.

--I am thinking just on 
--yeah. I simply do not know how to do this.

--a window function?

--I feel like window functions work from columns and not rows.

--how can i explore?

--let me refresh my knowledge on WINDOW FUNCTIONS.

--i think a window construct might be a good thing to work on

--however, at this moment in time
--I do feel like button mashing any window function

--i guess i feel like i don't get their point too much

--maybe this will help get me to know them better.

--yeah,
--i think window constructs might help.

--but when I try to focus in to how to get any one value from Marks.
--how can it be filtered?
--I do see that each value in Marks does get its turn 
--but its turn at what and how?

--i feel like building a simple IN

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks = Grades.--here is where I am stumpted.

--what can I do?
--can I do JOIN through a WHERE clause?

--I think I am getting an idea from a page that I will need to look at 
--neverming.
--ON is processed before WHERE.

-----------------------------09 29 2025-------------------------------
--definitely lost
--so just want to explore options again.

--ii am now convinced again that it is - as i see it now - a really complex (for me) JOIN.

-- I am confusing
-- the Mark is going to filter in.
--how?
--Through the ON.

--this is one heck of an idea I am getting.

--if statement.
--if min_mark more than

--yeah, i am getting lost in the sauce.

--I am unsure of how then some mechanic happens.

--I have to do deep study in how cells are selected.

--I direct that selection.

--but at some point.
--am i at that point right now?

--less than Max_Mark might be a key

--let me build up the query.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks in 
--	(
--	SELECT Grades.Max_Mark
--		FROM Grades
--	);

	--this is effing crazy.

	--i actually got a result set.
	--i just need to tweak it but I am learning for sure.

	--this has been so much fun.
	--I need to go back to the lines from 243 to 246.
	--ok,
--amazing.
--so yeah,
--it is matching exactly when a Students.Marks is equal to a Grades.Max_Mark.

--and only displaying those.

--the JOIN condition is weird then.

--it seems like I don't understand why they ended up joined like it did.

--when I 
--wow, yeah
--I need to get a better handle on JOINs.

--I am excited to!

	

	--i am broken.

---------------------------09 30 2025------------------------------------------
--
--I need to figure out JOINs

--INNER JOIN

--this past finding.
--regarding the query in lines 239 - 246.

--has literally changed my life.

--JOINs have exploded in posibilities.

--i feel the urge to do a CROSS JOIN on the two tables.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students CROSS JOIN Grades;

--I am confused by the resulting set.
--love it.

--then should I try another sort of JOIN?
--but through my new found complex JOIN finding.
--the one on lines 239 - 246.

--the selection process.
--i need to refine it.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks in 
--	(
--	SELECT Grades.Grade
--		FROM Grades
--		WHERE Students.Marks BETWEEN Students.Marks AND Grades.Max_mark
--	);

--now I am having a spinning head.
--will i have to include the Students.Marks in the second part of the ON clause.

--I got an empty result set.
--but not an error.

--just the wrong answer.

--ok, so the BETWEEN operator might not work

--apparently someone used "<= and >" instead of BETWEEN.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks in 
--	(
--	SELECT Grades.Grade
--		FROM Grades
--		WHERE Students.Marks <= Students.Marks AND Grades.Max_mark
--	);

--Never mind,
--crashing out.

--well,
--not sure what else to approach 
--except deep empathy with the problem.

------------------------------10 02 2025---------------------------------------------

--alright,
--I think I have gotten a clearer picture of what the JOIN ON condition is.

--wow,
--ok,

--at least right now I see an amazing direction to take.

--as the JOIN ON condition,
--"Ketty doesn't want the NAMES of the students who received a grade lower than 8."

--what are the two columns that can be used as the JOIN ON?
--I think it might actually be something like 3 columns.

--let me see.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Name IN 
--	(
--	SELECT Grades.Grade
--		FROM Grades
--		WHERE Grade 
--		(
--
--		)
--	);

--I have to focus on one specific part of the problem now.

--"students who received a grade lower than 8."

--how do I get students who received a grade lower than 8.
--I need to do the subquery.

--the subquery will be something like.
--(if allowed to begin with)

--SELECT Grades.Grade
--		FROM Grades
--		WHERE Grade 
--		(
--		Students.Marks 
--		)

--ok,
--I think I need to focus on specifically one thing

--how to get every value in Students.Marks to be evaluated to see if they are in between any of the Grades.Min_Mark and Grades.Max_Mark.

--I think I am burnt out as I stand.

------------------------------10 05 2025----------------------------------------

--ok,

--so
--yeah,

--how can I get so many things going.

--I need to somehow understand how the Students.Marks

--I am seeing a possible place to look at.

--"Ketty doesn't want the NAMES of the students who received a grade lower than 8."

--USE The_Report;
--SELECT Grades.Grade
--	FROM Grades JOIN Students
--	ON Grades.Grade = Students.Marks
--	WHERE Marks BETWEEN Min_Mark AND Max_Mark;

--Do I need to read the book with the BETWEEN operator or something?

--I mean, I am completely lost.

--yeah, this is getting really weird.

--WHERE budget >= 250000 AND budget <= 1250000;

--this is almost there sorta

--but I still have to figure out s missing a huge missing relationship

--I mean the relationship is hard to put into code.
--I seem to have two sorts of things going on

--I need to separate them and work them out.

--the Students.Marks being sorted to see if it falls between Min_Marks and Max_Marks.

--somehow isn't line 437 the JOIN condition?

--but it can been made bettwe by already including that:
--"Ketty doesn't want the NAMES of the students who received a grade lower than 8."

--this sort of prompt has just completely re-wrote how I imagine JOINS in the first place.

--------------------------------------10 12 2025---------------------------------
--back at it

--I am fundamentally lost on how to solve this one.

--I am going to try and see how to get a JOIN condition written up that links up Grade and Name.

--the Students.Marks being sorted to see if it falls between Min_Marks and Max_Marks.
--is also a very important thing that I have to work out.

--so,

--USE The_Report;
--SELECT Grades.Grade
--	FROM Grades JOIN Students
--	ON Grades.Grade 

--I think I have to find a simpler problem to solve where there isn't a JOIN before having to do the comparison.
--it gets wrapped itself up.

--I can't think anything up.

--let me think about another way.
--how can I get Students.Marks to filter through Grades.Min_Mark and Grades.Max_Mark.

--what is the function?
--how does the 

--USE The_Report;
--SELECT Grades.Grade
--	FROM Grades
--	WHERE Grades.Grade IN

--yeah, I am fundamentally not understading how or what the sequence of operations are/is
--to take advantage and build a query around it.

--something about less than or equal to is coming to me.

--like, how.

--WHERE Students.Marks <= Grades.Max_Mark?
--I am having trouble imagining how to write a query 
--

--USE The_Report;
--SELECT

--The thing is also
--How do I even write up a way to get Students.Marks
--this is very frustrating.

--I think my breaktrhough right now
--is how I might only need to use Grades.Max_Mark and not Grades.Min_Mark.

--I will try and build upon that.

---------------------------------------------10 13 2025----------------------------------------------

--so,
--it has come to me that I could work on this through an inequality.

--maybe get Grades.Marks to be >= Max_Mark.

--I think this locks them in to check each value with each value.

--then I pass the Grades.Grade back that it belongs to.
--WHERE or in this case this would be in the JOIN statement.
--so weird.

--I am getting that weird feeling of reeling.
--or that I have already thought this?
--I have already thought this too much.

--very well, this means that I have to work that much harder at this.

--it is honestly hard to get any more in.

--ok,
--let me see about crafting a join with the innequalities.

--USE The_Report;
--SELECT Grades.Grade 
--	FROM Grades JOIN Students
--	ON Students.Marks IN 
--	(
--	SELECT Grades.Max_Mark
--	FROM Students
--	);

--the above query.
--from lines 526 to 532.
--I am moving very slowly towards something.

--I am still baffled that these sorts of JOINs are working.
--technically.

--I get the logical part?

--weird.

--I need to phrase this differently
--

--what can I get as a logically successful join going.

--I think this is the key at this moment in time.

--I guess I have already proven its possibility.
--I just need to tweak the logical approach.

--what 
--can I just get the marks and max_mark columns to line up.
--through the correct innequality I feel.

--we can isolate the other side of the JOIN statement.
--the right now subquery-ish join.

--is this the wrong way to see it even?

--USE The_Report;
--SELECT Grades.Max_Mark
--	FROM Grades;

--so very simple thus far.

--what would I want to have this joined through?
--I am thinking an inequality.
--but because of the nature of how this JOIN works.
--I can't have duplicates values.

--well,
--what duplicate values were there?

------------------------------10 16 2025--------------------------------

--ok,
--looking at this again.

--ok,
--so, I am getting stuck at a very specific phase.

--the innequality.

--WHERE Grades.Grade < 8
--the above line is what I think I can build the query around.

--can the JOIN be just that.
--less that 8?
--something is missing.

--they are asking for Name, Grade and Marks.
--I still think I have to get Students.Marks < 79
--I think elegantly, I have to not do the above.
--because this requires me to look or know the database.
--when SQL was made for when the database is not known.

--so, then I will have to just say that they are asking for Grades.Grade < 8
--then the JOIN condition is between Students.Marks and Grades.Grade.
--or Grades.Grade and Students.Marks 
--but Students.Marks needs to be lined up with Grades.Min_Mark, right?
--as long as the student gets a Mark of at least 70, they get an 8.
--this confuses me.
--but it makes sense.
--I just have to wrap myself around it.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks =
--what am I not getting here?
--seems I need to?
--find something else.
--what?
--the ON clause.
--Students.Marks is related to Min_Mark and Max_Mark
--because it was meant to be used as a comparison
--they were meant for each other.

----------------------------10 19 2025---------------------------------------
--seems that I am working on this again

--I am having a two part problem
--the JOIN and the distinction between
--what a Mark is and what Grade belongs to it.

--how can I tackle this.

--I want to do an IF statement?

--can I nest an IF statement in a JOIN?

--like IF Students.Marks 
--yeah, there my knowledge oh how SQL works is lacking
--severely lacking.

--yeah, I feel like this is way more suited for Python.
--but here I am

--ok,
--let me build a query where I can simulate somethihng

--USE The_Report;
--SELECT Grades.Grade
--	FROM Grades
--	WHERE Min_Mark = 80;

--I am having ahard time imagining how to go from here
--because out of nowhere everything is a variable.

--let me now see if I can get a query that uses the between?

--USE The_Report;
--SELECT Grades.Grade
--	FROM Grades
--	WHERE Grade 

--I think that I am going to need to work on a side quest.
--mainly understanding how it is that this will work.

--ok,
--yeah,
--i seem to be two abstractions away from the next step
--can I at least name them?

--how can I get every value in the Students.Marks column
--to be sorted between each row where there is a Min_Mark and a Max_Mark?

--maybe I can start with just studying a few examples of the BETWEEN clause?
--I think that this will be my next task of study.

--------------------------10 21 2025---------------------------------

--super glad I got to practice today

--i've taken up sewing classes so they will definitely take up extra time
--but I feel energized by the new hobby.

--ok,
--I believe I am trying to learn about the BETWEEN clause.

--I will look at the book.

--it is actually the BETWEEN operator.  not clause.

-- the BETWEEN operator might not exactly do what I am looking for.

--but the syntax interested me.
--the 
--WHERE budget >= 95000 AND budget <= 120000;
--I feel like I can test this one out.

--but I don't think because there are no examples of how to add variables.
--I am still not understanding something about 

--can I make a JOIN where the operator
--is something like
--ON Students.Marks > 80

--I created such a weird thing
--but the 80 is such a shortcut.

--WHERE Students.Marks > 80

--well,
--actually it is Grades.Grade = 8
--or less than 8.
--she doesn't want less than 8.

--8 is a 70 - 79.

--so,
--WHERE Grades.Grade >= 8

--somehow.
--how do I join in such a scenario as this one?

--i feel like I want to try and solve this through a subquery.

--should the subquery be the JOIN ON condition?
--so weird

--I will try it
--I need to know why it might work.

--I think it *could* work
--because I want to send up a specific result set.
--the result set that belongs to
--the Students.Name, Grades.Grade, Students.Marks
--that get a grade higher than an 8.

--so,
--the 
--WHERE Grades.Grade > 8

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks >
--	(
--	SELECT

--lost
--where can I continue
--I think I got burnt out when BETWEEN operator failed as a possible way to the solution

--what else can I try?

------------------------------------------------10 23 2025--------------------------------------------

--so,
--I am definitely at a loss

--maybe I will read the JOIN ON part of the book.

--ok,

--I am stuck thinking about how there seems to be two problems I am running into

--the JOIN columns
--but there are none

--which leads me to believe 

--that I can just make it so that the JOIN is only the students who made more than a Grade of 8.

--I think that this will be the other side of the JOIN.

--let me get that subquery.

--USE The_Report;
--SELECT Grades.Grade, Grades.Min_Mark, Grades.Max_Mark
--	FROM Grades
--	WHERE  Grades.Grade >= 8;

--ok, then.

--now, how can I get 

--I need to learn hwo the JOIN ON works specifically more.
--a bit more.

--ok,
--i got the freedom i was looking for.

--on the microsoft website.
--it says "A join conditioin defines the way two tables are related in a query by:"

--the way two tables are related.

--key concept.

--I need to think of the logical nature of this.

------------------------10 26 2025-----------------------\

--was able to see the original wording 
--and my understanding is more or less correct

--so,
--i still have no idea how
--but I have gotten thus far.

--so, these two tables are related.

--how are they related.

--the Marks of the Students table is meant to be filtered through the Grades table for proper grading.

--the relationship is such that there are grades associated with a range of Marks.
--the relationship is literally defined for each grade by the Min_Mark and Max_Mark columns.
--each Mark is to be filtered into each row to see if it is between any of the rows.
--for example,
--87 is a Mark in the Students.Marks column
--therefore it is filtered into the first column
--or as it is defined by the database engine.
--pretty sure on mine it is one by one.  top down.
--so,
--on the first row of Grades table is for a grade of 1 the Student's Mark must be between 0 and 9.
--and so one until the right row is found by when the Student's Mark is between a Min_Mark and Max_Mark.
--such that 87 is a Grade of 9 because it is between the Min_Mark of 80 and the Max_Mark of 89.

--ok,
--how could I write this up.

--could I do a between.

--
--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark;

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark;

--wow,
--it workd

--this is insane.
--ok,
--let me see then.
--I wasn't sure that BETWEEN took column names as input.
--based on my research it only seemed to take non-variables.
--any way,
--I guess here it can?
--so weird.
--I will hope to finish this next time.

-------------------------------------11 02 2025-----------------------------

--ok,

--I hope to finish this probelms today
--I think I just need to get the WHERE clause.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
--	WHERE Grades.Grade > 8;

	--ok,

	--there is more to it.
	--I now have to re-read 
	--but I think I have to re-order the result set.

--"the report must be in descending order by grade"

USE The_Report;
SELECT Students.Name, Grades.Grade, Students.Marks
	FROM Students JOIN Grades
	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
	WHERE Grades.Grade >= 8
	ORDER BY Grades.Grade DESC;

--ok,
--the next part of the problem

--"if there is more than one student with the same grade (8-10) assigned to them,
--order those particular students by their name alphabetically."

--I am unsure how to tackle this part in lines 887-888.
--feels like busy work at this point.

--this is where I use GROUP BY.

--ok,
--what was the syntax of that?

--I am looking at the book pages 149-151
--I am wondering if I should group by Name of Grade?
--I think it is by grade.

--then the name are alphabetic.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
--	WHERE Grades.Grade >= 8
	--ORDER BY Grades.Grade DESC
--	GROUP BY Grades.Grade;

	--I am getting an interesting error that is making me rework the query.
	--I may not after all finish this today.

--"Msg 8120, Level 16, State 1, Line 905
--Column 'Students.Name' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause."

--I am going to have to re-explore GROUP BY.
--the book was only so helpful.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
--	WHERE Grades.Grade >= 8
--	--ORDER BY Grades.Grade DESC
--	GROUP BY Students.Name;

--Msg 8120, Level 16, State 1, Line 905
--Column 'Students.Name' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.
--Msg 8120, Level 16, State 1, Line 922
--Column 'Grades.Grade' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.

--yeah,

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
--	WHERE Grades.Grade >= 8
--	--ORDER BY Grades.Grade DESC
--	GROUP BY Students.Name, Grades.Grade;

--Msg 8120, Level 16, State 1, Line 905
--Column 'Students.Name' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.
--Msg 8120, Level 16, State 1, Line 922
--Column 'Grades.Grade' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.
--Msg 8120, Level 16, State 1, Line 937
--Column 'Students.Marks' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
--	WHERE Grades.Grade >= 8
--	--ORDER BY Grades.Grade DESC
--	GROUP BY Students.Name, Grades.Grade, Students.Marks;

--ok,
--yeah,

--I need to look at this closer.

--------------------------------11 04 2025-------------------------------------------

--alright
--I need to remember why I can't use GROUP BY without 
--yeah,
--I think it is coming back to me.
--if I am grouping by then I need to have some sort of aggregation that is grouped.
--maybe

--USE The_Report;
--SELECT Students.Name, Grades.Grade, Students.Marks
--	FROM Students JOIN Grades
--	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
--	WHERE Grades.Grade >= 8
	--ORDER BY Grades.Grade DESC
--	GROUP BY Grades.Grade;

--maybe the GROUP BY isn't the option here.
--so,
--then,
--is it one of those weird nested functions int he SELECT list?

--I am reading more about the problem and it is very very complicated.
--this is absolutely going to take me months to solve.

--for now,
--let me see how to solve
--I am honestly completely lost 
--but it isn't like with the JOIN 
--I need to break it down into parts.

--how can I break this down further?

USE The_Report;
SELECT Students.Name, Grades.Grade, Students.Marks
	FROM Students JOIN Grades
	ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
	WHERE Grades.Grade >= 8
	ORDER BY Grades.Grade, Students.Name ASC;

--Nice,
--I got something else down I believe.
--what can I do next?
--the NULL stuff
--the GROUP BY wasn't needed at all
--or at least thus far.

--ok,
--setting null values seems to lead nowhere right now.

--------------------------11 09 2025--------------------------------------

--ok,
--right now,
--the only thing I see worth looking into it is through a UNION of two queries.

--the problem is that I am still unsure how to do a NULL replacement value or whaterver where the rule is WHERE Grades.Grade > 8.
--ok, so just something where in the SELECT statement?

--"finally, if the grade is lower than 8, use 'NULL' as their name."

--ok,

--so there it is.
--I think that this is the next item for me to hyper focus on.
--ok,

--I have found the next lead.
--the PRINT statement.
--can I SELECT PRINT "NULL", Grades.Grade, Students.Marks-it?
--I feel i need to play with the PRINT Statement more plainly

--USE The_Report;
--SELECT PRINT 'NULL', Students.Name
--	FROM Students;

--ok,
--it looks like I can't use the PRINT Statement in the SELECT Statement line.
--I will have to use it on it's own line.