+--------------------+          +------------------+
|      User          |<>--------|     Instructor    |
|--------------------|          +------------------+
| - id               |            | + createCourse()|
| - name             |            | + manageCourse()|
| - email            |            | + uploadAssignment()|
| - password         |            | + gradeAssignment() |
|--------------------|          +------------------+
| + login()          |                |
| + logout()         |                |
+--------------------+                |
       /\                               v
       |                            +----------------+
       |                            |    Course      |
       |                            +----------------+
       |                            | - courseId     |
       |                            | - courseName   |
       |                            | - assignments  |
       |                            | - instructor   |
       |                            | - students     |
+------------------+                +----------------+
|     Student      |---------------<> + addAssignment()
+------------------+                  + addStudent()    
| - enrolledCourses|                  + scheduleVirtualClass()
+------------------+               
| + viewCourses()  |                     |
| + enrollInCourse()                     |
| + submitAssignment()                   v
+------------------+               +------------------+
                                  |   Assignment       |
                                  +------------------+
                                  | - assignmentId     |
                                  | - description      |
                                  | - dueDate          |
                                  | - submissions      |
                                  +------------------+
                                  | + addSubmission()  |
                                  | + gradeSubmission()|
                                  +------------------+
                                               |
                                               v
                                     +------------------+
                                     |    Submission     |
                                     +------------------+
                                     | - submissionId    |
                                     | - submittedBy     |
                                     | - file            |
                                     | - grade           |
                                     +------------------+
                                     | + submit()        |
                                     +------------------+

