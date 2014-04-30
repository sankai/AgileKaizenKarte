rails new agileKaizenKarte

rails g scaffold Staff name:string desc:text

rails g scaffold Student name:string desc:text term_id:integer

rails g scaffold Studentlog student_id:integer

rails g scaffold Sessionlog session_id:integer content:text

rails g scaffold Session sessiondate:date term_id:integer

rails g scaffold Term name:string

rails g migration AddContentsToSessionlog contents:text

rails g migration AddContentsToStudentlog contents:text

rails g migration AddEmailToStaff email:string

rails g migration AddResetPasswordTokenToStaff reset_password_token:string

rails g scaffold Classwork sessiondate:date term_id:integer

rails g migration addClassworkIdToSessionlog classwork_id:integer

rails g migration removeSessionIdFromSessionlog session_id:integer

rails g migration addStaffcodeToStaff staffcode:string

