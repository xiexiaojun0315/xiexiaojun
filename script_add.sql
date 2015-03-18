--------------------------------------------------------
--  File created - Wednesday-March-18-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CONTRACT_LOG
--------------------------------------------------------

  CREATE TABLE "CONTRACT_LOG" 
   (	"UUID" VARCHAR2(32 BYTE), 
	"LOG" VARCHAR2(2100 BYTE), 
	"CONTRACT_ID" VARCHAR2(32 BYTE), 
	"CREATE_BY" VARCHAR2(60 BYTE), 
	"CREATE_ON" DATE, 
	"MODIFY_BY" VARCHAR2(60 BYTE), 
	"MODIFY_ON" DATE, 
	"VERSION" NUMBER, 
	"PROCESS_STATUS" VARCHAR2(20 BYTE)
   ) ;
REM INSERTING into CONTRACT_LOG
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index CONTRACT_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CONTRACT_LOG_PK" ON "CONTRACT_LOG" ("UUID") 
  ;
--------------------------------------------------------
--  Constraints for Table CONTRACT_LOG
--------------------------------------------------------

  ALTER TABLE "CONTRACT_LOG" ADD CONSTRAINT "CONTRACT_LOG_PK" PRIMARY KEY ("UUID") ENABLE;
 
  ALTER TABLE "CONTRACT_LOG" MODIFY ("UUID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CONTRACT_LOG
--------------------------------------------------------

  ALTER TABLE "CONTRACT_LOG" ADD CONSTRAINT "CONTRACT_LOG_CONTRACT_FK1" FOREIGN KEY ("CONTRACT_ID")
	  REFERENCES "CONTRACT" ("UUID") ENABLE;
