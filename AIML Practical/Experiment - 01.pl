
% Create a Knowledge based using facts quieries goal.and roles for class and cloud database

student(ram).
student(shyam).
student(singha).
student(roy).

course(btech).
course(civil).
course(mech).

enroll(ram,btech).
enroll(shyam,civil).
enroll(singha,mech).

%pair(X) :- student(X),enroll(X,civil).
