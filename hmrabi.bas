10 REM *** CONVERTED FROM THE ORIGINAL FOCAL PROGRAM AND MODIFIED
20 REM *** FOR EDUSYSTEM 70 BY DAVID AHL, DIGITAL
30 REM *** MODIFIED FOR 8K MICROSOFT BASIC BY PETER TURNBULL
80 PRINT "TRY YOUR HAND AT GOVERNING ANCIENT SUMERIA"
85 PRINT "SUCCESSFULLY FOR A 10-YR TERM OF OFFICE.":PRINT
90 REM RANDOMIZE REMOVED
95 D1=0:P1=0
110 Z=0:P=95:S=2800:H=3000:E=H-S
120 Y=3:A=H/Y:I=5:Q=1
210 D=0
215 PRINT:PRINT:PRINT "HAMURABI:  I BEG TO REPORT TO YOU,":Z=Z+1
217 PRINT "IN YEAR"Z","D"PEOPLE STARVED,"I"CAME TO THE CITY."
218 P=P+I
227 IF Q>0 THEN 230
228 P=INT(P/2)
229 PRINT "A HORRIBLE PLAGUE STRUCK!  HALF THE PEOPLE DIED."
230 PRINT "POPULATION IS NOW"P 
232 PRINT "THE CITY NOW OWNS"A"ACRES."
235 PRINT "YOU HARVESTED"Y"BUSHELS PER ACRE."
250 PRINT "RATS ATE"E"BUSHELS."
260 PRINT "YOU NOW HAVE"S"BUSHELS IN STORE.":PRINT
270 IF Z=11 THEN 860
310 C=INT(10*RND(1)):Y=C+17
312 PRINT "LAND IS TRADING AT"Y"BUSHELS PER ACRE."
320 PRINT "HOW MANY ACRES DO YOU WISH TO BUY";
321 INPUT Q:IF Q<0 THEN 850
322 IF Y*Q<=S THEN 330
323 GOSUB 710
324 GOTO 320 
330 IF Q=0 THEN 340
331 A=A+Q:S=S-Y*Q:C=0
334 GOTO 400
340 PRINT "HOW MANY ACRES DO YOU WISH TO SELL";
341 INPUT Q:IF Q<0 THEN 850
342 IF Q<A THEN 350
343 GOSUB 720
344 GOTO 340 
350 A=A-Q:S=S+Y*Q:C=0
400 PRINT
410 PRINT "HOW MANY BUSHELS DO YOU WISH TO FEED YOUR PEOPLE";
411 INPUT Q
412 IF Q<0 THEN 850
418 REM *** TRYING TO USE MORE GRAIN THAN IN THE SILOS?
420 IF Q<=S THEN 430 
421 GOSUB 710
422 GOTO 410 
430 S=S-Q:C=1:PRINT
440 PRINT "HOW MANY ACRES DO YOU WISH TO PLANT WITH SEED";
441 INPUT D:IF D=0 THEN 511
442 IF D<0 THEN 850
444 REM *** TRYING TO PLANT MORE ACRES THAN YOU OWN?
445 IF D<=A THEN 450
446 GOSUB 720
447 GOTO 440
449 REM *** ENOUGH GRAIN FOR SEED?
450 IF INT(D/2)<S THEN 455
452 GOSUB 710
453 GOTO 440 
454 REM *** ENOUGH PEOPLE TO TEND THE CROPS?
455 IF D<10*P THEN 510
460 PRINT "BUT YOU HAVE ONLY"P"PEOPLE TO TEND THE FIELDS. NOW THEN,"
470 GOTO 440
510 S=S-INT(D/2)
511 GOSUB 800
512 REM *** A BOUNTYFULL HARVEST!!
515 Y=C:H=D*Y:E=0
521 GOSUB 800
522 IF INT(C/2)<>C/2 THEN 530
523 REM *** THE RATS ARE RUNNING WILD!!
525 E=INT(S/C)
530 S=S-E+H
