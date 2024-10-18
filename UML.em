+------------------+                +------------------+                +------------------+
|      User        |<>--------------|     Student      |                |   Instructor      |
+------------------+                +------------------+                +------------------+
| - userID         |                | - enrolledCourses|                | - createdCourses |
| - name           |                +------------------+                +------------------+
| - email          |                | + viewCourses()  |                | + createCourse()  |
| - password       |                | + submitAssign() |                | + gradeAssignment()|
+------------------+                +------------------+                +------------------+
| + login()        |                                                      
| + logout()       |                                                      
| + register()     |                                                      
+------------------+                                                      
                                                                             v
                      +------------------+                +------------------+
                      |      Course      |<>--------------|    Assignment    |
                      +------------------+                +------------------+
                      | - courseID       |                | - assignmentID   |
                      | - title          |                | - title          |
                      | - description    |                | - dueDate        |
                      | - credits        |                +------------------+
                      | - instructor     |<>--------------| - submissions    |
                      +------------------+                +------------------+
                      | + addAssign()    |                | + submitAssign() |
                      | + enrollStudent()|                | + grade()        |
                      +------------------+                +------------------+

                                                     |
                          +--------------------------|--------------------------------+
                          |                                                                |
                  +------------------+                                          +------------------+
                  |     Submission    |                                          |     Message       |
                  +------------------+                                          +------------------+
                  | - submissionID    |                                          | - messageID       |
                  | - submittedBy     |                                          | - senderID        |
                  | - grade           |                                          | - content         |
                  +------------------+                                          +------------------+
                  | + submit()        |                                          | + sendMessage()   |
                  | + viewGrade()     |                                          | + receiveMessage()|
                  +------------------+                                          +------------------+
