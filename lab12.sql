-- Task 1: Concatenate Course Name and Semester
SELECT CONCAT(course_name, ' - ', semester) AS course_info
FROM courses;
-- Task 2: Find Courses with Labs on Fridays | Couldn't figure out how to select Friday lab time | Jairha P.
SELECT course_id, course_name, lab_time
FROM courses
-- Task 3: Upcoming Assignments
SELECT course_id, title, due_date
FROM assignments
WHERE due_date > 2024-11-30;
-- Task 4: Count Assignments by Status
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;
-- Task 5: Longest Course Name
SELECT course_id, course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;
-- Task 6: Uppercase Course Names
SELECT UPPER(course_name) AS course_name_upper
FROM courses;
-- Task 7: Assignments Due in September
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';
-- Task 8: Assignments with Missing Due Dates
SELECT course_id, title
FROM assignments
WHERE due_date IS NULL;
