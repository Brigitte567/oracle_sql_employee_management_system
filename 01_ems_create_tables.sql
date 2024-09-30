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

