--------------------------------------------------------
--  Arquivo criado - terça-feira-abril-08-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table T_MARKET_SALES
--------------------------------------------------------

-- Integrantes do grupo:

-- Lucas Guedes Gianini - 560454
-- Kauan Guimarães Araujo - 559472
-- Mabel Mayer Kassardjian - 561145
-- Priscila Bueno - 561142
-- Paulo Medeiros - 559768

--DROP TABLE T_MARKET_SALES CASCADE CONSTRAINTS;

  CREATE TABLE T_MARKET_SALES 
   (	"INVOICE_ID" VARCHAR2(26 BYTE), 
	"BRANCH" VARCHAR2(3 BYTE), 
	"CITY" VARCHAR2(12 BYTE), 
	"CUSTOMER_TYPE" VARCHAR2(8 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"PRODUCT_LINE" VARCHAR2(26 BYTE), 
	"UNIT_PRICE" NUMBER(10,3), 
	"QUANTITY" NUMBER(10,3), 
	"TAX" NUMBER(10,3), 
	"TOTAL" NUMBER(10,3), 
	"DATA" DATE, 
	"TIME" VARCHAR2(6 BYTE), 
	"PAYMENT" VARCHAR2(12 BYTE), 
	"COGS" NUMBER(10,3), 
	"RATING" NUMBER(10,3)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
  
  -- Constraint de chave primária
ALTER TABLE T_MARKET_SALES
ADD CONSTRAINT PK_MARKET_SALES PRIMARY KEY (INVOICE_ID);


-- Constraint de valor positivo para QUANTITY
ALTER TABLE T_MARKET_SALES
ADD CONSTRAINT CHK_QUANTITY_POSITIVE CHECK (QUANTITY >= 0);

-- Constraint de valor positivo para TOTAL
ALTER TABLE T_MARKET_SALES
ADD CONSTRAINT CHK_TOTAL_POSITIVE CHECK (TOTAL >= 0);


-- OBS: Não tem constraint da chave estrangeira e nem unique para nosso dataset 