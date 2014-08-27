--
-- Type: TABLE; Owner: TM_WZ; Name: WT_SUBJECT_SAMPLE_MAPPING
--
 CREATE TABLE "TM_WZ"."WT_SUBJECT_SAMPLE_MAPPING" 
  (	"PATIENT_NUM" NUMBER(38,0), 
"SITE_ID" VARCHAR2(100 BYTE), 
"SUBJECT_ID" VARCHAR2(100 BYTE), 
"CONCEPT_CODE" VARCHAR2(50 BYTE), 
"SAMPLE_TYPE" VARCHAR2(100 BYTE), 
"SAMPLE_TYPE_CD" VARCHAR2(100 BYTE), 
"TIMEPOINT" VARCHAR2(100 BYTE), 
"TIMEPOINT_CD" VARCHAR2(50 BYTE), 
"TISSUE_TYPE" VARCHAR2(100 BYTE), 
"TISSUE_TYPE_CD" VARCHAR2(50 BYTE), 
"PLATFORM" VARCHAR2(50 BYTE), 
"PLATFORM_CD" VARCHAR2(50 BYTE), 
"DATA_UID" VARCHAR2(100 BYTE), 
"GPL_ID" VARCHAR2(20 BYTE), 
"SAMPLE_CD" VARCHAR2(200 BYTE), 
"CATEGORY_CD" VARCHAR2(1000 BYTE)
  ) SEGMENT CREATION DEFERRED
 TABLESPACE "TRANSMART" ;

