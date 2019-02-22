
CREATE TABLE TBL_TRS_STUDENT_SCALING
(
  NUM_STUDENT_ID     NUMBER                     NOT NULL,
  NUM_ATTEMPT_COUNT  NUMBER                     NOT NULL,
  NUM_SUBLEVEL_ID    NUMBER                     NOT NULL,
  NUM_TOTAL_SCORE    NUMBER                     NOT NULL,
  DTT_MODIFIED_DATE  DATE                       DEFAULT SYSDATE,
  NUM_MODIFIED_BY    NUMBER,
  NUM_CREATED_BY     NUMBER,
  DTT_CREATION_DATE  DATE                       DEFAULT SYSDATE,
  NUM_SCALING_ID     NUMBER
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


CREATE UNIQUE INDEX TBL_TRS_STUDENT_SCALING_PK ON TBL_TRS_STUDENT_SCALING
(NUM_SCALING_ID)
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

ALTER TABLE TBL_TRS_STUDENT_SCALING ADD (
  CONSTRAINT TBL_TRS_STUDENT_SCALING_PK
  PRIMARY KEY
  (NUM_SCALING_ID)
  USING INDEX TBL_TRS_STUDENT_SCALING_PK
  ENABLE VALIDATE);

ALTER TABLE TBL_TRS_STUDENT_SCALING ADD (
  CONSTRAINT TBL_TRS_STUD_SCALING_STUID_R01 
  FOREIGN KEY (NUM_STUDENT_ID) 
  REFERENCES TBL_MST_STUDENT (NUM_STUDENT_ID)
  ENABLE VALIDATE
,  CONSTRAINT TBL_TRS_STUD_SCALING_SUBID_R01 
  FOREIGN KEY (NUM_SUBLEVEL_ID) 
  REFERENCES TBL_MST_SUBLEVEL (NUM_SUBLEVEL_ID)
  ENABLE VALIDATE);