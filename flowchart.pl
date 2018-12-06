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
preq(fildlar, filkomu).
preq(ccstrig, ccsalge).
preq(ccscal1,ccsalge).
preq(disctru,ccsalge).
preq(compro2,compro1).
preq(digides,basicon).
preq(network,basicon).
preq(fitsport,fitwell).
preq(ftteams,fitwell).
preq(nstp01,nstp101).
preq(persef2,persef1).
preq(disctru,ccsalge).
preq(dasalgo,disctru).
preq(advdisc,disctru).
preq(objectp,compro2).
preq(soctec2,soctec1).
preq(ftdance,ftsport).
preq(ftteams,ftsport).
preq(nstp02,nstp01).
preq(lasare2,lasare1).
preq(dasalgo,disctru).
preq(speecom,englcom).
preq(englres,englcom).
preq(ccscal2,ccscal1).
preq(intesys,dasalgo).
preq(algocom,dasalgo).
preq(introdb,objectp).
preq(swdespa,objectp).
preq(tredtwo,tredone).
preq(cstat,ccscal2).
preq(webapde,introdb).
preq(arcorg,digides).
preq(lasare3,lasare2).
preq(fungame,swdespa).
preq(introos,arcorg).
preq(tredtri,tredtwo).
preq(ipersef,persef2).
preq(mathgd,advdisc).
preq(sofengg,webapde).
preq(gameng1,fungame).
preq(kaspil2,kaspil1).
preq(humaart,englres).
preq(humalit,englres).
preq(prctcs,sofengg).
preq(prosdev,sofengg).
preq(gameng2,gameng1).
preq(gdgraph,mathgd).
preq(tredfor,tredtri).
preq(thscs1,csmetre).
preq(gameng3,gameng2).
preq(thscs2,thscs1).
preq(thscs3,thscs2).

passed(john,intesys).
passed(john,sofengg).
passed(john,opersys).
nopreq(compro1).
nopreq(filkomu).
nopreq(ccsalge).
nopreq(basicon).
nopreq(scimatb).
nopreq(lbymatb).
nopreq(fitwell).
nopreq(nstp101).
nopreq(persef1).
nopreq(sas1000).
nopreq(fildlar).
nopreq(englcom).
nopreq(formdev).
nopreq(tredone).
nopreq(scimatp).
nopreq(lbyarc).
nopreq(kaspil1).
nopreq(cselec1).
nopreq(funviad).
nopreq(funviad).
nopreq(csethic).
nopreq(scimatc).
nopreq(lbymatc).
nopreq(cselec2).
nopreq(cselec3).
nopreq(spelec1).
nopreq(spelec2).
nopreq(cselec4).
nopreq(inovate).
nopreq(spelec3).
nopreq(intfilo).
nopreq(greatwk).