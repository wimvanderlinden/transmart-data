--
-- Type: TABLE; Owner: BIOMART; Name: BIO_CONTENT_REPOSITORY
--
 CREATE TABLE "BIOMART"."BIO_CONTENT_REPOSITORY" 
  (	"BIO_CONTENT_REPO_ID" NUMBER(18,0) NOT NULL ENABLE, 
"LOCATION" NVARCHAR2(510), 
"ACTIVE_Y_N" CHAR(1 CHAR), 
"REPOSITORY_TYPE" NVARCHAR2(200) NOT NULL ENABLE, 
"LOCATION_TYPE" NVARCHAR2(200), 
 CONSTRAINT "EXTERNAL_FILE_REPOSITORY_PK" PRIMARY KEY ("BIO_CONTENT_REPO_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "BIOMART" ;

--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_CONTENT_REPO_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_CONTENT_REPO_ID" before insert on "BIO_CONTENT_REPOSITORY"    for each row begin     if inserting then       if :NEW."BIO_CONTENT_REPO_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_CONTENT_REPO_ID" from dual;       end if;    end if; end;













/
ALTER TRIGGER "BIOMART"."TRG_BIO_CONTENT_REPO_ID" ENABLE;
 