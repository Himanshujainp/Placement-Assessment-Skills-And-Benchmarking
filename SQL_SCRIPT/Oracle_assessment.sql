
CREATE TABLE TBL_TRS_STUDENT_ASSESSMENT
(
  NUM_STUDENT_ID            NUMBER              NOT NULL,
  NUM_QUESTION_ID           NUMBER              NOT NULL,
  NUM_ANSWER_CHOICE         NUMBER              NOT NULL,
  VCH_ANSWER_TEST           VARCHAR2(2000 BYTE) NOT NULL,
  NUM_ACTUAL_ANSWER_CHOICE  NUMBER              NOT NULL,
  NUM_ASSESS_VALUE          NUMBER              NOT NULL,
  NUM_ATTEMPT_COUNT         NUMBER              NOT NULL,
  DTT_DATE_OF_ASSESSMENT    DATE                DEFAULT SYSDATE               NOT NULL,
  NUM_ASSESSMENT_ID         NUMBER,
  NUM_CREATED_BY            NUMBER,
  DTT_CREATION_DATE         DATE                DEFAULT SYSDATE,
  VCH_ACTUAL_ANSWER_TEXT    VARCHAR2(2000 BYTE)
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE;


CREATE UNIQUE INDEX TBL_TRS_STUDENT_ASSESSMENT_PK ON TBL_TRS_STUDENT_ASSESSMENT
(NUM_ASSESSMENT_ID)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE TBL_TRS_STUDENT_ASSESSMENT ADD (
  CONSTRAINT TBL_TRS_STUDENT_ASSESSMENT_PK
  PRIMARY KEY
  (NUM_ASSESSMENT_ID)
  USING INDEX TBL_TRS_STUDENT_ASSESSMENT_PK
  ENABLE VALIDATE);

ALTER TABLE TBL_TRS_STUDENT_ASSESSMENT ADD (
  CONSTRAINT TBL_TRS_STUD_ASSESS_QUESID_R01 
  FOREIGN KEY (NUM_QUESTION_ID) 
  REFERENCES TBL_MST_QUESTION (NUM_QUESTION_ID)
  ENABLE VALIDATE
,  CONSTRAINT TBL_TRS_STUD_ASSESS_STID_R01 
  FOREIGN KEY (NUM_STUDENT_ID) 
  REFERENCES TBL_MST_STUDENT (NUM_STUDENT_ID)
  ENABLE VALIDATE);
