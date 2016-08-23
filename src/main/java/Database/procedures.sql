--------------------------------------------------------
--  File created - Thursday-August-18-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ADDRESUME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "JOBNET"."ADDRESUME" 
(
  APPLICANT IN INT  
, RESUME_FILE IN BLOB  
) AS 
BEGIN
  insert into resumes
    (
      resumeid, applicantid, resume
    )
  Values
    (
      resumeid.nextval, applicant, resume_file
    );
  COMMIT;
END ADDRESUME;

/
--------------------------------------------------------
--  DDL for Procedure ADDUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "JOBNET"."ADDUSER" 
(
  USER_EMAIL IN VARCHAR2  
, USER_PASS IN VARCHAR2  
, DATE_CREATED IN DATE 
, USER_ROLE IN VARCHAR2  
) AS 
BEGIN
  INSERT INTO userprofile
  VALUES
    ( 
      userprofileid.nextval,
      user_email,
      user_pass,
      date_created,
      user_role
    );  
  COMMIT;
END ADDUSER;

/
--------------------------------------------------------
--  DDL for Procedure INSERTAPPLICANT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "JOBNET"."INSERTAPPLICANT" 
( 
  FIRST_NAME IN VARCHAR2  
, LAST_NAME IN VARCHAR2  
, PROFESSION IN VARCHAR2    
, EMAIL IN VARCHAR2 
, Pass  IN VARCHAR2
, PHONE IN VARCHAR2  
, ADDRESS IN VARCHAR2  
, WEBSITE IN VARCHAR2  
, LINKEDIN IN VARCHAR2  
, GITHUB IN VARCHAR2   
) AS 
BEGIN
  insert into applicant
    (
      applicantid,firstname,lastname,profession,email,password,phone,address,website,
      linkedin,githuburl
    )
  values
    ( 
      applicantid.nextval, first_name,last_name,profession,email,pass,phone,address,website,linkedin
      ,github
    );
  COMMIT;
END INSERTAPPLICANT;

/
--------------------------------------------------------
--  DDL for Procedure SAVEJOB
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "JOBNET"."SAVEJOB" 
(
  JOBID IN VARCHAR2 , 
  POSTER IN INTEGER
, EMPLOYER_NAME IN VARCHAR2  
, EMPLOYER_WEBSITE IN VARCHAR2  
, JOB_TITLE IN VARCHAR2  
, JOB_TYPE IN VARCHAR2  
, DESCRIPTION IN VARCHAR2  
, REQUIREMENTS IN VARCHAR2  
, DEADLINE IN DATE 
, jobCategory IN VARCHAR2
, jobLocation IN VARCHAR2
, SALARY IN NUMBER
) AS 
BEGIN
  insert into job 
    (jobID,employerName, employerWebsite,jobTitle,jobType,description,
      requirements,postedBy,deadline, category,location,salary
    )
  Values
    (JOBID,EMPLOYER_NAME,EMPLOYER_WEBSITE,JOB_TITLE,JOB_TYPE,DESCRIPTION,REQUIREMENTS, 
          POSTER,DEADLINE,jobCategory,jobLocation,salary
     );
  COMMIT;
END SAVEJOB;

/
