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
    note: you must pass uid, client, and access-token in the request headers.