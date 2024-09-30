-- Inserting records into Students table
INSERT INTO Students (student_id, first_name, last_name, email, enrollment_date) VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO Students (student_id, first_name, last_name, email, enrollment_date) VALUES 
(2, 'Jane', 'Smith', 'jane.smith@example.com', TO_DATE('2024-02-20', 'YYYY-MM-DD'));

INSERT INTO Students (student_id, first_name, last_name, email, enrollment_date) VALUES 
(3, 'Emily', 'Johnson', 'emily.johnson@example.com', TO_DATE('2024-03-10', 'YYYY-MM-DD'));


-- Inserting records into Teachers table
INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(1, 'Alice', 'Williams', 'Mathematics', 'alice.williams@example.com');

INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(2, 'Robert', 'Taylor', 'Science', 'robert.taylor@example.com');

INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(3, 'Linda', 'Anderson', 'History', 'linda.anderson@example.com');


-- Inserting records into Teachers table
INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(1, 'Alice', 'Williams', 'Mathematics', 'alice.williams@example.com');

INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(2, 'Robert', 'Taylor', 'Science', 'robert.taylor@example.com');

INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(3, 'Linda', 'Anderson', 'History', 'linda.anderson@example.com');


-- Inserting records into Classes table
INSERT INTO Classes (class_id, class_name, teacher_id, start_time, end_time, days_of_week, room_number) VALUES 
(1, 'Algebra 101', 1, TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('09:30:00', 'HH24:MI:SS'), 'Mon, Wed, Fri', 'Room 101');

INSERT INTO Classes (class_id, class_name, teacher_id, start_time, end_time, days_of_week, room_number) VALUES 
(2, 'Biology 201', 2, TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('11:30:00', 'HH24:MI:SS'), 'Tue, Thu', 'Room 102');

INSERT INTO Classes (class_id, class_name, teacher_id, start_time, end_time, days_of_week, room_number) VALUES 
(3, 'World History', 3, TO_TIMESTAMP('12:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('13:30:00', 'HH24:MI:SS'), 'Mon, Wed', 'Room 103');


-- Inserting records into Registrations table
INSERT INTO Registrations (registration_id, student_id, class_id, registration_date, grade) VALUES 
(1, 1, 1, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 'A');

INSERT INTO Registrations (registration_id, student_id, class_id, registration_date, grade) VALUES 
(2, 2, 2, TO_DATE('2024-02-25', 'YYYY-MM-DD'), 'B');

INSERT INTO Registrations (registration_id, student_id, class_id, registration_date, grade) VALUES 
(3, 3, 3, TO_DATE('2024-03-12', 'YYYY-MM-DD'), 'A');
