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
    teacher_id INT PRIMARY KEY,                  
    first_name VARCHAR(50),                    
    last_name VARCHAR(50),                     
    subject VARCHAR(100),                      
    email VARCHAR(100)                        
);

-- Creating Classes table
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,                   
    class_name VARCHAR(100),                  
    teacher_id INT,                            
    start_time TIMESTAMP,                       
    end_time TIMESTAMP,                         
    days_of_week VARCHAR(50),                
    room_number VARCHAR(20),                  
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id) 
);

-- Creating Registrations table
CREATE TABLE Registrations (
    registration_id INT PRIMARY KEY,          
    student_id INT,                            
    class_id INT,                               
    registration_date DATE,                   
    grade CHAR(2),                             
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)       
);




