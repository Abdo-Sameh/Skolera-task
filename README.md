**Skolera task**

APIs:

1- Sign-up
    
    URL: https://quiet-caverns-33249.herokuapp.com/auth
    method: post
    params: email, password, password_confirmation

2- Sign-in
    
    URL: https://quiet-caverns-33249.herokuapp.com/auth/sign_in
    method: post
    params: email, password

3- Sign-out

    URL: https://quiet-caverns-33249.herokuapp.com/auth/sign_out
    method: delete
    

4- Create Course
    
    URL: https://quiet-caverns-33249.herokuapp.com/courses
    method: post
    params: name
    
    
5- Create Student
    
    URL: https://quiet-caverns-33249.herokuapp.com/students
    method: post
    params: name
        
    
6- Create Teacher
    
    URL: https://quiet-caverns-33249.herokuapp.com/teachers
    method: post
    params: name

7- Edit Student
    
    URL: https://quiet-caverns-33249.herokuapp.com/students/:id     #where :id => student_id
    method: put
    params: name

8- Edit Teacher
    
    URL: https://quiet-caverns-33249.herokuapp.com/teachers/:id     #where :id => teacher_id
    method: put
    params: name

9- Student Enrolment
    
    URL: https://quiet-caverns-33249.herokuapp.com/stuednts/enrol
    method: post
    params: student_id, course_id
    
10- Teacher Enrolment
    
    URL: https://quiet-caverns-33249.herokuapp.com/teachers/teaches
    method: post
    params: teacher_id, course_id
    

* Important note: For sign-out API you must pass uid, client and access-token in the request headers.
    