--------------------------------------------------------
-- Archivo creado  - domingo-mayo-12-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_COM
--------------------------------------------------------

   CREATE SEQUENCE  "EVA2"."SEQ_COM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 140 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ESTADO_CIVIL
--------------------------------------------------------

   CREATE SEQUENCE  "EVA2"."SEQ_ESTADO_CIVIL"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 2 START WITH 10 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PROPIEDAD
--------------------------------------------------------

   CREATE SEQUENCE  "EVA2"."SEQ_PROPIEDAD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CATEGORIA_EMPLEADO
--------------------------------------------------------

  CREATE TABLE "EVA2"."CATEGORIA_EMPLEADO" 
   (	"ID_CATEGORIA_EMP" NUMBER(1,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 100 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"DESC_CATEGORIA_EMP" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "EVA2"."CLIENTE" 
   (	"NUMRUT_CLI" NUMBER(10,0), 
	"DVRUT_CLI" VARCHAR2(1 BYTE), 
	"APPATERNO_CLI" VARCHAR2(15 BYTE), 
	"APMATERNO_CLI" VARCHAR2(15 BYTE), 
	"NOMBRE_CLI" VARCHAR2(25 BYTE), 
	"DIRECION_CLI" VARCHAR2(60 BYTE), 
	"ID_ESTCIVIL" NUMBER, 
	"FONOFIJO_CLI" NUMBER(15,0), 
	"CELULAR_CLI" NUMBER(15,0), 
	"RENTA_CLI" NUMBER(7,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table COMUNA
--------------------------------------------------------

  CREATE TABLE "EVA2"."COMUNA" 
   (	"ID_COMUNA" NUMBER(3,0), 
	"NOMBRE_COMUNA" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table EMPLEADO
--------------------------------------------------------

  CREATE TABLE "EVA2"."EMPLEADO" 
   (	"NUMRUT_EMP" NUMBER(10,0), 
	"DEVRUT_EMP" VARCHAR2(1 BYTE), 
	"APPERNO_EMP" VARCHAR2(15 BYTE), 
	"APMATERNO_EMP" VARCHAR2(15 BYTE), 
	"NOMBRE_EMP" VARCHAR2(25 BYTE), 
	"DIRECCION_EMP" VARCHAR2(60 BYTE), 
	"ID_ESTCIVIL" NUMBER, 
	"FONOFIJO_EMP" VARCHAR2(15 BYTE), 
	"CELULAR_EMP" VARCHAR2(15 BYTE), 
	"FECNAC_EMP" NUMBER(10,0), 
	"FECING_EMP" NUMBER(10,0), 
	"SUELDO_EMP" NUMBER(7,0), 
	"ID_COMUNA" VARCHAR2(20 BYTE), 
	"ID_CATEGORIA_EMP" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table PROPIEDAD
--------------------------------------------------------

  CREATE TABLE "EVA2"."PROPIEDAD" 
   (	"NRO_PROPIEDAD" NUMBER(6,0), 
	"DIRECION_PROPIEDAD" VARCHAR2(60 BYTE), 
	"SUPERFICIE" NUMBER(8,2), 
	"NRO_DORM" NUMBER(1,0), 
	"NRO_BANO" NUMBER(1,0), 
	"VALOR_ARRIENDO" VARCHAR2(7 BYTE), 
	"VALOR_GASTOS_COMUNES" VARCHAR2(7 BYTE), 
	"ID_TIPO_PROPIEDAD" VARCHAR2(1 BYTE), 
	"ID_COMUNA" NUMBER, 
	"NUMRUT_PROP" NUMBER(10,0), 
	"NUMRUT_EMP" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table PROPIEDAD_ARRENDADA
--------------------------------------------------------

  CREATE TABLE "EVA2"."PROPIEDAD_ARRENDADA" 
   (	"NRO_PROPIEDAD" NUMBER, 
	"FECINI_ARRIENDO" DATE, 
	"FECTER_ARRIENDO" DATE, 
	"NUMRUT_CLI" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Table PROPIETARIO
--------------------------------------------------------

  CREATE TABLE "EVA2"."PROPIETARIO" 
   (	"NUMRUT_PROP" NUMBER(10,0), 
	"DVRUT_PROP" VARCHAR2(1 BYTE), 
	"APPATERNO_PROP" VARCHAR2(15 BYTE), 
	"APMATERNO_PROP" VARCHAR2(15 BYTE), 
	"NOMBRE_PROP" VARCHAR2(25 BYTE), 
	"DIRECCION_PROP" VARCHAR2(60 BYTE), 
	"ID_ESTCIVIL" NUMBER(1,0), 
	"FONOFIJO_PROP" VARCHAR2(15 BYTE), 
	"CELULAR_PROP" VARCHAR2(15 BYTE), 
	"ID_COMUNA" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
REM INSERTING into EVA2.CATEGORIA_EMPLEADO
SET DEFINE OFF;
Insert into EVA2.CATEGORIA_EMPLEADO (ID_CATEGORIA_EMP,DESC_CATEGORIA_EMP) values ('1','Gerente');
Insert into EVA2.CATEGORIA_EMPLEADO (ID_CATEGORIA_EMP,DESC_CATEGORIA_EMP) values ('2','Supervisor');
Insert into EVA2.CATEGORIA_EMPLEADO (ID_CATEGORIA_EMP,DESC_CATEGORIA_EMP) values ('3','Ejecutivo de Arriendo');
REM INSERTING into EVA2.CLIENTE
SET DEFINE OFF;
REM INSERTING into EVA2.COMUNA
SET DEFINE OFF;
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('80','Las Condes');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('81','Providencia');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('82','Santiago');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('83','�u�oa');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('84','Vitacura');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('85','La Reina');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('86','La Florida');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('87','Maip�');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('88','Lo Barnechea');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('89','Macul');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('90','San Miguel');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('91','Pe�alol�n');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('92','Puente Alto');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('93','Recoleta');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('94','Estaci�n Central');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('95','San Bernardo');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('96','Independencia');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('97','La Cisterna');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('98','Quilicura');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('99','Quinta Normal');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('100','Conchal�');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('101','San Joaqu�n');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('102','Huechuraba');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('103','El Bosque');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('104','Cerrillos');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('105','Cerro Navia');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('106','La Granja');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('107','La Pintana');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('108','Lo Espejo');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('109','Lo Prado');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('110','Pedro Aguirre Cerda');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('111','Pudahuel');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('112','Renca');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('113','San Ram�n');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('114','Melipilla');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('115','San Pedro');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('116','Alhu�');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('117','Mar�a Pinto');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('118','Curacav�');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('119','Talagante');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('120','El Monte');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('121','Buin');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('122','Paine');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('123','Pe�aflor');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('124','Isla de Maipo');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('125','Colina');
Insert into EVA2.COMUNA (ID_COMUNA,NOMBRE_COMUNA) values ('126','Pirque');
REM INSERTING into EVA2.EMPLEADO
SET DEFINE OFF;
REM INSERTING into EVA2.PROPIEDAD
SET DEFINE OFF;
REM INSERTING into EVA2.PROPIEDAD_ARRENDADA
SET DEFINE OFF;
REM INSERTING into EVA2.PROPIETARIO
SET DEFINE OFF;
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12491094','3','SAAVEDRA','VILLALOBOS','SERGIO','VIA 7 N�1000 B/3 D/7','5','22398244',null,'82');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12651346','4','MU�OZ','PEREZ','CLAUDIA','SANTA ISABEL 463','1','26359178','27412904','83');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12116380','5','BARAHONA','ORELLANA','JOSE','NTRA. SRA. SANTA GENOVEVA 9508','2','22871051',null,'82');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('13024901','K','VALENCIA','URBINA','SERGIO','MARIA ELENA 1857 V/LOS NAVIOS','3','25417284','26211095','85');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12885975','0','BARRIOS','MU�OZ','BARBARA','PASAJE PUCON 5940','5','22215104','26710430','82');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('13041308','1','PARDO','ESPINOSA','RICHARD','PJE.PIRAMIDE 1477 P/BOROA','1','26811939','27740990','87');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('11947288','2','QUEZADA','GOMEZ','MARIO','LAS MALVAS 10470 V/PENSAMIENTO','2','25415191','25410480','88');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12783347','3','CUBILLOS','FERRADA','JORGE','LAGO RUPANCO 1556 P/LANALHUE','4','22930493','25377732','89');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('13195197','4','GUERRERO','ROMO','MAURICIO','BROCKMAN 1326 VILLA ITALIA','5','2232366','28113377','92');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12676073','5','PIZARRO','TORO','JAIME','FCO.BILBAO 1826 P/SAN RAFAEL','1','25426807',null,'94');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('13471056','6','MIRANDA','VALENZUELA','PRISCILLA','AV. COLECTOR 4866 P/SANTIAGO','2','27796916','27790195','95');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12064147','7','ROBLES','VIDAL','LUIS','SEGUNDA TRANSVERSAL PJ.2 C/996','3','25573796','25268570','87');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('14149786','8','ROBLES','CAMIRUAGA','AQUILES','DIAGONAL PARAGUAY 360 DPTO 116','5','22227933','25325139','87');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('13071695','9','LOSADA','MALDONADO','LEONARDO','OCTAVA AV.PJE.JOSE READY 6256','1','25222006','25311153','80');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12870395','K','HERNANDEZ','VALLADARES','JONATHA','PJE.RENE OLIVARES 1294','2','25389883','26413331','106');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('14412994','5','ALARCON','QUIROGA','JOHN','CALLE 1 C/4452 P/SANTIAGO','3','27789352','25261372','107');
Insert into EVA2.PROPIETARIO (NUMRUT_PROP,DVRUT_PROP,APPATERNO_PROP,APMATERNO_PROP,NOMBRE_PROP,DIRECCION_PROP,ID_ESTCIVIL,FONOFIJO_PROP,CELULAR_PROP,ID_COMUNA) values ('12878526','6','RIQUELME','CORREA','JOHN','MOISES RIOS N�1065','5','27375662','25261372','108');
--------------------------------------------------------
--  DDL for Index CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."CLIENTE_PK" ON "EVA2"."CLIENTE" ("NUMRUT_CLI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index EMPLEADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."EMPLEADO_PK" ON "EVA2"."EMPLEADO" ("NUMRUT_EMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PK_CATEGORIA_EMPLEADO
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PK_CATEGORIA_EMPLEADO" ON "EVA2"."CATEGORIA_EMPLEADO" ("ID_CATEGORIA_EMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PK_PROPIETARIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PK_PROPIETARIO" ON "EVA2"."PROPIETARIO" ("NUMRUT_PROP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PK_SUCURSAL
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PK_SUCURSAL" ON "EVA2"."COMUNA" ("ID_COMUNA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PROPIEDAD_ARRENDADA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PROPIEDAD_ARRENDADA_PK" ON "EVA2"."PROPIEDAD_ARRENDADA" ("NRO_PROPIEDAD", "FECINI_ARRIENDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PROPIEDAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PROPIEDAD_PK" ON "EVA2"."PROPIEDAD" ("NRO_PROPIEDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PK_CATEGORIA_EMPLEADO
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PK_CATEGORIA_EMPLEADO" ON "EVA2"."CATEGORIA_EMPLEADO" ("ID_CATEGORIA_EMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index CLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."CLIENTE_PK" ON "EVA2"."CLIENTE" ("NUMRUT_CLI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PK_SUCURSAL
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PK_SUCURSAL" ON "EVA2"."COMUNA" ("ID_COMUNA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index EMPLEADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."EMPLEADO_PK" ON "EVA2"."EMPLEADO" ("NUMRUT_EMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PROPIEDAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PROPIEDAD_PK" ON "EVA2"."PROPIEDAD" ("NRO_PROPIEDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PROPIEDAD_ARRENDADA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PROPIEDAD_ARRENDADA_PK" ON "EVA2"."PROPIEDAD_ARRENDADA" ("NRO_PROPIEDAD", "FECINI_ARRIENDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Index PK_PROPIETARIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVA2"."PK_PROPIETARIO" ON "EVA2"."PROPIETARIO" ("NUMRUT_PROP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX" ;
--------------------------------------------------------
--  DDL for Trigger VERIFICAR_PROPIEDAD
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "EVA2"."VERIFICAR_PROPIEDAD" 
BEFORE INSERT ON PROPIEDAD
FOR EACH ROW
DECLARE
   exceso_valor EXCEPTION;
BEGIN
   IF :NEW.VALOR_ARRIENDO > 250000000
   END IF;
EXCEPTION
   WHEN exceso_valor THEN
      RAISE_APPLICATION_ERROR(-20001, 'La propiedad no cumple con las condiciones de valor de arriendo y gasto com�n');
END;

/
ALTER TRIGGER "EVA2"."VERIFICAR_PROPIEDAD" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VERIFICAR_VALORES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "EVA2"."VERIFICAR_VALORES" 
BEFORE INSERT ON PROPIEDAD
FOR EACH ROW
DECLARE
   exceso_valor EXCEPTION;
BEGIN
   IF :NEW.VALOR_ARRIENDO > 250000000 OR :NEW.VALOR_GASTOS_COMUNES <= 250000 THEN
      RAISE exceso_valor;
   END IF;

   IF :NEW.TIPO = 'local' THEN
      :NEW.NRO_DORM := 0;
   END IF;

   IF :NEW.TIPO = 'parcelas sin casa' THEN
      :NEW.NRO_DORM := 0;
      :NEW.NRO_BANO := 0;
   END IF;
EXCEPTION
   WHEN exceso_valor THEN
      RAISE_APPLICATION_ERROR(-20001, 'Error: El valor de arriendo no debe superar los $250.000.000 y el valor del gasto com�n debe ser superior a los $250.000');
END;

/
ALTER TRIGGER "EVA2"."VERIFICAR_VALORES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VERIFICAR_PROPIEDAD
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "EVA2"."VERIFICAR_PROPIEDAD" 
BEFORE INSERT ON PROPIEDAD
FOR EACH ROW
DECLARE
   exceso_valor EXCEPTION;
BEGIN
   IF :NEW.VALOR_ARRIENDO > 250000000
   END IF;
EXCEPTION
   WHEN exceso_valor THEN
      RAISE_APPLICATION_ERROR(-20001, 'La propiedad no cumple con las condiciones de valor de arriendo y gasto com�n');
END;

/
ALTER TRIGGER "EVA2"."VERIFICAR_PROPIEDAD" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VERIFICAR_VALORES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "EVA2"."VERIFICAR_VALORES" 
BEFORE INSERT ON PROPIEDAD
FOR EACH ROW
DECLARE
   exceso_valor EXCEPTION;
BEGIN
   IF :NEW.VALOR_ARRIENDO > 250000000 OR :NEW.VALOR_GASTOS_COMUNES <= 250000 THEN
      RAISE exceso_valor;
   END IF;

   IF :NEW.TIPO = 'local' THEN
      :NEW.NRO_DORM := 0;
   END IF;

   IF :NEW.TIPO = 'parcelas sin casa' THEN
      :NEW.NRO_DORM := 0;
      :NEW.NRO_BANO := 0;
   END IF;
EXCEPTION
   WHEN exceso_valor THEN
      RAISE_APPLICATION_ERROR(-20001, 'Error: El valor de arriendo no debe superar los $250.000.000 y el valor del gasto com�n debe ser superior a los $250.000');
END;

/
ALTER TRIGGER "EVA2"."VERIFICAR_VALORES" ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORIA_EMPLEADO
--------------------------------------------------------

  ALTER TABLE "EVA2"."CATEGORIA_EMPLEADO" MODIFY ("ID_CATEGORIA_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CATEGORIA_EMPLEADO" MODIFY ("DESC_CATEGORIA_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CATEGORIA_EMPLEADO" ADD CONSTRAINT "PK_CATEGORIA_EMPLEADO" PRIMARY KEY ("ID_CATEGORIA_EMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("NUMRUT_CLI" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("DVRUT_CLI" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("APPATERNO_CLI" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("APMATERNO_CLI" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("NOMBRE_CLI" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("DIRECION_CLI" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("ID_ESTCIVIL" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("FONOFIJO_CLI" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" MODIFY ("RENTA_CLI" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."CLIENTE" ADD CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("NUMRUT_CLI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMUNA
--------------------------------------------------------

  ALTER TABLE "EVA2"."COMUNA" MODIFY ("ID_COMUNA" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."COMUNA" MODIFY ("NOMBRE_COMUNA" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."COMUNA" ADD CONSTRAINT "PK_SUCURSAL" PRIMARY KEY ("ID_COMUNA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLEADO
--------------------------------------------------------

  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("DEVRUT_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("APPERNO_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("APMATERNO_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("NOMBRE_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("DIRECCION_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("NUMRUT_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" ADD CONSTRAINT "EMPLEADO_PK" PRIMARY KEY ("NUMRUT_EMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("ID_ESTCIVIL" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("FECING_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("SUELDO_EMP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."EMPLEADO" MODIFY ("FONOFIJO_EMP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROPIEDAD
--------------------------------------------------------

  ALTER TABLE "EVA2"."PROPIEDAD" MODIFY ("NRO_PROPIEDAD" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIEDAD" MODIFY ("DIRECION_PROPIEDAD" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIEDAD" MODIFY ("SUPERFICIE" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIEDAD" MODIFY ("VALOR_ARRIENDO" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIEDAD" MODIFY ("ID_TIPO_PROPIEDAD" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIEDAD" MODIFY ("ID_COMUNA" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIEDAD" ADD CONSTRAINT "PROPIEDAD_PK" PRIMARY KEY ("NRO_PROPIEDAD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "EVA2"."PROPIEDAD" MODIFY ("NUMRUT_PROP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROPIEDAD_ARRENDADA
--------------------------------------------------------

  ALTER TABLE "EVA2"."PROPIEDAD_ARRENDADA" MODIFY ("NRO_PROPIEDAD" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIEDAD_ARRENDADA" MODIFY ("FECINI_ARRIENDO" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIEDAD_ARRENDADA" ADD CONSTRAINT "PROPIEDAD_ARRENDADA_PK" PRIMARY KEY ("NRO_PROPIEDAD", "FECINI_ARRIENDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "SYSAUX"  ENABLE;
  ALTER TABLE "EVA2"."PROPIEDAD_ARRENDADA" MODIFY ("NUMRUT_CLI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROPIETARIO
--------------------------------------------------------

  ALTER TABLE "EVA2"."PROPIETARIO" MODIFY ("NUMRUT_PROP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIETARIO" MODIFY ("DVRUT_PROP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIETARIO" MODIFY ("APPATERNO_PROP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIETARIO" MODIFY ("APMATERNO_PROP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIETARIO" MODIFY ("NOMBRE_PROP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIETARIO" MODIFY ("DIRECCION_PROP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIETARIO" MODIFY ("ID_ESTCIVIL" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIETARIO" MODIFY ("FONOFIJO_PROP" NOT NULL ENABLE);
  ALTER TABLE "EVA2"."PROPIETARIO" ADD CONSTRAINT "PK_PROPIETARIO" PRIMARY KEY ("NUMRUT_PROP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSAUX"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLEADO
--------------------------------------------------------

  ALTER TABLE "EVA2"."EMPLEADO" ADD CONSTRAINT "FK_EMPLEADO_CATEGORIA_EMPLEADO" FOREIGN KEY ("ID_CATEGORIA_EMP")
	  REFERENCES "EVA2"."CATEGORIA_EMPLEADO" ("ID_CATEGORIA_EMP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROPIEDAD
--------------------------------------------------------

  ALTER TABLE "EVA2"."PROPIEDAD" ADD CONSTRAINT "FK_PROPIEDAD_PROPIETARIO" FOREIGN KEY ("NUMRUT_PROP")
	  REFERENCES "EVA2"."PROPIETARIO" ("NUMRUT_PROP") ENABLE;
  ALTER TABLE "EVA2"."PROPIEDAD" ADD CONSTRAINT "FK_PROPIEDAD_EMPLEADO" FOREIGN KEY ("NUMRUT_EMP")
	  REFERENCES "EVA2"."EMPLEADO" ("NUMRUT_EMP") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROPIEDAD_ARRENDADA
--------------------------------------------------------

  ALTER TABLE "EVA2"."PROPIEDAD_ARRENDADA" ADD CONSTRAINT "FK_PROPIEDAD_ARRENDADA_CLIENTE" FOREIGN KEY ("NUMRUT_CLI")
	  REFERENCES "EVA2"."CLIENTE" ("NUMRUT_CLI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROPIETARIO
--------------------------------------------------------

  ALTER TABLE "EVA2"."PROPIETARIO" ADD CONSTRAINT "FK_PROPIETARIO_COMUNA" FOREIGN KEY ("ID_COMUNA")
	  REFERENCES "EVA2"."COMUNA" ("ID_COMUNA") ENABLE;
