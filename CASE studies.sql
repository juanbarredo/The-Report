------------------------------------------12 07 2025----------------------------------
--at this point I am trying to solve The Report problem in Hacker Rank.

--I believe that using a CASE will help me make it so that certain parts of the answer are printed as null.

--I need to get down and do a few CASE examples from the book

--CASE Expressions

--In dabatabase programing, 
--it is sometimes necessary to modify the representation of data.

--For instance, a person't status can be coded using the values 1, 2, 3 
--(from female, male, and child, respectively).

--Suchj a programming technique can reduce the time for the implementation of a program.

--the CASE expression in Transact-SQL language makes this type of encoding easy to implement.

--NOTE 
--CASE does not represent a statement (as in most programming languages) but an expression.
--Therefore, the CASE expression can be used (almost) everywhere the Transact-SQL language allows the use of an expression.

--The CASE expression has two different forms:

--simple CASE expression
--Searched CASE expression

--The syntax of the simple CASE expression is

--CASE expression_1
--		{WHEN expression_2 THEN result_1} ...
--		[ELSE result_n]
--END

--I need to get down and understand what an expression is
--I thought I already looked into it?

-----------------------------12 14 2025--------------------------------------------------------

--expressions.
--again stuff with this "obtain a single data value"
--this doesn't sit right with me.

--I mean, even the questions ask for result sets.

--does this mean then that the single value is the 

--ok,
--either way.

---"simple expressions can be a single constant, variable, column, or scalar function.
--Operators can be used to join two or more simple expressions into a complex expression." - microsoft website on Expressions (Transact-SQL)

--i am burnt.

--i am very excited to learn more about expressions.

--i want to look into what a scalar function is.

--scalar functions are not what I expected.

--So,
--I am needing to work out the CASE studies stuff.
--I keep getting side tracked.

--back to the book in page 171.

--A trasact_SQL statement with the simple CASE expression looks for the first expression in the list of all WHEN clauses that match "expression_1" and exvaluates the corresponding THEN clause.
--If there is no martch, the ELSE clause is evaluated.
--Example 6.49 shows the use of the simple CASE expression.

--EXAMPLE 6.49

USE AdventureWorks2017;
GO
SELECT ProductNumber, Category =
			CASE ProductLine 
				WHEN 'R' THEN 'Road'
				WHEN 'M' THEN 'Mountain' 
				WHEN 'T' THEN 'Touring'
				WHEN 'S' THEN 'Other sale items'
				ELSE 'Not for sale'
			END,
		Name
	FROM Production.Product;

--interesting result set.
--definitely made me think that this could be a way to solve the problem The_Report.

USE AdventureWorks2017;
SELECT *
	FROM Production.Product;

--there seems to be some sort of um.
--from what I can see discrepancy between how the syntax is spelled out to how th problem in example 6.49 is written out.

--why is it in line 83 - 85.
--vs the syntax explanation [ELSE result_n]
--can [] really be so wide open.

--Example 6.49 uses the product table from production schema of the AdventureWorks database.  Depending on the abbreviated 
--value stored in the ProductLine column of this table,
--the query in Example 6.49 displays the full name of each column value under the category heading.

--(The result of this example is too larege to be displayed.)

