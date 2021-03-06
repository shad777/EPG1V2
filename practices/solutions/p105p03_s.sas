***********************************************************;
*  LESSON 5, PRACTICE 3 SOLUTION                          *;
***********************************************************;

/*part a*/
title1 'Counts of Selected Park Types by Park Region';
ods graphics on;
proc freq data=pg1.np_codelookup order=freq;
	tables Type*Region / crosslist plots=freqplot(twoway=stacked orient=horizontal);
	where Type in ('National Historic Site', 'National Monument', 'National Park');
run;

/*part b */
title1 'Counts of Selected Park Types by Park Region';
proc sgplot data=pg1.np_codelookup;
    where Type in ('National Historic Site', 'National Monument', 'National Park');
    hbar region / group=type;
    keylegend / opaque across=1 position=bottomright location=inside;
    xaxis grid;
run;

/*part c*/
proc sgplot data=pg1.np_codelookup;
    where Type in ('National Historic Site', 'National Monument', 'National Park');
    hbar region / group=type seglabel fillattrs=(transparency=0.5) dataskin=crisp;
    keylegend / opaque across=1 position=bottomright location=inside;
    xaxis grid;
run;
title;

