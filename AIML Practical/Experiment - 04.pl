
% Implement TimeTable database for the classroom 


tt(monday, '9:00', aradhana_sahu, aiml, ta11).
tt(monday, '10:00', ajay, geo, ta10).
tt(tuesday, '10:00', makhan_lal, python, ta12).
tt(tuesday, '12:00',aradhana_sahu, genral, ta05).
tt(wednesday, '11:00', ostwal, agentic, ta04).
tt(wednesday, '12:00', ojha, rag, ta041).

faculty_sc(Faculty,Day,Time,Subject,Roomno):-
    tt(Day,Time,Faculty,Subject,Roomno).
% query --> faculty_sc(aradhana_sahu,Day,Time,Subject,Roomno)

find_faculty(Subject,Faculty):-
    tt(_,_,Faculty,Subject,_).
% query ---> find_faculty(python,Faculty).

find_class(Roomno,Faculty,Day,Time,Subject):-
    tt(Day,Time,Faculty,Subject,Roomno).
%Query --> find_class(ta11,Faculty,Day,Time,Subject)