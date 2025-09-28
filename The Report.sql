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