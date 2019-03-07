Skolera task

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



* Important note: All APIs except sign-up and sign-in must pass uid, client and access-token in the request headers.
    