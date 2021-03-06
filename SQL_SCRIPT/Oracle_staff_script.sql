
CREATE TABLE TBL_MST_STAFFS
(
  NUM_STAFF_ID       NUMBER,
  VCH_STAFF_NAME     VARCHAR2(100 BYTE)         NOT NULL,
  NUM_DEPARTMENT_ID  NUMBER,
  VCH_STAFF_EMAIL    VARCHAR2(100 BYTE)         NOT NULL,
  CHR_ACTIVE_STATUS  CHAR(1 BYTE)               NOT NULL,
  DTT_CREATION_DATE  DATE                       DEFAULT SYSDATE               NOT NULL,
  NUM_CREATED_BY     NUMBER,
  NUM_MODIFIED_BY    NUMBER,
  DTT_MODIFIED_DATE  DATE
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


CREATE UNIQUE INDEX TBL_MST_STAFFS_PK ON TBL_MST_STAFFS
(NUM_STAFF_ID)
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

ALTER TABLE TBL_MST_STAFFS ADD (
  CONSTRAINT TBL_MST_STAFFS_PK
  PRIMARY KEY
  (NUM_STAFF_ID)
  USING INDEX TBL_MST_STAFFS_PK
  ENABLE VALIDATE);
