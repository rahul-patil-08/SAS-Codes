/* 	Chandana Roy
	Advance Programming
	Topic Proc SQL
  */
/* Syntax */

/* 	Select
	From
	where
	group by
	having 
	order	
 */
/* menomic ffor Syntax */
/*Some french Waiters grow health oranges   */


proc sql;
create table test (Name char,age num);
insert into test 
values ("Rahul", 25) 
values ("Sowmya" ,23);
quit;


proc sql;
create table test (Name char,age num);
insert into test 
set  Name="Rahul",Age=25 
set  Name="Sowmya",Age=23;
quit;


Proc sql;
create table Test as select * from sashelp.class;
quit; 
/* Obs Option  */
proc sql outobs=10;
select * from sashelp.class;
quit;

/* Rename option  */
Proc sql;
create table Test as select name as Full_name,age from sashelp.class;
quit; 

/*  Creating a New Variables */
proc sql;
create table test as select * ,(weight*0.45) as Weightlbs from sashelp.class;
run;

/*  Creating a New Variables from calaculated varabile */

proc sql;
create table test as select *  ,(Weight*0.45) as Weightlb , Calculated Weightlb+1 as new_weight   from sashelp.class;
run;

/* Removing Duplicates */
proc sql;
create table   test  as select * from sashelp.class
distinct ;
quit;


/* Labelling nad Formatting  */
proc sql;
select * ,name label="New_Name", age format=dollar4. from sashelp.class;
quit;

/* Sorting */
proc sql;
select * from sashelp.class order by age, name;
quit;

proc sql;
select * from sashelp.class where age>=16;
quit;

proc sql ;
select * from sashelp.class where age in (14,15);
quit;

proc sql;
select * from sashelp.class where age=14 and 18;
quit;

proc sql;
select * from sashelp.class where age between  11 and 13;
quit;

proc sql ;
select * from Sashelp.class where age=14 and sex="M";
run;

proc sql;
select * from Sashelp.class where name contains "a";
quit;


proc sql;
select * from sashelp.class where age is not missing;
quit;

proc sql;
select * from sashelp.class where name like "A%";
quit;

proc sql;
select * from sashelp.class where name like "A%d";
quit;

proc sql;
select * from sashelp.class where name like "____";
quit;
























































