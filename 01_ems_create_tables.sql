-- Creating Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,                  
    first_name VARCHAR(50),                     
    last_name VARCHAR(50),                      
    email VARCHAR(100),                         
    enrollment_date DATE                        
);

-- Creating Teachers table
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,                  -- Unique ID for each teacher
    first_name VARCHAR(50),                     -- Teacher's first name
    last_name VARCHAR(50),                      -- Teacher's last name
    subject VARCHAR(100),                       -- Subject taught by the teacher
    email VARCHAR(100)                          -- Teacher's email address
);

-- Creating Classes table
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,                    -- Unique ID for each class
    class_name VARCHAR(100),                    -- Name of the class
    teacher_id INT,                             -- ID of the teacher (foreign key)
    start_time TIMESTAMP,                       -- Class start time
    end_time TIMESTAMP,                         -- Class end time
    days_of_week VARCHAR(50),                   -- Days when the class occurs
    room_number VARCHAR(20),                    -- Room where the class is held
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id) -- Links class to the teacher
);

-- Creating Registrations table
CREATE TABLE Registrations (
    registration_id INT PRIMARY KEY,            -- Unique ID for each registration
    student_id INT,                             -- ID of the student (foreign key)
    class_id INT,                               -- ID of the class (foreign key)
    registration_date DATE,                     -- Date when the student registered for the class
    grade CHAR(2),                              -- Grade received by the student for this class
    FOREIGN KEY (student_id) REFERENCES Students(student_id), -- Links registration to the student
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)       -- Links registration to the class
);

-- Inserting records into Students table
INSERT INTO Students (student_id, first_name, last_name, email, enrollment_date) VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO Students (student_id, first_name, last_name, email, enrollment_date) VALUES 
(2, 'Jane', 'Smith', 'jane.smith@example.com', TO_DATE('2024-02-20', 'YYYY-MM-DD'));

INSERT INTO Students (student_id, first_name, last_name, email, enrollment_date) VALUES 
(3, 'Emily', 'Johnson', 'emily.johnson@example.com', TO_DATE('2024-03-10', 'YYYY-MM-DD'));

INSERT INTO Students (student_id, first_name, last_name, email, enrollment_date) VALUES 
(4, 'Michael', 'Brown', 'michael.brown@example.com', TO_DATE('2024-01-05', 'YYYY-MM-DD'));

INSERT INTO Students (student_id, first_name, last_name, email, enrollment_date) VALUES 
(5, 'Sarah', 'Davis', 'sarah.davis@example.com', TO_DATE('2024-02-28', 'YYYY-MM-DD'));

-- Inserting records into Teachers table
INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(1, 'Alice', 'Williams', 'Mathematics', 'alice.williams@example.com');

INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(2, 'Robert', 'Taylor', 'Science', 'robert.taylor@example.com');

INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(3, 'Linda', 'Anderson', 'History', 'linda.anderson@example.com');

INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(4, 'James', 'Thomas', 'English', 'james.thomas@example.com');

INSERT INTO Teachers (teacher_id, first_name, last_name, subject, email) VALUES 
(5, 'Patricia', 'Jackson', 'Art', 'patricia.jackson@example.com');

-- Inserting records into Classes table
INSERT INTO Classes (class_id, class_name, teacher_id, start_time, end_time, days_of_week, room_number) VALUES 
(1, 'Algebra 101', 1, TO_TIMESTAMP('08:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('09:30:00', 'HH24:MI:SS'), 'Mon, Wed, Fri', 'Room 101');

INSERT INTO Classes (class_id, class_name, teacher_id, start_time, end_time, days_of_week, room_number) VALUES 
(2, 'Biology 201', 2, TO_TIMESTAMP('10:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('11:30:00', 'HH24:MI:SS'), 'Tue, Thu', 'Room 102');

INSERT INTO Classes (class_id, class_name, teacher_id, start_time, end_time, days_of_week, room_number) VALUES 
(3, 'World History', 3, TO_TIMESTAMP('12:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('13:30:00', 'HH24:MI:SS'), 'Mon, Wed', 'Room 103');

INSERT INTO Classes (class_id, class_name, teacher_id, start_time, end_time, days_of_week, room_number) VALUES 
(4, 'English Literature', 4, TO_TIMESTAMP('14:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('15:30:00', 'HH24:MI:SS'), 'Tue, Thu', 'Room 104');

INSERT INTO Classes (class_id, class_name, teacher_id, start_time, end_time, days_of_week, room_number) VALUES 
(5, 'Painting 101', 5, TO_TIMESTAMP('16:00:00', 'HH24:MI:SS'), TO_TIMESTAMP('17:30:00', 'HH24:MI:SS'), 'Wed', 'Room 105');

-- Inserting records into Registrations table
INSERT INTO Registrations (registration_id, student_id, class_id, registration_date, grade) VALUES 
(1, 1, 1, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 'A');

INSERT INTO Registrations (registration_id, student_id, class_id, registration_date, grade) VALUES 
(2, 2, 2, TO_DATE('2024-02-25', 'YYYY-MM-DD'), 'B');

INSERT INTO Registrations (registration_id, student_id, class_id, registration_date, grade) VALUES 
(3, 3, 3, TO_DATE('2024-03-12', 'YYYY-MM-DD'), 'A');

INSERT INTO Registrations (registration_id, student_id, class_id, registration_date, grade) VALUES 
(4, 4, 4, TO_DATE('2024-01-06', 'YYYY-MM-DD'), 'C');

INSERT INTO Registrations (registration_id, student_id, class_id, registration_date, grade) VALUES 
(5, 5, 5, TO_DATE('2024-02-29', 'YYYY-MM-DD'), 'B');
