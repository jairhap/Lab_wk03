-- Query 1
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234' 
-- Query 2
SELECT min(due_date) 
FROM assignments
-- Query 3 
SELECT max(due_date) 
FROM assignments
-- Query 4
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08'
-- Query 5
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%' 
-- Query 6
SELECT max(due_date)
FROM assignments
WHERE status ='Completed'
