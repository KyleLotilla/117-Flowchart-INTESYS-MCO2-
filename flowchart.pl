cantake(Student, Course):-
    studentyear(Student, Year),
    term(Term),
    offered(Course, Year, Term),
    passedpreqs(Student, Course).

passedpreqs(Student, Course):-
    nopreq(Course);
    findall(Preq, preq(Course, Preq), PreqList),
    findall(Passed, passed(Student, Passed), PassedCourses),
    subset(PreqList, PassedCourses).


studentyear(john, junior).
term(third).
offered(csmetre, junior, third).
preq(csmetre, intesys).
preq(csmetre, sofengg).
preq(csmetre, opersys).
passed(john, intesys).
passed(john, sofengg).
passed(john, opersys).
nopreq(compro1).