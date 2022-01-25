
/**********************************************/
/* You must run SETUP.SAS before you run      */
/* this code to create your data for EPG1V2   */
/*                                            */
/* DO NOT EDIT THE CODE BELOW                 */
/**********************************************/

%include "&path/pg1v2.sas";

proc contents data=pg1._all_ nods;
run;
