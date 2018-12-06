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

offered(filkomu, freshman, first).
offered(ccsalge, freshman, first).
offered(compro1, freshman, first).
offered(basicon, freshman, first).
offered(scimatb, freshman, first).
offered(lbymatb, freshman, first).
offered(fitwell, freshman, first).
offered(nstp101, freshman, first).
offered(persef1, freshman, first).
offered(sas1000, freshman, first).
offered(fildlar, freshman, second).
offered(ccstrig, freshman, second).
offered(disctru, freshman, second).
offered(compro2, freshman, second).
offered(soctec1, freshman, second).
offered(fitsport, freshman, second).
offered(nstp01, freshman, second).
offered(lasare1, freshman, second).
offered(englcom, freshman, third).
offered(ccscal1, freshman, third).
offered(dasalgo, freshman, third).
offered(objectp, freshman, third).
offered(formdev, freshman, third).
offered(ftdance, freshman, third).
offered(tredone, freshman, third).
offered(nstp02, freshman, third).
offered(speecom, sophomore, first).
offered(ccscal2, sophomore, first).
offered(intesys, sophomore, first).
offered(introdb, sophomore, first).
offered(digides, sophomore, first).
offered(scimatp, sophomore, first).
offered(lasare2, sophomore, first).
offered(csstat, sophomore, second).
offered(swdespa, sophomore, second).
offered(arcorg, sophomore, second).
offered(lbyarc, sophomore, second).
offered(network, sophomore, second).
offered(ftteams, sophomore, second).
offered(tredtwo, sophomore, second).
offered(persef2, sophomore, second).
offered(advdisc, sophomore, third).
offered(webapde, sophomore, third).
offered(fungame, sophomore, third).
offered(introos, sophomore, third).
offered(soctec2, sophomore, third).
offered(kaspil1, sophomore, third).
offered(englres, junior, first).
offered(sofengg, junior, first).
offered(gameng1, junior, first).
offered(mathgd, junior, first).
offered(cselec1, junior, first).
offered(tredtri, junior, first).
offered(prctcs, junior, second).
offered(funviad, junior, second).
offered(csethic, junior, second).
offered(automat, junior, third).
offered(algocom, junior, third).
offered(csmetre, junior, third).
offered(prosdev, junior, third).
offered(gameng2, junior, third).
offered(gdgraph, junior, third).
offered(scimatc, junior, third).
offered(lbymatc, junior, third).
offered(thscs1, senior, first).
offered(gameng3, senior, first).
offered(cselec2, senior, first).
offered(cselec3, senior, first).
offered(tredfor, senior, first).
offered(kaspil2, senior, first).
offered(ipersef, senior, first).
offered(lasare3, senior, first).
offered(humaart, senior, second).
offered(thscs2, senior, second).
offered(spelec1, senior, second).
offered(spelec2, senior, second).
offered(cselec4, senior, second).
offered(humalit, senior, third).
offered(thscs3, senior, third).
offered(inovate, senior, third).
offered(spelec3, senior, third).
offered(intfilo, senior, third).
offered(greatwk, senior, third).

preq(automat, dasalgo).
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
preq(csstat,ccscal2).
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
nopreq(lasare1).
nopreq(englcom).
nopreq(formdev).
nopreq(tredone).
nopreq(scimatp).
nopreq(lbyarc).
nopreq(kaspil1).
nopreq(cselec1).
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

studentyear(john, junior).
term(third).

passed(john,intesys).
passed(john,sofengg).
passed(john,opersys).