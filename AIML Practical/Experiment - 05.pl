% Exp-5 StudentPerformanceDataBase --> 

marks(abhay,89).
marks(ayush,99.9).
marks(anshi,95).
marks(preet,2).
marks(vicky,92).
marks(rahul,45).
marks(yug,67).

% rules 
topper(Student):-
    marks(Student,Marks),Marks >= 85.
average(Student):-
    marks(Student,Marks),Marks < 85,Marks >= 40.
brilliant_student(Student):-
    marks(Student,Marks),Marks >= 95.
failure(Student):-
   marks(Student,Marks),Marks < 18.

% Query --> failure(preet),brilliant_student(ayush),average(rahul).