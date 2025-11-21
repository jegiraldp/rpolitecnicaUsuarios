CREATE DATABASE IF NOT EXISTS rpolitecnica;
USE rpolitecnica;

CREATE TABLE IF NOT EXISTS user (
  id CHAR(36) NOT NULL,
  username VARCHAR(100) NOT NULL,
  email VARCHAR(255) NOT NULL,
  country VARCHAR(120) NULL,
  is_active TINYINT(1) NOT NULL DEFAULT 1,
  updated_at DATETIME NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_user_username (username),
  UNIQUE KEY uq_user_email (email)
);

INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3c5ee17b-5431-4e6f-a23e-d441bfacf6b6','admin','revistas@elpoli.edu.co','Colombia','2015-02-23 18:45:56','2025-10-14 19:20:24',1),
  ('76d2debe-1206-4214-8535-f0289b284aae','rpolitecnica','rpolitecnica@elpoli.edu.co','Colombia','2015-03-03 15:54:00','2020-08-02 14:00:41',1),
  ('a5326390-0fa0-4598-8045-96cb8eddb7ef','monicav','mmvalle@elpoli.edu.co','Colombia','2015-03-03 15:54:51','2022-04-16 17:15:51',1),
  ('7fa459a6-2112-456b-bc5f-690b2092e634','evelin','eosorio@elpoli.edu.co','Colombia','2015-03-03 15:56:15','2015-10-07 19:37:54',1),
  ('f615123b-3660-4651-961c-21c8decb0217','manuelg','bmgarcia@elpoli.edu.co','Colombia','2015-03-03 15:59:52','2015-10-07 19:40:16',1),
  ('9642af30-56f1-422a-8183-eb7a51855edf','jgardila','juanardila@itm.edu.co','Colombia','2015-07-09 14:38:51','2015-12-03 17:10:30',1),
  ('bf9075c3-6676-4085-8ad8-a2ef71d51636','verohenao2012','verohenao2012@gmail.com','Colombia','2015-08-03 18:21:40','2015-08-03 18:21:41',1),
  ('84612f0d-94b1-4174-a777-98cfd962851b','cecilia','cecilia.alpizar@gmail.com','Mexico','2015-09-28 16:22:37','2015-09-28 16:22:51',1),
  ('06bed526-14e7-4338-b3d8-49cab41d0daa','lvelasquezospina','lilianavelasquez@elpoli.edu.co',NULL,'2015-10-20 21:52:00','2015-10-20 21:52:00',1),
  ('782eba65-351e-457a-b7d4-6989167474a7','jfvargas','jfelipe148@gmail.com','Colombia','2015-10-24 12:44:21','2022-10-12 22:32:35',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('38c0c9e5-9fbe-4936-b7ac-e1a8fbdae6d2','santiagoaldas','santiagoaldas0246@hotmail.com','Ecuador','2015-11-04 21:22:51','2015-11-04 21:23:31',1),
  ('0a67f177-38e9-4eda-8c67-d31e8e2f7fa6','adzapata','adzapata@elpoli.edu.co','Colombia','2015-11-11 10:56:58','2015-11-11 10:57:38',1),
  ('3f43b989-1711-4b88-9c73-6bf4601d3231','sandra-muriel','sbmuriel@elpoli.edu.co','Colombia','2015-11-19 21:26:45','2020-12-17 16:00:24',1),
  ('25e38f30-b15f-4324-b369-6521c402512f','jgomez','jagomez@elpoli.edu.co','Colombia','2015-11-19 21:34:06','2015-11-19 21:34:37',1),
  ('7766e021-2ede-4b92-a369-0db78c1b5882','wramirez','waramirez@elpoli.edu.co','Colombia','2015-11-19 21:47:36','2015-11-19 21:47:36',1),
  ('0e3b34e3-afa9-4e3c-a512-2e52e682141b','adacosta','ademar.costa@ifpb.edu.br','Brazil','2015-11-19 21:50:15','2015-11-19 21:50:15',1),
  ('013ed64a-6046-4660-8fba-9ff8bdc231a5','jrico','julio@das.ufsc.br','Brazil','2015-11-19 21:51:13','2015-11-19 21:51:13',1),
  ('0e9fde08-6be2-4541-b250-7b5b792eda68','abrito','alissonbrito@ci.ufpb.br','Brazil','2015-11-19 21:52:24','2015-11-19 21:52:24',1),
  ('7f48190a-0473-4ac4-b0ef-3120c3037c8a','jgallardo','jgallardo@ucn.cl','Chile','2015-11-19 21:53:29','2015-11-19 21:53:29',1),
  ('9d83651a-6e96-43ea-b58f-d9e7866dd261','cmeneses','cmeneses@ucn.cl','Chile','2015-11-19 21:54:14','2015-11-19 21:54:14',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f8c39800-3cb5-45a4-944b-e84efbd1fbdc','jvalencia','jaime.valencia@udea.edu.co','Colombia','2015-11-19 21:55:05','2015-11-19 21:55:05',1),
  ('2b911deb-4e83-4f8b-a9d3-0f9e229456d9','jvilela','jpaulo@lee.eng.uerj.br','Brazil','2015-11-19 21:56:02','2015-11-19 21:56:02',1),
  ('41edea01-0e21-425e-b28f-1e42eb5fee6b','ahormanza','ahormaza@unal.edu.co','Colombia','2015-11-19 21:56:47','2015-11-19 21:56:47',1),
  ('53cc0725-0ed0-40a5-939f-0fcd2ab92070','jjimenez','jajimen1@unal.edu.co','Colombia','2015-11-19 21:57:36','2019-11-27 13:49:58',1),
  ('10bb04f9-f4a8-49e1-9b18-a0226eff4e06','lpaz','linapaz@unizar.es','Spain','2015-11-19 22:09:08','2015-11-19 22:09:08',1),
  ('cc102f45-1ca7-4b2b-bfe6-9fe839c9d9d5','egonzalez','epgonzalez@elpoli.edu.co','Colombia','2015-11-19 22:10:39','2015-11-19 22:10:39',1),
  ('6b22a27d-e0cc-4b49-b9ef-4371092d2407','kbonasera','katia.buonasera@mlib.ic.cnr.it','Italy','2015-11-19 22:12:10','2015-11-19 22:12:10',1),
  ('482b9670-8ff6-4952-ac06-99d805d2334c','gurrego','german.urrego@udea.edu.co','Colombia','2015-11-19 22:13:15','2015-11-19 22:13:15',1),
  ('56264d4e-95f4-4949-b066-e401a4ab5027','alencina','alencina@faa.unicen.edu.ar','Argentina','2015-11-19 22:14:10','2015-11-19 22:14:10',1),
  ('40c0a20c-a014-4fc5-b209-519cb453540d','arestrepo','arestre5@unal.edu.co','Colombia','2015-11-19 22:15:17','2019-04-02 21:45:53',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7f6fbfa7-b4b4-4070-93d1-554ba8b9809b','francis','francis.segoviac@gmail.com','Colombia','2015-12-01 21:31:35','2016-05-08 21:13:42',1),
  ('e3a5a2f0-e3b3-4049-880f-9e59420ee640','alexander','jhon_ramirez91081@elpoli.edu.co',NULL,'2015-12-03 16:53:08','2019-03-27 19:22:23',1),
  ('4a563298-b190-4faf-aa03-972a00d37342','gadavid','gdavid@admon.uniajc.edu.co',NULL,'2015-12-03 16:58:58','2016-02-25 17:57:25',1),
  ('4172c0b8-a638-4500-bf21-8c1b25a350a5','gmoreno','gamoreno@elpoli.edu.co','Colombia','2015-12-09 20:23:47','2018-11-20 15:30:28',1),
  ('1fc1e807-4ea1-45a9-8818-f3fc1d2675f6','wpuche','wspuche@elpoli.edu.co','Colombia','2015-12-09 20:31:03','2018-10-29 07:42:40',1),
  ('851b6754-c9d3-4bc0-a961-10e6c4a53b4d','jcesarct','julio.cuenca@unl.edu.ec','Ecuador','2015-12-10 16:25:51','2015-12-10 16:26:31',1),
  ('5b97c037-48c0-42d2-976a-bd024f876ab5','diana193','dianisgil193@hotmail.com','Colombia','2015-12-15 10:43:39','2016-08-08 16:39:06',1),
  ('acc792b6-1bfb-4192-94c0-5649daa48304','helena','helenacardenasc@gmail.com',NULL,'2015-12-16 12:31:09','2016-10-08 16:07:41',1),
  ('6192478a-4c52-40d1-a819-de02d30e9fc6','cadracon','daniel.ramos@udea.edu.co','Colombia','2016-01-10 11:31:39','2020-04-12 07:35:06',1),
  ('2cdcea1b-0569-4bc6-8952-0e43ab23f093','dmsalazars','dmsalazars@gmail.com','Colombia','2016-02-09 03:03:34','2016-02-17 16:49:11',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a768dcf3-6f1c-4402-808c-ab6376acf991','jajimen1','jovani.jimenez@gmail.com',NULL,'2016-02-17 16:22:29','2018-10-12 16:06:34',1),
  ('2d736ecb-ec8b-40fe-8d02-5745233bb391','jvva','fernando.hacar@jvvafire.com','Spain','2016-02-19 13:27:25','2016-03-03 12:34:41',1),
  ('ce2a62de-8987-48f4-aa07-25dbbfed51a9','fjmoreno','fjmoreno@unal.edu.co',NULL,'2016-02-22 16:01:35','2016-09-28 23:37:45',1),
  ('a73968a6-e35c-45e4-8c79-a128251b58da','rolandobarrera','rolando.barrera@udea.edu.co','Colombia','2016-03-01 14:53:05','2016-09-29 13:20:31',1),
  ('e7dc8ea8-40d3-45ce-8dea-d9c49cdca533','josealpa','josealpa@pascualbravo.edu.co','Colombia','2016-03-04 14:40:39','2023-02-17 12:15:45',1),
  ('40a5e7be-a08c-47de-943d-0f4879675fe8','alejandro','luis_rodriguez95152@elpoli.edu.co','Colombia','2016-03-09 00:02:41','2016-03-09 00:02:41',1),
  ('5abb4072-6799-4035-aaf5-9f364882692f','1037635918','jose_tobon95121@elpoli.edu.co',NULL,'2016-03-09 00:15:31','2016-03-09 00:15:31',1),
  ('3ba96135-1d3f-4cb7-a123-7d7c44267097','avillarreal','avillarreal@utna.edu.mx','Mexico','2016-03-09 03:52:52','2016-03-09 03:52:52',1),
  ('b14eeb63-75ec-42e3-b513-0527cba5c87b','esantamaria','edwinjsantamaria@uta.edu.ec','Ecuador','2016-03-09 17:24:57','2016-05-14 15:19:27',1),
  ('313e64ab-f0dc-4f8a-bf59-a690f0b25d71','lcardona25','lmaria.cardona@udea.edu.co','Colombia','2016-03-10 14:03:57','2016-03-17 03:49:26',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2927d820-5ca4-432c-8ad0-231ca11f6e6d','cindyvega','vega.cindy@fuac.edu.co','Colombia','2016-03-10 15:42:26','2016-10-24 20:27:54',1),
  ('c225a571-79ee-4ab8-9267-f4ad2d79d50e','hgarzons','hnando2001@gmail.com','Colombia','2016-03-12 05:42:15','2016-03-13 22:11:45',1),
  ('8d6581a5-01c7-4521-b0f1-ae90e93b9b55','gmuozreyes','tavoxpau@gmail.com',NULL,'2016-03-13 05:37:53','2016-03-13 05:38:28',1),
  ('9ad90d26-fb6a-43cc-991a-3365796de83c','taleroleo','leonardo.talero@gmail.com','Colombia','2016-03-13 23:03:58','2018-12-27 09:32:41',1),
  ('7786a57c-c271-4638-aa8e-461e823d2192','gustavo','gortizp@tecnocomfenalco.edu.co','Colombia','2016-03-15 14:48:41','2016-03-15 14:48:41',1),
  ('48fbacc8-4a3b-461f-a0f1-53d3dfa20031','jorgemaldonado','jmaldonadocucuta@hotmail.com','Colombia','2016-03-15 22:48:15','2022-10-18 08:21:49',1),
  ('1a2568d3-78a4-49a8-8628-b01eb092052e','jorgecock','jorge.cockra@amigo.edu.co','Colombia','2016-03-15 23:40:25','2016-03-15 23:40:25',1),
  ('cf984a64-6232-4db1-b8e0-c39450c3fc95','sebastian','sebastian_uribe86151@elpoli.edu.co',NULL,'2016-03-17 20:04:43','2016-03-17 20:04:43',1),
  ('776499dc-37b0-4d98-b069-522561c092a2','dnunez2','dnunez2@areandina.edu.co',NULL,'2016-03-18 17:29:43','2016-03-18 17:29:43',1),
  ('623cb703-2cbc-4c01-a49d-e969e1c0a571','aalfaro','aalfaro@uniguajira.edu.co','Colombia','2016-04-19 00:03:08','2016-04-19 00:03:09',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a5986f4c-3516-4f67-aca4-e726ca6e7ec8','williamgarciar','williamgarciariveros@gmail.com','Colombia','2016-04-19 22:57:33','2016-10-09 01:34:23',1),
  ('9acabf4f-0f5c-4be0-b435-e77a63bfa245','marcorico','marcorico63@hotmail.com','Venezuela','2016-04-20 21:41:47','2016-04-20 21:41:47',1),
  ('a96e89b8-2639-4888-8400-db05dfc46fb9','dayana','daya410@gmail.com',NULL,'2016-04-21 23:10:05','2016-04-21 23:10:05',1),
  ('0319a707-0647-47bb-a6dd-a3b757ab9bcb','julianaosoriomejia1','juliana_osorio95101@elpoli.edu.co',NULL,'2016-04-24 18:12:48','2016-04-24 18:12:48',1),
  ('b53eed4b-8460-4f9a-ba9f-caa48d9e337b','jessicaflorez-130','jeka-130@hotmail.com','Colombia','2016-05-01 18:55:37','2016-05-27 15:19:23',1),
  ('a4bc973d-2810-431a-b9d6-67090813e8a9','yoanmartinez','yoan.martinez@reduc.edu.cu','Cuba','2016-05-03 18:56:54','2018-09-20 08:21:31',1),
  ('66598189-946b-413e-af25-bc456dbab6af','droldans','danirol.roldansalazar5@gmail.com',NULL,'2016-05-15 18:06:09','2016-05-15 18:06:09',1),
  ('52ee8fbe-96fb-4dad-8af1-aaecdc6fe64a','jorge_d108','dettjora@unam.mx','Mexico','2016-05-18 03:18:19','2016-05-18 03:18:19',1),
  ('89b308eb-8295-49b6-a0b3-e304ce025498','santamariaedwin','esantamariafre@hotmail.com','Ecuador','2016-05-19 02:21:16','2016-05-19 02:21:16',1),
  ('f84d5f6f-367f-4977-87c5-7e67d78a4c28','alarias','alarias@utp.edu.co',NULL,'2016-05-22 18:34:14','2016-05-22 18:34:14',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('728c6315-7e44-412d-9d22-b099e418b01b','diegogo','diegogo@utp.edu.co',NULL,'2016-05-22 19:53:19','2016-05-22 19:53:19',1),
  ('caa594e1-c776-4cc8-a2d3-4c610ee837a5','nelson','nelsoncley@hotmail.com','Ecuador','2016-06-13 18:20:54','2016-06-13 18:20:54',1),
  ('1099394c-32bd-4828-8a7c-bb4e79b5f713','guillermovalencia1984','guillermoevalencia@mail.uniatlantico.edu.co',NULL,'2016-06-15 16:50:02','2016-06-15 16:50:03',1),
  ('e354489e-d7a3-4469-a2d7-f5a3f75d42f4','paoarias04','yurita.arias@gmail.com',NULL,'2016-07-06 21:51:07','2016-07-06 21:51:09',1),
  ('e11566cc-b04e-4c42-8a25-b0f7f824db1f','gevs','gabriela_velasquez_suarez@hotmail.com',NULL,'2016-07-08 05:51:34','2016-07-08 05:51:59',1),
  ('2f778353-4170-443a-b2e5-fdaa40822bb9','sharis_3','sharis_3@yahoo.com','Colombia','2016-07-12 14:31:31','2016-07-12 14:34:42',1),
  ('35d9a3d1-8036-449c-93d2-2c2a83af31c5','luna2013','mariateresa.florez@gmail.com','Colombia','2016-07-13 16:01:09','2016-07-13 16:01:09',1),
  ('65ab63bd-933e-419c-95bc-dd8738738c94','lquintero34','lquintero34@areandina.edu.co',NULL,'2016-07-14 16:52:00','2016-07-14 16:52:00',1),
  ('e05e0510-9ada-40a9-aa00-1013d94e6a64','lsolaque','leonardo.solaque@unimilitar.edu.co',NULL,'2016-07-18 11:34:52','2018-11-15 06:50:17',1),
  ('b436c401-580b-49ba-a38c-45f3adfba1a5','jose_cortesnu','jose_cortesnu@cun.edu.co','Colombia','2016-07-18 16:25:20','2022-10-05 07:21:35',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('10d5e54d-d7a8-4e71-acc1-7ba3b34eac80','hicastano','hicastano@elpoli.edu.co','Colombia','2016-07-18 21:27:29','2020-01-31 09:11:52',1),
  ('0bf4d76d-9929-459b-abcd-f422a793596a','cmarcela','cmd.nutricionaltraining@gmail.com','Colombia','2016-07-18 23:26:09','2016-07-18 23:26:10',1),
  ('d3cdbd0d-4d78-4016-84ca-7bd41f0912cd','jcorrea77','jcorrea77@gmail.com','Colombia','2016-07-19 14:15:44','2016-07-19 14:15:44',1),
  ('e3776ba2-78b9-40db-b353-4ee7a2ff70f8','flora','florasancho@hotmail.com','Ecuador','2016-07-23 22:35:29','2016-07-23 22:35:29',1),
  ('65d55cbb-f68f-4c3c-b3c2-584e9c8f3ae4','adpolimojsjic14','felipe.gomez3@gmail.com',NULL,'2016-07-24 15:26:30','2016-09-08 21:51:43',1),
  ('67f3c97c-51df-408c-be22-24ff03974e37','sergiop','sergiop@fcf.uh.cu','Cuba','2016-07-27 04:22:32','2016-07-27 04:22:32',1),
  ('ed50c58a-4ae1-418c-a066-1289a67058df','inescecilia2016','ceciliapulgarin@gmail.com','Colombia','2016-07-29 04:35:45','2016-07-29 04:35:45',1),
  ('486c1070-9a5b-4141-b63b-8186b7caf329','catalina438','diana.rodriguez@udea.edu.co',NULL,'2016-07-29 12:17:49','2018-10-09 20:22:51',1),
  ('46945194-d175-4a30-b53e-9aa381a18d3a','adriamec','adriamec@utp.edu.co','Colombia','2016-08-01 20:59:35','2016-08-01 20:59:35',1),
  ('aea7a4bc-31e5-444a-96ce-384db4141705','ateresacu','ateresacu@yahoo.es','Cuba','2016-08-02 10:22:12','2016-08-02 10:22:12',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2ea5c848-f673-43b1-ae72-b6f1e9b754c9','76308779','jesus.pulido@campusucc.edu.co','Colombia','2016-08-03 21:40:12','2016-08-16 14:34:27',1),
  ('2f709641-be27-4daa-a0c6-914699c7c6bb','frankey999','codigorojo@misena.edu.co','Colombia','2016-08-09 17:48:23','2016-08-10 22:19:24',1),
  ('9874b28b-59a7-43ca-9f09-defaebda5c0e','franciscoalvarado','lilola_7@hotmail.com',NULL,'2016-08-11 20:25:22','2016-08-11 20:25:22',1),
  ('10813ebc-b36b-4fed-89c9-ae3ecdef9fec','jgc','investigacion_comunicacion@elpoli.edu.co',NULL,'2016-08-17 02:48:45','2016-08-17 02:48:45',0),
  ('f3b6b3fe-f117-4883-ae58-81f774481abe','galindo','arewara@yahoo.com',NULL,'2016-08-17 02:59:59','2016-08-17 02:59:59',0),
  ('5f38d352-1897-4114-8bc8-1eca17291835','cfernndez','cfernand@uji.es',NULL,'2016-08-17 03:03:38','2016-08-17 03:03:38',1),
  ('779b0834-6ce9-4926-b002-293b56ae7d3c','acanelns','acanelon@gmail.com',NULL,'2016-08-17 03:36:17','2016-08-17 03:36:17',1),
  ('d3d2e5a4-855c-473f-a4b9-7e9a6564fdf9','abarralesmartnez','alfredo.barrales@gmail.com','Mexico','2016-08-17 03:40:58','2024-09-12 21:03:07',1),
  ('f3ec1a40-d923-467a-8f8e-a6e83f6f15ac','ejailliercastrilln','erika.jaillier@upb.edu.co',NULL,'2016-08-17 03:44:12','2024-09-19 14:58:21',1),
  ('cbe94ead-9e70-4f08-80c1-fa84356cd405','carangolopera','carlos.arango0791@uco.net.co',NULL,'2016-08-17 03:47:49','2016-08-17 03:47:49',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b4b2b1bf-6ac2-4987-bd8d-296ec0ebe942','eruizmarn','elruiz@elpoli.edu.co',NULL,'2016-08-17 03:49:38','2016-08-17 03:49:38',1),
  ('6cdcaf11-2543-43c3-9c26-94c6db2290dd','gvelsquezgarca','gvelasquez@elpoli.edu.co',NULL,'2016-08-17 03:50:29','2022-11-18 17:01:01',1),
  ('f3282124-6ef3-4227-95f0-c38eb510f917','aburns','afburns@ufl.edu',NULL,'2016-08-17 03:56:36','2016-08-17 03:56:36',1),
  ('3e239104-bfa6-4fd0-8fa6-faac9b3da216','jrestrepomoreno','jochejoche2@gmail.com',NULL,'2016-08-17 03:57:36','2023-04-27 14:44:07',1),
  ('8dc893fd-1aff-4c99-8ced-db1637f372fc','sflrezromn','santiagof.roman@gmail.com',NULL,'2016-08-17 04:06:44','2016-08-17 04:06:44',1),
  ('7eea825f-dac3-4d3d-8284-be4f136ad8ee','eruizbetancur','koppox@gmail.com',NULL,'2016-08-17 04:09:58','2016-08-17 04:09:58',1),
  ('538a294b-00e3-49f3-a44a-c47630e4e4d7','mgutirrez','mariagtz@gmail.com',NULL,'2016-08-17 04:13:47','2016-08-17 04:13:47',1),
  ('f9c38d64-8c8e-4d56-9ec9-a8245e6d015c','jruedalvarez','ruedaalvarezjuliana@gmail.com',NULL,'2016-08-17 04:14:50','2016-08-17 04:14:50',1),
  ('d7194a76-9dba-4a64-864c-6866ad5777b0','njacobson','nicole.jacobson@3jakeconsulting.com',NULL,'2016-08-17 04:16:05','2016-08-17 04:16:05',1),
  ('6ae1bd8f-4edd-4b16-ae3c-d32a8ba56ae5','jorgeh','jorge.contreras@unipaz.edu.co','Colombia','2016-08-17 13:15:13','2016-08-17 13:15:13',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3fcf8cf2-39da-41ad-b2ca-ab8ed2fb6751','ccampillo','concepcion.campillo@ua.es','Spain','2016-08-19 15:17:16','2016-08-19 15:17:16',1),
  ('63302c6a-5f76-4bcc-afb5-6b3eb64bf198','bvelsquez','beatrizvelasquez@camaramedellin.com.co',NULL,'2016-08-19 15:20:54','2016-08-19 15:20:54',1),
  ('e4c482a7-6234-43e0-9253-4d2b91d36564','dbarreneche','dbarreneche@elpoli.edu.co','Colombia','2016-08-19 15:22:21','2016-08-19 15:22:21',1),
  ('822cf68a-54f6-4bc6-9f16-bbc81b7bd47c','jgmez','jcgomez@elpoli.edu.co','Colombia','2016-08-19 15:23:29','2016-08-19 15:23:29',1),
  ('583bf3dc-62a6-4252-8442-8ebe78154a0b','jricaurte','asencultura@une.net.co',NULL,'2016-08-19 15:26:40','2016-08-19 15:26:40',1),
  ('0565589a-d94a-4e91-9ac0-8cdc773916c9','szapataaguirre','sazagui17@gmail.com',NULL,'2016-08-19 15:28:02','2016-08-19 15:28:02',1),
  ('9a8edcc7-19b1-4940-b1bb-440a4157a389','ebernadmonferrer','bernad@uji.es','Spain','2016-08-19 15:37:33','2016-08-19 15:37:33',1),
  ('550bb249-f338-4b87-8b65-86784cc153f5','jbrida','juangabriel.brida@unibz.it',NULL,'2016-08-19 15:40:06','2016-08-19 15:40:06',1),
  ('edfa9309-0eb5-4b98-9756-7781401ad533','jlondoo','juangui273@hotmail.com',NULL,'2016-08-19 15:51:32','2016-08-19 15:51:32',1),
  ('80ae22c0-7714-41b3-93bc-6cc105711679','sumitmodi','advidscontact1@gmail.com',NULL,'2016-08-25 09:46:14','2016-08-27 10:40:42',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8c24c457-ac6e-4476-849a-7f23c8ca4ec3','mariacruiz','mariacruiz@unillanos.edu.co','Colombia','2016-08-31 13:38:19','2016-10-13 15:02:15',1),
  ('ed19eb53-d8b6-4503-be26-a99af8b407e1','p0lux','antinovato@hotmail.com','Argentina','2016-08-31 23:15:58','2016-10-09 19:46:51',1),
  ('5f64881a-ce6a-4648-baad-1e578bc73d61','fjcastri','franciscastrillon@gmail.com','Colombia','2016-09-02 18:56:03','2016-09-02 18:56:04',1),
  ('8a0604ed-8611-4455-a149-2cd04619330c','andres0707','u2302718@unimilitar.edu.co',NULL,'2016-09-05 14:57:47','2016-09-05 14:57:47',1),
  ('42eaa999-4943-4ec5-906c-49ce2df3e354','clopezgon','clopezgon@unal.edu.co','Colombia','2016-09-05 15:40:57','2016-09-05 15:40:57',1),
  ('d7001cbc-0f02-4d92-8a75-598144a998a5','87060271508','alexander.estrada@rodando.com.co',NULL,'2016-09-05 17:27:03','2016-09-05 17:27:04',1),
  ('5f9c6f66-3dd1-4503-a6fa-b7fbd845a14a','fjramireg','fjramireg@unal.edu.co','Colombia','2016-09-05 17:49:33','2017-09-11 15:30:14',1),
  ('1754960c-3bd1-45d8-b5ec-32416e277592','robin','robbincabezaruiz@gmail.com','Cuba','2016-09-09 02:59:40','2016-09-09 02:59:40',1),
  ('b26c8128-74d8-4fd3-8939-14c03ac38484','alepanozzo','panozzo.a@gmail.com','Argentina','2016-09-11 13:31:54','2016-09-11 13:31:55',1),
  ('5d5ae8af-36c5-4f52-a4dd-5f85427d2bf9','mvegasea','marcosvegase5917@gmail.com','Colombia','2016-09-14 22:35:55','2016-09-14 22:35:55',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('32ee1953-2b67-49fa-bcee-302ab045e73b','clpezposada','taurusorquesta@hotmail.com',NULL,'2016-09-14 22:57:53','2016-09-14 22:57:53',1),
  ('7378dc32-f72b-41b1-a49b-51e210501760','jparraorozco','juandavidlire@yahoo.com.ar',NULL,'2016-09-14 23:07:26','2023-09-12 16:31:10',1),
  ('a989579b-42ba-47df-9461-d372ac2c7a54','jorge5872','gaviria-1991@hotmail.com',NULL,'2016-09-15 15:50:51','2016-09-15 15:50:51',1),
  ('67183179-da21-49a1-80c2-da666db191eb','lbvillalobos','lbvillalobosb@yahoo.com','Venezuela','2016-09-19 15:32:11','2016-09-19 15:32:12',1),
  ('51bd2975-7b70-4dbd-bd6f-393f0a0a9ef4','dbernalacevedo','dianabernala@gmail.com','Colombia','2016-09-20 17:07:19','2016-09-20 17:07:19',1),
  ('baad158b-f126-4c65-8101-12a93c948ed6','oyela','yelaotto@gmail.com',NULL,'2016-09-20 17:37:41','2024-09-21 00:57:50',1),
  ('d2d8ef87-46f3-46d0-ab38-d9c952b10208','jgonzlezdominguez','jfgonzalezd@gmail.com',NULL,'2016-09-20 17:52:30','2023-12-15 12:55:52',1),
  ('90e0d341-2dee-4628-961b-0df4986a0186','ylpezlara','yolandalopezlara_uanl@hotmail.com','Mexico','2016-09-21 21:21:27','2023-03-27 18:21:06',1),
  ('36649779-736a-4aea-9a30-da49adb0ee4d','oscarcuesta','oscarjuliancuesta@gmail.com','Colombia','2016-09-21 21:54:19','2019-03-06 14:02:55',1),
  ('b44330e3-6495-45bd-9d0a-0f7cd9173a00','lguerra73','lguerra73@yahoo.com','Venezuela','2016-09-22 18:27:25','2023-09-13 01:07:35',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d2833060-57c9-427c-b881-b606adead78a','francklinr','frivas6@gmail.com','Venezuela','2016-09-26 22:27:19','2016-09-26 22:27:19',1),
  ('a140490c-29c6-4cbd-92be-45afd9c85e6b','claudiasaa','claudia.saavedra@uptc.edu.co',NULL,'2016-10-04 12:34:22','2017-07-23 09:04:03',1),
  ('a782eb3e-a2ff-46bc-8e99-9852ea1bad15','galotero','galotero@gmail.com','Colombia','2016-10-04 15:31:35','2016-10-04 15:53:00',1),
  ('d975ad57-6022-4a5d-ab12-d6ebf4b51753','flordeliz19','flordelizp@hotmail.com','Mexico','2016-10-04 20:42:06','2018-01-30 13:23:12',1),
  ('5c15b06e-5b4b-48d8-bca5-333b6bdbd902','amurillo','amurillo@colomboworld.com',NULL,'2016-10-04 20:48:23','2016-10-04 20:48:23',1),
  ('52560ad9-79c2-459d-b010-1f68cad30e69','gbustamante','gloriabustamante@elpoli.edu.co','Colombia','2016-10-04 20:51:50','2023-09-02 22:47:22',1),
  ('e4b04cb9-9e46-4f25-839f-f46d2d5847ef','csurezquiceno','carlos.suarezqu@amigo.edu.co','Colombia','2016-10-04 20:56:19','2016-10-04 20:56:19',1),
  ('8ded75a1-68b1-4d37-84a6-81734bb50792','nmesagranda','nubia.mesagr@amigo.edu.co',NULL,'2016-10-10 21:31:10','2016-10-10 21:31:10',1),
  ('c0fddca8-049f-4bd2-9d21-6db5d499f0ea','linadiaz','linadiaz@elpoli.edu.co',NULL,'2016-10-12 17:18:21','2016-10-12 17:18:22',1),
  ('8721ecc5-6f1e-49d3-b2c5-e83bc724269e','jescobarmartnez','jfescobar@elpoli.edu.co',NULL,'2016-10-13 23:33:57','2016-10-13 23:33:57',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('bc9f5981-a6b9-4f56-808c-ab4453de3a79','jparratoro','jcparra@elpoli.edu.co',NULL,'2016-10-13 23:36:11','2017-12-18 09:58:53',1),
  ('6dd29484-63d4-42ce-8bd4-c857e765f443','jvlez','javelez@elpoli.edu.co',NULL,'2016-10-13 23:44:36','2016-10-13 23:44:36',1),
  ('79347cdc-87d5-4ce4-bf9e-73aea5ab7b07','mvillarubio','fermin@gmail.com',NULL,'2016-10-13 23:48:31','2016-10-13 23:48:31',1),
  ('ffec2877-82ef-4ecc-b380-b839a0fde032','acabrerolobato','acabrerolobato@gmail.com',NULL,'2016-10-13 23:51:53','2016-10-13 23:51:53',1),
  ('e70d1ba6-7bc5-408e-b805-a913e936869d','amndezortiz','anaisa@gmail.com',NULL,'2016-10-13 23:54:05','2016-10-13 23:54:05',1),
  ('376dec55-56cf-4f68-b049-37c11e89dff6','mquirozvelasco','tquiroz@ulima.edu.pe',NULL,'2016-10-14 00:07:01','2023-12-20 17:33:04',1),
  ('5e68864c-715b-4de0-8b70-03fa9293dc99','ldeltellescolar','ldeltell@ccinf.ucm.es',NULL,'2016-10-14 00:09:52','2024-08-30 04:36:34',1),
  ('3a3a14ec-67a0-4c34-bd6d-abdbc8103b0f','mpadilladelatorre','mpadilla@correo.uaa.mx',NULL,'2016-10-14 00:12:50','2016-10-14 00:12:50',1),
  ('0f707251-7b3d-4f9d-845d-ffbe8634e471','nbarredatorres','enrique@gmail.com',NULL,'2016-10-14 00:22:30','2016-10-14 00:22:30',1),
  ('5cef0e57-9f12-43d7-b746-ad72e223a6ed','paz','aepaezmoreno@gmail.com',NULL,'2016-10-14 21:22:21','2023-12-27 15:40:36',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f0007f2a-8b8e-4328-9194-228557e3076a','agmezmelo','alberto.gomezm@gmail.com',NULL,'2016-10-14 21:34:54','2016-10-14 21:34:54',1),
  ('572cd2ee-be8d-4d7d-838c-9584d6d7b8fd','vannessa7','vanneurrego@hotmail.com',NULL,'2016-10-16 21:47:34','2016-10-16 21:47:34',1),
  ('d288f3f2-f978-4e2a-abc8-4a4c284294ac','cesar8k','cesar8k@gmail.com',NULL,'2016-10-18 20:47:10','2016-10-18 20:47:10',1),
  ('90bbc886-28f8-4c84-8e98-10629a4b5d52','cseveriche_23','cseveriches@gmail.com','Colombia','2016-10-21 20:54:19','2018-11-16 16:28:05',1),
  ('0b32a5c1-0a54-4044-aa70-a4886dc2314f','jvilahernndez','avila@gmail.com',NULL,'2016-10-24 20:24:55','2016-10-24 20:24:55',1),
  ('b082b6a5-e840-4336-acb3-57cb273abcfc','mancing','mancing@yahoo.com',NULL,'2017-04-24 23:23:03','2017-04-24 23:23:04',1),
  ('85356158-59c2-44db-a013-b32d33ab544e','aranzolin','aranzolin@gmail.com','Venezuela','2017-04-26 00:56:33','2020-02-13 20:14:21',1),
  ('9037d3d9-f141-46fd-94f8-62e609924400','ypeapoveda','yamile.pena@usco.edu.co','Colombia','2017-04-26 16:07:56','2017-04-26 16:07:56',1),
  ('8cbaf95a-7a62-4633-be35-26ab6cbf5fdc','lgmez','lialaig@gmail.com','Argentina','2017-04-26 16:10:30','2023-03-27 08:44:31',1),
  ('74b7f8f3-1128-44a1-9f03-285f63febe29','maguirrelora','mariaestheraguirre@gmail.com',NULL,'2017-04-26 16:12:50','2023-03-25 14:02:35',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a31a3e8c-48d3-41c5-8bd7-6a481100f7c5','jlondoobastidas','juanpablo1bastidas@gmail.com',NULL,'2017-04-26 16:15:00','2017-04-26 16:15:00',1),
  ('6c4be88c-e0b6-4be2-883d-090c152419fc','smadrigal','madrigal.moreno@gmail.com','Mexico','2017-04-26 16:45:22','2017-06-09 01:14:44',1),
  ('969cdd87-b31b-4e61-889a-61b558d10928','olizrragamorales','omar_lizarraga@uas.edu.mx',NULL,'2017-04-26 17:16:14','2024-01-08 12:36:40',1),
  ('1384e44e-ab9d-42d3-92de-ae3239d3fa41','slpezvaldez','salova@hotmail.com',NULL,'2017-04-26 17:21:28','2017-04-26 17:21:28',0),
  ('1510f238-06aa-45f4-852a-3b9a770bd0ca','georgina','ginasotelo@hotmail.com','Mexico','2017-04-26 20:28:10','2017-04-26 20:28:11',1),
  ('a331ad62-6d72-4467-92ec-32079c2db2b9','ygg','gallegos.yazmin2013@gmail.com',NULL,'2017-04-27 07:28:47','2017-04-27 07:28:48',1),
  ('82a580b0-d772-4b9c-b52a-be13fa393a39','gvaldez','gilberto.valdez.rivera@gmail.com',NULL,'2017-05-02 17:46:26','2017-05-02 17:46:28',1),
  ('12e81925-7f93-4f51-83d0-6c14fb4e4dae','pablor323','pabloroncancior@gmail.com','Colombia','2017-05-03 00:09:03','2018-02-02 09:00:32',1),
  ('11a89f0e-3994-4c1e-9f59-672f5b215f4d','asdsdsd','emonceriaa@gmail.com',NULL,'2017-05-07 05:47:51','2017-05-07 05:47:52',1),
  ('3f50f1b1-dafe-42d9-ac1f-c91fc3a21b28','mnnm','dimas.tgb@gmail.com',NULL,'2017-05-07 05:54:06','2017-05-07 05:54:06',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4e89675d-db4e-4873-b60e-64acbdd8a5b6','jairo','jjpalacios@unicolmayor.edu.co','Colombia','2017-05-15 21:08:35','2018-07-09 22:52:00',1),
  ('dcf2829b-d53c-40ce-9294-46c78c9f18d8','elssymoreno','elssymor@gmail.com','Colombia','2017-05-16 15:57:18','2018-02-14 09:31:17',1),
  ('5370fef8-74c5-4246-96a1-2161dd23c2de','marcela1294','marcela-osorio94@hotmail.com','Colombia','2017-05-16 21:08:07','2017-05-16 21:08:08',1),
  ('9880d2c7-5ded-4e04-9dd6-40bdf4dca878','blanca_bernal','blancab@uabc.edu.mx','Mexico','2017-05-23 19:39:45','2018-12-19 21:33:05',1),
  ('a107282b-eecb-43ce-a4ba-57e1c04f561a','sacosta809','siacosta@elpoli.edu.co',NULL,'2017-06-06 02:50:23','2017-06-06 02:50:25',1),
  ('ff6e67ea-0fd7-470a-b22e-58b4aa868887','xaveroz','ranggerpwoer078@gmail.com',NULL,'2017-06-08 07:12:03','2017-06-08 07:12:05',1),
  ('5d5b0642-9f81-434e-a827-5e01aa216bfe','eaeaea1','ebong123@gmail.com',NULL,'2017-06-13 04:34:25','2017-06-13 04:34:26',1),
  ('051249e2-9dc0-4904-b6b4-9263a336449b','jjherrerao','joseherrera99@hotmail.com',NULL,'2017-06-20 12:30:28','2017-06-20 12:30:30',1),
  ('a4a335a8-e4ec-4cbf-b4ca-374cb5159325','icaro164','icaro164@yahoo.com.mx','Mexico','2017-06-20 14:21:36','2018-03-13 20:12:13',1),
  ('008b42cc-3a03-444c-b56e-1954bbc67770','ylonka','ylonka.tilleria@uasb.edu.ec','Ecuador','2017-06-21 09:28:33','2017-06-21 09:28:36',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('270be000-80f2-41f5-82d7-32aff7c0c4ef','30n1c4_r0dr1gue3','mrodriguez@unillanos.edu.co','Colombia','2017-06-21 16:04:15','2017-06-22 14:04:59',1),
  ('51c9b6ce-782f-4c3f-be14-43eed46283dc','ragohe','ragohe2009@gmail.com',NULL,'2017-06-22 11:06:29','2017-06-22 11:06:30',1),
  ('e8e1e664-6f4c-4813-be4e-fe244cf75ecc','linamontoyasu','linamontoyasu@hotmail.com','Colombia','2017-06-22 16:53:14','2019-02-13 17:06:36',1),
  ('f0dd42df-c66e-41cc-a288-7420a2aac4f8','ragarcial','ragarcial@ufpso.edu.co','Colombia','2017-06-22 17:38:35','2019-05-17 10:35:58',1),
  ('64a3c710-96f2-4630-92e3-99ed841ca658','rcano','ruth.cano@correounivalle.edu.co','Colombia','2017-06-23 12:00:25','2018-08-08 15:45:49',1),
  ('fa9f8e64-3380-412f-9075-94d328c4fba3','jfochoa','jfochoa@elpoli.edu.co','Colombia','2017-06-26 11:49:52','2017-06-26 11:49:54',1),
  ('267d7bf6-8715-4cd2-ac3d-89cbf3e27815','lizponton10','lponton@estudiantes.areandina.edu.co','Colombia','2017-06-27 15:49:38','2017-07-11 14:57:08',1),
  ('2b351d57-6ecc-4bf4-9c60-8874f3211c4c','vertedor','vertedor.78@gmail.com','Spain','2017-06-28 02:39:55','2017-07-06 11:44:37',1),
  ('b44b3645-258c-411c-a4f0-95659feb489f','adriana','adrianavillafane0@gmail.com','Colombia','2017-06-28 12:06:58','2017-06-28 12:06:59',1),
  ('503d46f4-15f8-48c5-9b2f-a2250dba2d41','emilhernandez','emil.hernandez@upb.edu.co','Colombia','2017-06-29 09:12:01','2017-12-02 21:34:40',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('517714c3-d79a-40cf-a8c0-093622992bf3','lianavidigal','lividigal@uol.com.br','Brazil','2017-06-30 08:44:09','2017-06-30 08:44:10',1),
  ('40c37431-8197-49dd-ac15-0d0a80e8af02','carlosd','cdoria@uniguajira.edu.co','Colombia','2017-06-30 09:19:26','2019-02-05 09:42:26',1),
  ('1bd9e33c-3962-4063-ad5d-cd4ba4d873ac','rjgallardo','rjgallardoa@ufpso.edu.co','Colombia','2017-07-01 07:15:30','2017-07-01 07:15:31',1),
  ('e4dd7d55-e355-4a1c-8156-14432822fda8','ginna06','ginna.jimenez@uptc.edu.co',NULL,'2017-07-04 10:30:02','2021-04-17 07:58:43',1),
  ('51fb3d1f-bede-4e1c-b405-3ccd6199a73a','karolaim16','kagutierrez@utp.edu.co',NULL,'2017-07-04 11:51:16','2019-10-20 16:35:01',1),
  ('5d92b534-72b1-4648-a87e-f494a7ad29db','isabel10','isabel.perez@tecnar.edu.co','Colombia','2017-07-05 10:50:08','2018-04-02 17:06:13',1),
  ('1ca91c4d-865f-4522-8542-21dc2c3eeec3','jancok123','single.woles1234@gmail.com',NULL,'2017-07-06 02:02:57','2017-07-06 02:02:57',1),
  ('43075156-950c-47b6-9bfb-2f5fa45213c1','carlos23','carlos-sv2011@hotmail.com','El Salvador','2017-07-10 20:11:03','2017-07-10 20:11:05',1),
  ('80443e03-ba57-4f6e-8f7b-9633d1de54df','japalaciosc','janys_pal@hotmail.com',NULL,'2017-07-13 14:25:27','2017-08-02 19:29:18',1),
  ('94432167-c892-4291-81e2-82e124e8b0c5','lilianaorjuela','jlorjuela@uniboyaca.edu.co','Colombia','2017-07-13 14:26:39','2017-07-13 14:26:40',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8acb2f31-e0e5-4fe6-a0c7-2d4baebdb80c','lilyanajr','ljaramillo@elpoli.edu.co','Colombia','2017-07-14 14:31:29','2018-10-18 10:14:37',1),
  ('2767471d-af1c-4e36-9073-4883ee4301a7','yusef','yusef89rp@hotmail.com','Mexico','2017-07-14 16:16:50','2017-07-14 16:16:51',1),
  ('1570b9ad-e6c2-427e-9e73-dfef5c6fc8d0','marienpava','marienpava@gmail.com','Colombia','2017-07-15 20:41:47','2018-11-23 12:41:36',1),
  ('12737bf6-be05-417c-a9a5-71351443427c','nidia_gualdron','nrgualdronc@libertadores.edu.co','Colombia','2017-07-18 17:28:11','2018-01-31 15:15:47',1),
  ('241da621-44b5-4b22-8e36-34fe312422ba','marcemyl','jennycardona@unipanamericana.edu.co','Colombia','2017-07-19 11:43:39','2017-11-08 09:05:39',1),
  ('dca642e0-0d44-4cb6-a233-b1230377547f','melissauribe','melissa.uribe1@udea.edu.co','Colombia','2017-07-19 20:48:09','2019-07-11 06:33:45',1),
  ('1b24cbed-6358-42ba-a506-522ebdc0538b','luzacevedo33','victoria.acevedo@udea.edu.co',NULL,'2017-07-22 08:25:48','2017-07-26 13:15:47',1),
  ('a8381ad2-dfa6-45e5-88a8-dcad6873ec36','cristinlopezgon','cristina.lopezg@udea.edu.co','Colombia','2017-07-22 22:15:48','2017-07-23 11:49:17',1),
  ('3f9f29e1-e7c3-4d99-abd1-787f9942049f','silvanab','silvana.bolanos@udea.edu.co','Colombia','2017-07-26 10:52:15','2018-08-28 16:25:00',1),
  ('eec3b989-91ff-4024-bce6-e2c98493de19','hcastro','hectorvalerio9@gmail.com','Colombia','2017-07-26 17:06:57','2017-07-26 17:06:58',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('9a68fed0-762a-4b40-9a92-9b99480b6c39','eduarmar46','ejmm_gp@hotmail.com','Colombia','2017-07-28 15:24:14','2017-07-28 15:24:15',1),
  ('f44db295-0417-441f-9492-70496afc479b','miller','millerruales@hotmail.com','Colombia','2017-07-28 15:29:06','2022-02-21 21:54:21',1),
  ('04893781-9651-49df-ba34-9d8b641c07b8','fbolanosm','fbolanosm@unal.edu.co','Colombia','2017-07-28 16:45:26','2020-01-16 11:33:35',1),
  ('ac93e091-f61e-4bbc-ac4b-82434a0b3ebb','lfgonzaleza','lfgonzaleza@elpoli.edu.co','Colombia','2017-07-31 11:32:22','2018-04-03 14:47:53',1),
  ('ce1b89e5-3b2d-41d9-98b0-d2f2f3d864e2','laurarodas','lauraisabelrodas@gmail.com','Colombia','2017-08-02 17:57:00','2018-07-05 00:05:53',1),
  ('14a3b1ae-0bcb-4ff4-a32e-7ffbda62ba62','rocisego','ersegovia@usbcali.edu.co','Colombia','2017-08-03 09:36:26','2017-08-03 09:36:27',1),
  ('57e7252e-1ae8-4d19-993c-381b7b97e277','bdj-007','sdasd@gmail.com','Afghanistan','2017-08-03 12:07:30','2017-08-03 12:07:32',1),
  ('73a56bb1-30b4-4b8a-bacc-468b3193daf3','jorgesantafe','jorgelealsantafe@gmail.com','Colombia','2017-08-03 12:11:40','2017-08-13 17:55:04',1),
  ('c388717a-b865-4c67-aad6-5d52c0000377','byronm','byronmedina@ufps.edu.co',NULL,'2017-08-04 17:52:48','2017-08-26 11:21:31',1),
  ('99190f77-dccd-470a-aa16-19a14aa8b925','andresmatallana','d5200995@unimilitar.edu.co','Colombia','2017-08-08 09:51:43','2019-01-11 10:59:53',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('cffbd5a8-b590-4db3-aa4c-9a7321b613f5','franciavalencia','francia.valencia@udea.edu.co','Colombia','2017-08-08 11:46:10','2018-04-09 19:43:16',1),
  ('8b7ac290-8d9a-49b9-8252-977251fa3ef5','adminos','gov@gov.gov',NULL,'2017-08-12 14:49:04','2020-06-04 03:45:41',1),
  ('6fc1f138-d185-44a7-a61c-b0f4c32cdb61','imvega','imvega@unal.edu.co','Colombia','2017-08-14 09:23:13','2019-07-24 18:13:45',1),
  ('71372389-edaf-4a25-aa76-7ea7303ac28a','percy1984','percy-alvarez@hotmail.com','Chile','2017-08-14 13:38:27','2017-09-27 14:12:44',1),
  ('c3d36daf-3b26-44ec-bc27-0921edd5580d','johnjacama','johnjacama@misena.edu.co',NULL,'2017-08-14 14:46:53','2018-02-06 13:33:01',1),
  ('8eb99cf5-4103-4371-9fb6-7e2bff86e6a4','juanorrego','juanorrego@mail.uniatlantico.edu.co','Colombia','2017-08-14 22:49:11','2018-08-23 22:53:35',1),
  ('6740dc57-8fff-45e6-a8dc-c12835deb661','mc','sungkanrawuh@gmail.com',NULL,'2017-08-15 03:08:59','2017-08-15 03:08:59',1),
  ('0525a88d-aa3f-49bc-9e1e-19bb48124750','ruthreyes','ing.ruthreyes@gmail.com','Colombia','2017-08-15 08:55:09','2017-08-15 08:55:10',1),
  ('59e577cb-52fb-434f-bbda-a48e0880c680','djimenezr','djimenezr@unal.edu.co',NULL,'2017-08-15 19:37:03','2018-12-18 16:36:39',1),
  ('51821da2-19e1-48e9-a029-2247d8e89771','saraobandoarango','saraobandoarango@gmail.com','Colombia','2017-08-16 07:16:27','2019-10-13 14:39:15',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('996ef8a4-c5fa-44ca-bdef-fa2b19d89aaa','vane_bg','rubby.ballesteros@uptc.edu.co',NULL,'2017-08-16 18:05:17','2019-11-26 11:42:37',1),
  ('0bdda474-eb27-4e82-a4fd-74aef6fa5c32','danielm31','demedina@jdc.edu.co','Colombia','2017-08-16 19:16:26','2018-06-12 14:24:46',1),
  ('565fb1ad-afd5-473b-b766-410bc9bcc820','jennifer','laturca11@gmail.com','Venezuela','2017-08-17 16:16:29','2017-08-17 16:16:30',1),
  ('1ae8eb72-fe6d-4fed-ab3c-3599e64aded0','romulo_gallego','ragallego@unicolmayor.edu.co','Colombia','2017-08-18 11:18:16','2025-10-04 17:58:33',1),
  ('f0c08060-21e4-45c9-a61e-a23e28c7961b','evalera','eduardomvalera@gmail.com','Colombia','2017-08-21 10:34:31','2017-08-25 10:52:41',1),
  ('5e87328b-e0ce-4358-99da-a91d356e8c41','matain','a7xsurabaya4@gmail.com',NULL,'2017-08-24 03:03:08','2017-08-24 03:03:09',1),
  ('7afb1f04-85d4-4421-aaf5-2706a16ef367','mckinrold','javierroldan@mail.uniatlantico.edu.co','Colombia','2017-08-24 19:57:01','2018-09-12 22:50:49',1),
  ('0ff9c74c-6727-4b8c-b357-04635b9fedc8','blancaestelabernalescoto','bernal.escoto.blanca@gmail.com','Mexico','2017-08-25 15:23:35','2017-08-25 15:23:36',1),
  ('13802e9d-c9b8-4e80-86c9-236096484318','arlex07','arlex07@gmail.com','Colombia','2017-08-26 20:39:34','2017-08-26 20:39:35',1),
  ('6c6ee02a-9bab-41af-83fc-c893d670e116','erika','ernatamed@gmail.com',NULL,'2017-08-28 17:16:29','2017-08-28 17:16:30',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('79fdf11a-ae93-4463-9035-4ab27da7facd','gcastrob','german.castro@ustamed.edu.co','Colombia','2017-08-30 11:09:33','2017-08-30 17:32:38',1),
  ('19cc0037-1230-4cd6-b913-4621b21e35db','karlameneses','karla.meneses@udla.edu.ec',NULL,'2017-09-06 11:10:51','2019-01-04 10:19:01',1),
  ('15905848-7ea5-4407-8f18-b1d7cdf06eec','lfvalenzuelaji','lfvalenzuelaji@unal.edu.co','Colombia','2017-09-07 09:16:07','2017-09-07 09:16:08',1),
  ('1be5eb61-ac50-4307-9656-428e9cecfa5c','jancok','asus007@gmail.com',NULL,'2017-09-09 16:03:54','2017-09-09 16:03:54',1),
  ('cf4775a4-6afa-4985-b3f2-b36d34c5876d','stefanny','stefannyur14@gmail.com','Colombia','2017-09-11 16:58:12','2017-09-11 16:58:13',1),
  ('ec7fcef7-9743-41c3-9d92-3015c605a6ee','monica_08','monica.navia@correounivalle.edu.co','Colombia','2017-09-11 18:13:22','2017-09-11 18:22:21',1),
  ('6abd7af5-0293-4732-bf17-5ed0e9a0f48d','gribot','nmunoz345@gmail.com',NULL,'2017-09-14 22:54:36','2017-09-14 22:58:29',1),
  ('c263c05f-a861-4959-9dfd-57685adad435','carolinajauregui5','carolina_jauregui06131@elpoli.edu.co','Colombia','2017-09-15 06:56:02','2017-09-15 06:56:02',1),
  ('c0de5b15-ad5e-4ce4-aff0-dfbdb2806487','lfortiz7','lfortiz7@gmail.com',NULL,'2017-09-18 15:37:50','2019-05-09 10:38:20',1),
  ('b3468705-df3f-4a27-8c5b-c1d23dc43a0d','karolina_tobon25','karolinatobon25@hotmail.com',NULL,'2017-09-18 21:19:54','2017-09-18 21:19:54',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('863ec8c7-24f6-4a5f-969b-af739ef070d1','karolina_silva_tobon25','karolinamarsella@gmail.com',NULL,'2017-09-18 21:26:39','2017-09-18 21:26:39',1),
  ('6f8469c9-4dc5-486c-ba37-b8fcb950faaf','karolina_silva_tobon2522','karolina_silva01162@elpoli.edu.co',NULL,'2017-09-18 21:33:39','2017-09-18 21:33:39',1),
  ('0eb14f37-489f-4077-be73-c19176fd5281','abonomo','abonomo@ucu.edu.uy','Uruguay','2017-09-21 14:47:11','2018-09-05 12:16:25',1),
  ('85051876-7bdf-4330-a45b-1e9d34370816','ckrauss','ckrauss@ucu.edu.uy','Uruguay','2017-09-21 14:50:38','2017-09-21 14:50:38',1),
  ('9f7e5732-f34e-49a9-866c-089378eb6675','andrea99','andrearamirez33@hotmail.com','Colombia','2017-09-21 19:00:11','2017-09-21 19:00:11',1),
  ('9596f018-0760-46d0-8952-72efad352437','dianabernal','diana.bernal@usa.edu.co','Colombia','2017-09-22 14:43:24','2017-09-22 14:51:28',1),
  ('e6b16ca0-a82c-46ea-92fa-b16a4846873c','brayanvalle','brayan_valle82142@elpoli.edu.co','Colombia','2017-09-24 21:38:48','2017-09-24 21:40:51',1),
  ('d7fa0541-644d-4285-a163-5457ba283926','fbotero','fboteroh@eafit.edu.co','Colombia','2017-09-26 14:31:03','2019-08-28 08:04:15',1),
  ('c3c42712-f4c4-4b0e-8ef3-98be5006fb27','jperezmesa','jperez@eafit.edu.co','Colombia','2017-09-26 19:17:39','2017-10-19 11:28:47',1),
  ('69ff9597-e5a3-4d44-bae8-854de10d625a','pemedin','pemedin@utp.edu.co','Colombia','2017-09-26 19:50:35','2017-09-26 19:50:35',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('399a91a0-68d9-4098-b48f-7d8d2f66abc2','jpalacio','juan.palacio@upb.edu.co','Colombia','2017-09-26 20:18:15','2017-10-06 16:54:49',1),
  ('8820c9d9-4326-4960-b10c-b0fda2251c25','cris1039','cristian_cifuentes07161@elpoli.edu.co',NULL,'2017-09-26 23:02:23','2017-09-26 23:06:19',1),
  ('90653ba9-907d-4c6b-bd41-6ca3f81a6587','psanabria','pablo.sanabria@unimilitar.edu.co','Colombia','2017-09-27 13:37:00','2017-09-27 13:37:00',1),
  ('d9799a54-4f9f-4e08-a901-a7e1887e5d29','jdvalo','jdavalo@pucp.edu.pe','Peru','2017-09-27 13:53:31','2018-10-27 11:47:23',1),
  ('b68a2d23-2004-4203-bf97-326415dda6b3','lmchica','lmchica@udem.edu.co','Colombia','2017-09-27 14:08:47','2018-05-15 17:21:06',1),
  ('4febb1c1-319e-4ab8-8d93-3f3f55dd9490','avalencg','avalencg@gmail.com','Colombia','2017-09-27 14:17:45','2017-12-23 07:31:58',1),
  ('54a84e93-a50f-453a-bb5c-19db18e3ca70','eparra','eucarioparra5@gmail.com','Colombia','2017-09-27 14:26:32','2018-04-24 09:24:12',1),
  ('e464aab5-ccc1-4b79-b47d-643570f20aca','ccruzma','claudia.c.mtz@gmail.com','Colombia','2017-09-27 14:37:41','2017-09-27 14:37:41',1),
  ('b6229812-5a02-4096-94e6-0ed61db0ddef','faguilar','aguilar.afco@gmail.com','Mexico','2017-09-27 14:42:06','2019-03-07 20:56:05',1),
  ('784e41d8-4415-4b38-adbf-4a7098c5d74d','celina','celygaldi@gmail.com','Colombia','2017-09-29 09:54:31','2017-09-29 09:54:31',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('09387001-892f-441c-826d-adb886634138','dlaverde','dlaverde@uis.edu.co','Colombia','2017-10-02 16:20:19','2017-10-02 16:20:19',1),
  ('a06f3d92-35d8-4dde-867e-4cb89983f9d6','jcabello2','jcabello2@cuc.edu.co','Colombia','2017-10-02 16:42:54','2017-10-02 16:42:54',1),
  ('22ad4930-2b35-4598-8231-506cb49025cf','mrarrieta','mrarrieta@gdl.cinvestav.mx','Mexico','2017-10-02 16:54:33','2018-05-15 12:06:04',1),
  ('6b168f54-6a2c-41b5-bfee-6c67bf06f21d','cpalacio','cpalac12@eafit.edu.co',NULL,'2017-10-06 18:06:23','2018-03-20 09:32:04',1),
  ('198dd3f2-619b-4d46-a358-1bc1d2a21fd8','hgonzalez','hgonzalez7@unab.edu.co','Colombia','2017-10-09 14:29:06','2021-02-18 15:00:34',1),
  ('24359d70-fec3-41d2-9642-f3899058ebe0','gparra','german.parra@uv.es','Spain','2017-10-09 14:53:58','2019-03-29 17:39:27',1),
  ('3ce4b57c-5a33-414c-8455-8f4d3197ccc7','jsepulve','jsepulve@usco.edu.co','Colombia','2017-10-09 16:07:42','2017-11-17 12:25:13',1),
  ('39e3d70c-1424-47ac-a1ae-ca00a92bb93f','armeji','armeji@usbcali.edu.co','Colombia','2017-10-17 20:09:41','2017-10-17 20:10:58',1),
  ('354083b0-bed8-4631-9716-cc97584db996','jairofdz','jairofdz@pedagogica.edu.co','Colombia','2017-10-19 09:37:24','2017-11-05 09:40:00',1),
  ('6f2daf35-a812-42a4-b5ab-c4af1b677461','jfarangol','jfarangol@gmail.com','Colombia','2017-10-23 19:56:36','2017-10-30 07:45:55',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a58c2847-778d-4448-baaa-b4c2eaedaa8b','clopez','lopez.c@javeriana.edu.co','Colombia','2017-10-23 20:02:18','2017-11-20 14:56:26',1),
  ('da19dfb1-050b-45aa-a0e5-e1f07c69c5f5','hhgil','hhgil@elpoli.edu.co','Colombia','2017-10-23 20:07:03','2018-12-10 11:04:51',1),
  ('115e03f8-60bc-45d4-ab94-c524e738af0c','jaorozco','jaorozco@areandina.edu.co','Colombia','2017-10-23 20:10:19','2017-10-25 21:27:23',1),
  ('953743b0-0a8f-48bb-9d75-780f306bd40a','ysilva','yimmy.silva@correounivalle.edu.co','Colombia','2017-10-23 20:14:25','2017-10-23 20:24:01',1),
  ('407e4a6b-9da2-446a-b8e3-e621f0b7f098','jjduran','jj.duran@igme.es','Colombia','2017-10-23 20:22:57','2018-05-18 06:11:58',1),
  ('9e3bdb4c-b6b3-400d-b63e-09862e17dd21','jsanabria','john_jairos@hotmail.com','Colombia','2017-10-23 20:31:56','2018-06-21 22:02:19',1),
  ('ed37b966-b5a7-48c3-bdf1-eec50c1dedff','gjmartinez','gjmartinez@elpoli.edu.co','Colombia','2017-10-23 20:39:12','2023-11-13 06:50:11',1),
  ('cd1b20af-b896-4c94-8708-c8d848ca9f18','jcvaldes','jcvaldes@elpoli.edu.co','Colombia','2017-10-23 20:44:55','2017-10-23 20:44:55',1),
  ('adcf1331-4202-4c06-bd09-b9630c3b8c4d','eszatre123','eszatre@gmail.com',NULL,'2017-10-23 21:54:00','2018-08-08 20:56:46',1),
  ('fa02f71a-185e-42ce-95ef-2d9c47a10bee','caordonez','caordonez@elpoli.edu.co','Colombia','2017-10-24 18:28:54','2017-11-21 10:24:22',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ea7712ea-0c01-4f83-971e-e7a0f1cdd1f3','nlvillegasb','nlvillegasb@unal.edu.co','Colombia','2017-10-27 14:05:52','2018-06-08 23:34:03',1),
  ('3867b96b-205c-4b8b-b86d-939fb1035cbf','papabu2','papabu2@yahoo.es','Colombia','2017-10-27 14:09:32','2018-05-29 15:05:39',1),
  ('4fc2a9af-eee3-4926-ab42-c8049230d6a3','hcastrosilva','hugocastrosilva@hotmail.com','Colombia','2017-10-27 14:16:41','2017-10-29 17:27:23',1),
  ('ce698af9-5b94-4a92-99ce-4fa728805b6b','nobregon','nobregon@javeriana.edu.co','Colombia','2017-10-27 14:23:13','2018-05-28 18:22:42',1),
  ('a94f3c31-472b-4330-a8fa-0726a517f118','wmedinasierra','wilson.medina@usantoto.edu.co','Colombia','2017-10-27 14:28:12','2018-11-20 16:45:44',1),
  ('0fb6fafc-4935-4447-a734-d2576bc794a5','garcesherrera','garcesherrera@gmail.com','Colombia','2017-11-03 15:52:12','2017-11-26 23:02:46',1),
  ('edefca76-d404-4d97-8b9d-d3630ff3495f','cfgarciao','cfgarciao@udistrital.edu.co','Colombia','2017-11-03 16:07:49','2019-02-24 14:44:09',1),
  ('ede0fb95-37c2-44b6-b7b8-bc349d1561c2','rsalinas','renato.salinas@usach.cl','Chile','2017-11-03 16:48:57','2018-05-31 15:02:11',1),
  ('db973521-c5e8-4850-8c5b-afecd40d1c06','martinbruzzese','martinbruzzese@hotmail.com','Argentina','2017-11-03 22:34:47','2017-11-03 22:34:47',1),
  ('ab95eec9-0e6d-48a0-b641-e94ea76205c0','darevalou','darevalou@gmail.com','Colombia','2017-11-03 22:46:58','2017-11-03 22:46:58',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a024fae9-e15d-4d9c-bd4e-bdad24fcbcb1','aganga','angelica.ganga@usach.cl','Chile','2017-11-07 22:47:17','2018-03-08 18:16:14',1),
  ('fcbcb709-37a8-4b02-9106-a3866e22f29a','mmlondono','mmlondono@elpoli.edu.co','Colombia','2017-11-07 22:52:18','2017-12-18 09:13:08',1),
  ('382c951c-9953-4066-afd3-6030abc6f458','fpfranca','fpfranca@eq.ufrj.br','Brazil','2017-11-07 23:03:05','2017-11-07 23:03:05',1),
  ('5f3aba45-f03e-4042-b88d-01a1e6f65dfa','rpiastrellini','roxana.ppp@gmail.com',NULL,'2017-11-12 22:56:53','2017-12-27 12:08:18',1),
  ('b37fe200-b349-4cfb-80e6-5ffcc98630ba','susanarfeldman','susanarfeldman@gmail.com','Colombia','2017-11-13 09:18:56','2019-05-17 12:58:33',1),
  ('38b1abca-5275-46cf-b61e-5dad839a246e','acmaescobarm','acmaescobar@gmail.com','Colombia','2017-11-14 21:52:57','2019-07-21 18:02:59',1),
  ('a2a3ba18-a94c-4993-a46d-0dd7cc2179ae','lilylopez','lilianalopez2091@hotmail.com','Colombia','2017-11-15 16:15:04','2019-02-28 16:16:20',1),
  ('b398a660-56d3-4f42-92ec-63d28809f61a','xiomarac','xcastanedag@uqvirtual.edu.co','Colombia','2017-11-29 21:30:15','2017-11-30 23:21:06',1),
  ('e7aed388-618a-4989-bf2e-7fdb8d306208','jjoel','joel@bioeco.cu',NULL,'2017-11-30 22:19:02','2024-02-15 12:04:14',1),
  ('8421600e-18a9-467d-a5f0-c16c2e900fe7','geadalopez','gabriel@upr.edu.cu',NULL,'2017-11-30 22:22:53','2017-12-01 12:07:42',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e9a409c7-1aa8-4faf-8b0d-9a80ccf365db','ingnavarretem','ingnavarretem@hotmail.com',NULL,'2017-11-30 22:27:04','2017-12-14 19:44:34',1),
  ('06257487-941b-4019-8aa8-df180837e674','jriosflores','j.rf2005@hotmail.com',NULL,'2017-11-30 22:32:19','2017-12-14 19:47:10',1),
  ('4ea6c4f6-f507-448b-8a69-7800746f8437','vjimenez','jiav68@yahoo.com.mx','Mexico','2017-11-30 22:36:28','2018-05-04 08:20:25',1),
  ('d75cfcec-af9b-42da-8daa-d9fa92810686','cmartinez','ing.carlosmartinez86@gmail.com',NULL,'2017-11-30 22:39:33','2018-04-24 20:13:38',1),
  ('11174e4d-a27b-4149-a68e-a4676d53e41d','jpineda','cebaecuador@gmail.com','Ecuador','2017-11-30 22:42:47','2017-12-26 22:47:45',1),
  ('a7feb0b8-e925-472c-8351-c77b9d0bd9d1','dcgilm','dcgilm@unal.edu.co','Colombia','2017-11-30 22:46:26','2019-07-19 15:17:50',1),
  ('8d49ae86-9f50-4213-a3ca-ef7951c5d168','fpereira','fpereira@utmachala.edu.ec','Ecuador','2017-12-04 18:16:07','2018-06-18 20:10:38',1),
  ('1dd2a9aa-0c60-412c-a7fd-8060454500f8','anavas','anavas@unisalle.edu.co','Colombia','2017-12-04 18:26:35','2019-02-13 07:52:57',1),
  ('4160e1dd-5f7f-4daa-9528-a327bc0faf8e','juanmejia','juanmejia@elpoli.edu.co','Colombia','2017-12-04 18:38:27','2018-05-14 10:35:15',1),
  ('ba75110b-2dcd-4b42-886a-6616e02e9a74','rdvasquez','rdvasquez@elpoli.edu.co','Colombia','2017-12-04 18:44:24','2019-05-24 11:08:50',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5da9eb01-c16c-4512-a432-7f1aba08a949','lgarcia','luisgarcia@elpoli.edu.co','Colombia','2017-12-04 18:46:08','2020-11-30 14:15:14',1),
  ('d1193ef6-c377-442b-9c8f-49dd299e3fab','arturo','arturo@bioeco.cu',NULL,'2017-12-04 18:49:20','2017-12-28 10:38:23',1),
  ('cf42235a-5b35-4cbe-a10b-d1a99685bd70','pcardenas','pfcardenash@unal.edu.co','Colombia','2017-12-19 18:50:10','2017-12-19 18:50:10',1),
  ('93b88edf-2b32-4c01-9ae5-01642328fba4','emillymorales','andreamoralesbet@gmail.com','Colombia','2017-12-20 10:44:55','2018-02-22 09:22:40',1),
  ('59e2a002-51a1-4c04-9f1b-b92796c9f06c','jhurtado','johannahurtado81@gmail.com','Colombia','2017-12-28 07:44:32','2018-02-15 15:12:57',1),
  ('7ae2d3d5-3eae-4bd2-a67d-54cf66356218','zdonawa62','zdonawa62@hotmail.com','Venezuela','2018-01-12 11:23:09','2019-01-04 22:48:23',1),
  ('7a3557a3-a938-4524-8239-79e8d9b91cc2','candychamorro','candyslorens@hotmail.com','Colombia','2018-01-15 22:02:43','2018-01-15 22:04:28',1),
  ('e869e014-58c7-4dec-b2f6-c716475bb58b','jose','josedejesus.gomez@bachilleres.edu.mx','Mexico','2018-01-17 19:24:15','2018-01-17 19:27:44',1),
  ('17895fb6-2bbb-4a48-b916-59011e8ef784','dalpe99','dalpe99@yahoo.com','Colombia','2018-01-22 20:24:09','2019-02-08 11:49:15',1),
  ('c96a64c5-4af7-4aa0-831a-b2d8e997eb80','nlc','natalialopezcerquera@hotmail.com','Colombia','2018-02-02 12:39:43','2018-02-23 08:39:19',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('6ae4c79f-25e6-457b-aecb-c59f611427af','caroleygods','caroleygods@gmail.com','Colombia','2018-02-21 12:23:56','2018-07-18 15:03:42',1),
  ('e81da9c7-0d05-4404-b317-85619f704c94','jorozcoarroyave','rafa.orozco@gmail.com','Colombia','2018-03-01 16:27:03','2018-03-01 16:27:03',1),
  ('c705dadf-49e4-40a2-8394-ed85a5c91b32','chenao','c_henao_86@hotmail.com',NULL,'2018-03-06 11:59:20','2018-12-13 11:13:22',1),
  ('01d35609-8e55-4415-b142-ce1051819c78','camilo','jcescobaralvarez@gmail.com',NULL,'2018-03-07 11:35:43','2018-09-26 10:57:17',1),
  ('05334089-ce7e-4cb2-a37e-532af3052e12','luzahoyos','luzahoyos@yahoo.com','Colombia','2018-03-08 08:21:39','2019-02-21 20:15:22',1),
  ('21553840-d51a-4c26-adee-79c64a1f1671','andresvalencia','empanadasdearroz@gmail.com',NULL,'2018-03-10 09:35:56','2018-03-10 09:35:56',1),
  ('67ac1607-95fc-4fbc-ac5b-60f8a4990ffd','mruiznunez','mruiz@elpoli.edu.co','Colombia','2018-03-13 11:26:19','2023-04-28 13:19:00',1),
  ('e69e0c30-cfd0-4b80-8695-5757c714516c','wgiraldoaristizabal','wagiraldo@elpoli.edu.co',NULL,'2018-03-13 11:35:17','2018-03-21 17:12:57',1),
  ('2bd5d1df-1d16-40cc-bbe7-cffeb3700d88','diegopat','patino-d@javeriana.edu.co',NULL,'2018-03-14 10:43:04','2018-08-29 10:40:42',1),
  ('8d6e6a81-4b8c-458a-af1e-ed02800aae88','mmrojas','mmrojas@elpoli.edu.co',NULL,'2018-03-18 17:30:39','2020-11-20 10:03:53',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a8b8c8a6-95c0-451e-becf-1e584d38f5b8','sbautista','sopena@hotmail.com','Colombia','2018-03-21 22:25:30','2020-03-17 19:09:10',1),
  ('24c19ff8-852f-4192-9937-8dad5233a885','guiovanny','guiovaysuarez@elpoli.edu.co','Colombia','2018-03-24 22:05:02','2018-03-24 22:44:21',1),
  ('45dd23e4-acbe-4585-b9ca-1a216cfd2780','hildebrandoramirez13','hildebrandoramirez13@yahoo.es','Colombia','2018-04-03 13:29:16','2019-01-17 17:44:03',1),
  ('8b5900d3-928a-4103-ab5a-a59c1b3150c2','alejandra_en','u5800010@unimilitar.edu.co','Colombia','2018-04-04 20:14:05','2018-12-14 09:11:59',1),
  ('fd898ec6-be5e-4796-a8e8-a97a96a0ee87','mabeluii','peketkb@gmail.com','Ecuador','2018-04-04 21:30:57','2018-04-04 21:30:57',1),
  ('102af3b4-5c74-40b8-8a00-5feafdd34218','landazuri','deibylandazuri@hotmail.com','Colombia','2018-04-09 11:55:08','2018-04-09 11:55:08',1),
  ('22350da8-757e-4ee4-994f-aee877ae6385','edgerplow39','martensvelling60wslhuu@fastestsmtp.com','Northern Mariana Islands','2018-04-11 21:35:05','2018-04-11 21:35:05',1),
  ('e50bd2df-cb86-4614-b5ea-d5227df44206','smadrigal1','samadrigal7@gmail.com',NULL,'2018-04-17 11:02:22','2018-04-17 11:02:22',1),
  ('a70147d4-56d6-47d9-a768-ad20824fab43','dianaccarvajalr','dcarvajal@jdc.edu.co','Colombia','2018-04-18 12:42:43','2018-04-18 18:22:58',1),
  ('e099a08a-bba6-4516-8425-a722a53f8bf9','yosorio','yosorio@deboraarango.edu.co','Colombia','2018-04-18 16:18:36','2018-04-18 16:20:25',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3d25a673-7417-4833-9afd-090b99881d5e','addcurl','addpumb@kmaill.party','Uganda','2018-04-25 14:23:26','2018-04-25 14:23:26',1),
  ('32c59c5a-1e12-4fce-83c0-eb3770b73376','1guillermo-rodriguez3','guillermo.rodriguez@utadeo.edu.co','Colombia','2018-05-01 17:06:39','2020-10-01 18:07:50',1),
  ('1dc41cca-f739-45a7-bac4-468a22c38f00','amorenocano','antonia.moreno@docentes.umb.edu.co','Spain','2018-05-02 13:21:36','2020-04-02 16:09:55',1),
  ('0c5b9c12-1ef7-4670-8a9f-ab8591aed295','estebanrl','teban1206@gmail.com',NULL,'2018-05-07 01:20:51','2018-05-29 22:47:59',1),
  ('0b7742b0-bcb2-4cdc-8e15-8c58b9f87d2f','lauracalle','lauracalle22@hotmail.com','Colombia','2018-05-07 15:56:15','2018-08-16 14:52:22',1),
  ('e0f21a0e-f045-4762-b54b-8219098f3377','luciernaga2018','motero@unillanos.edu.co','Colombia','2018-05-09 15:44:34','2019-10-08 16:16:53',1),
  ('715eb197-7435-41b8-9b39-3e207959d965','viky_1952','virginiamedinaavila9@gmail.com','Mexico','2018-05-09 16:40:07','2018-05-09 16:44:54',1),
  ('26444a70-a245-433a-998a-6cf1dfc54017','alicia','silvalicia@gmail.com','Venezuela','2018-05-10 15:35:24','2018-05-10 15:41:05',1),
  ('58591e02-6fe3-4aa3-8607-88ffdf3808a3','claudio-69','claudio.t.lobo@gmail.com',NULL,'2018-05-10 16:16:02','2018-05-26 17:58:19',1),
  ('3071a6c2-ea8e-4169-8269-7071300463af','eduardo_may','laloosio@hotmail.com','Mexico','2018-05-11 14:09:13','2021-12-07 10:58:53',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e3c34235-0b5f-4f61-a049-370f9a9aed80','luquettad','dluquetta@hotmail.com','Colombia','2018-05-15 17:13:03','2022-11-04 11:13:55',1),
  ('10ad8a1b-4cd0-4518-a598-ba881b4c7644','mvilla','miguel_deluque@yahoo.com',NULL,'2018-05-17 11:29:25','2018-06-04 17:28:17',1),
  ('a51d7abe-88c0-4051-bc5d-df1acfda6a5c','crodriguez','catalina.rodriguez438@gmail.com',NULL,'2018-05-17 11:37:08','2018-10-09 20:25:23',1),
  ('e2348c58-0995-48cb-9d83-e7c0183d1570','dbravo','dibravo@unicauca.edu.co',NULL,'2018-05-17 12:02:43','2019-03-06 15:27:19',1),
  ('9d3cd68e-2aa1-4564-b81b-dbfe0d478858','mmuoz','mmunoz@unisangil.edu.co',NULL,'2018-05-17 12:14:25','2018-12-06 11:46:23',1),
  ('3766a78d-e8ca-42e7-9386-90dea6cec51d','jsoto','jsoto@uninorte.edu.co',NULL,'2018-05-17 12:33:48','2020-02-25 12:32:46',1),
  ('1f3865a8-8a22-44f2-9dd9-4f0321376fe7','morozco','martha.orozco@correounivalle.edu.co',NULL,'2018-05-17 12:35:43','2018-05-17 20:30:26',1),
  ('edf9f58a-9380-447b-a34f-e8d3cdff133e','fsalcedogalan','fesalced@uniandes.edu.co',NULL,'2018-05-17 13:01:37','2018-10-26 17:51:15',1),
  ('f38e6303-4166-4936-b8c6-1f12f101621d','csp','svfabian@hotmail.com','Brazil','2018-05-17 13:42:46','2019-02-22 19:16:39',1),
  ('ce8b06f2-077d-4ea9-97d6-e2c027b9fc30','jurreaduque','juan.urrea@udea.edu.co',NULL,'2018-05-17 14:40:36','2019-03-11 15:52:36',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2b61c061-be4f-4a52-a592-2848480ce0df','mgmez','migomezdavid@gmail.com',NULL,'2018-05-17 16:08:29','2018-05-17 16:08:29',1),
  ('534e4dd9-6a61-4369-a279-5a99711ef19a','jrodriguez','jprm577@gmail.com',NULL,'2018-05-18 09:33:50','2018-05-18 09:33:50',1),
  ('3d284ec9-3ef7-4d97-8b31-a4f22a5abb00','econtreras','eduind.contreras@gmail.com',NULL,'2018-05-18 09:46:18','2018-05-18 09:46:18',1),
  ('3a61cc8a-4d8c-4409-87ed-070d26f97350','jsilva','jdsilva@uniboyaca.edu.co',NULL,'2018-05-18 09:47:42','2018-09-06 14:55:25',1),
  ('f7d8db55-5cda-49a2-adf0-3788a1663dae','raacostap','raul.acosta@utadeo.edu.co','Colombia','2018-05-18 12:33:38','2019-07-31 16:42:40',1),
  ('25a7594e-3de3-4c47-aa1d-8ba93a8973bb','jramirez','abc195@hotmail.com',NULL,'2018-05-18 14:04:05','2019-04-07 12:16:32',1),
  ('ac5e1a4b-d2f5-456b-8e3b-5716fa773b96','esoto','easotor@uis.edu.co',NULL,'2018-05-18 14:08:25','2018-05-18 14:08:25',1),
  ('c956d780-c6f9-46c8-8fcc-b3d7c508fb0f','betinha','ofghmsrp@gmail.com','Brazil','2018-05-19 16:58:58','2024-09-07 23:42:29',1),
  ('7f54a718-163c-4564-80cf-1cb8c7298347','jarvalo','jarevalop@gmail.com','Colombia','2018-05-21 16:09:18','2018-12-06 17:12:44',1),
  ('89f61ae7-1443-43b5-a184-718a0fb5da75','jchacon','cchacon@uis.edu.co',NULL,'2018-05-21 16:48:12','2018-05-21 16:48:12',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c95e994a-557b-40ec-af9d-b6236f3c7da1','ktorres','karinaptorres@unicesar.edu.co','Colombia','2018-05-22 15:04:15','2025-10-03 07:15:41',1),
  ('0206ab88-456a-4040-88c8-68dd8bf2045b','imora','ivan.mora@upb.edu.co',NULL,'2018-05-22 16:05:19','2019-03-01 10:56:47',1),
  ('4d957258-4020-44b5-8ebf-093eae15bf54','marioalexander','mariolozano@yahoo.com','Colombia','2018-05-22 16:52:29','2019-07-19 11:33:10',1),
  ('b3dccacf-a122-4629-b9c2-7189cd9ec0fb','mateovelezvm','mateovelezaudiovisuales@gmail.com','Colombia','2018-05-25 07:55:47','2023-04-13 04:50:17',1),
  ('94f93e8f-cda4-467e-83c9-ddce2732f886','jbotero','juanbotero@itm.edu.co','Colombia','2018-05-28 09:58:47','2021-05-27 19:02:05',1),
  ('646d7735-43f7-45b4-8767-d8bc149fb63a','jaal','sujajaal@gmail.com','Colombia','2018-05-29 20:28:29','2018-09-25 20:06:57',1),
  ('c6b6d005-dd6d-4d72-92f2-9d80ae4fa4e7','sgmez','sebastian.jimenez1@eia.edu.co',NULL,'2018-05-30 09:19:57','2018-06-14 10:00:42',1),
  ('753a7c83-0301-4b8d-84bb-b3913da68d6e','dgarzn','dagarzonr@unal.edu.co',NULL,'2018-05-30 09:21:11','2019-12-29 16:28:05',1),
  ('b0dc3cef-42f8-4a8e-a644-1d1923069b50','mateo','mateo_m8y8@hotmail.com','Colombia','2018-05-30 12:07:00','2018-05-30 12:11:29',1),
  ('7187cf1b-5344-4744-9b63-7f9825dd6944','gloriadcv','delacruzassociated@gmail.com',NULL,'2018-06-02 13:11:51','2018-06-02 13:15:21',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('70b0d401-e35b-4252-be42-fb1234208707','gflorez','gflorez1005@gmail.com','Colombia','2018-06-03 13:26:24','2023-02-15 12:07:17',1),
  ('4a5c1335-866c-4ee9-aecf-68b9714d813b','arterojuan','juanmanuelartero@gmail.com','Argentina','2018-06-05 12:59:46','2019-01-05 09:30:16',1),
  ('7f8a4009-c815-487d-a407-1daee5d0c616','rmejia','rmejia@uniminuto.edu.co','Colombia','2018-06-07 18:58:49','2018-06-07 18:58:49',1),
  ('ea5928da-ad97-4ef2-87e0-c8e8ea166ea4','hayepest','hayepest@ufpso.edu.co',NULL,'2018-06-09 00:16:43','2018-08-14 13:02:41',1),
  ('82c88e36-ead0-47c0-a5a8-40134b57d2bd','raulglez9','lcpglez@gmail.com','Mexico','2018-06-12 00:26:48','2018-08-10 14:20:43',1),
  ('bbbd44b3-56ab-438e-9c1f-d81c4de7b875','henry_ortega','henry.ortegag@ucc.edu.co',NULL,'2018-06-13 15:55:06','2018-06-13 15:55:06',1),
  ('cecedd7c-5b51-4f64-a0ac-3d9952a23f5e','alejandra75','alechipoco@gmail.com',NULL,'2018-06-13 16:58:25','2018-06-13 16:59:48',1),
  ('7fd684d9-01b8-4b74-9fdd-83b98bec0e2c','bbhghpreot','hfgatnoignlitobogs@halemail.bid','Brunei','2018-06-17 08:00:00','2018-06-17 08:00:00',1),
  ('463bc1ed-c10e-4c83-895b-f7ba3e48263a','jegiraldo','jegiraldo@elpoli.edu.co','Colombia','2018-06-18 23:56:10','2025-09-15 10:43:14',1),
  ('7cd12ec0-9a5f-4f86-b87f-4c795bc8dd55','adlopez','adrian.lopez1085@yahoo.com.ar','Argentina','2018-06-21 10:48:23','2018-06-21 10:57:29',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('fb558461-4250-4136-8f81-b17becdecd9e','julianpaezv','julian.paez@ucp.edu.co','Colombia','2018-06-24 15:12:15','2018-10-10 07:36:30',1),
  ('e200bf2b-11c0-4f53-b228-57070ffed6c0','olartesusana','olartesusana@hotmail.com',NULL,'2018-06-26 09:47:09','2018-10-02 11:38:20',1),
  ('73a9aeb4-be94-4ea9-a92f-d6865c2a1ce9','pauladasilva','pau_dasilva@hotmail.com','Argentina','2018-06-28 11:54:17','2018-08-31 19:12:37',1),
  ('8fed5dbf-d8ee-4246-aedc-aa2bcac584e0','juandrios','juandrios@elpoli.edu.co',NULL,'2018-06-30 15:35:00','2021-01-27 18:30:26',1),
  ('a46d4ead-dda4-4ec3-9450-6009c38272f4','camilocruz','kmilo100@gmail.com','Mexico','2018-07-02 18:45:08','2024-09-29 14:02:18',1),
  ('2f07ae5c-7bd3-4780-ba9e-82388cea1053','fridag','frida.gogar@itesm.mx','Mexico','2018-07-10 14:38:53','2019-10-07 14:23:25',1),
  ('d232cbba-119e-466e-bbe0-e7f32aa5e74b','ndiaz4','norbertodiaz28@gmail.com','Colombia','2018-07-17 16:37:49','2024-01-22 08:23:32',1),
  ('27420c40-c1a0-4409-b855-58d5d1b718eb','piedad_ruiz','pruiz@unicauca.edu.co','Colombia','2018-07-17 18:02:07','2018-07-17 18:05:01',1),
  ('78da6820-d564-4b38-8cb0-ffe512fc63a1','josette','josettemonzani@gmail.com','Brazil','2018-07-18 17:28:31','2018-08-06 17:56:06',1),
  ('533dc4c0-db00-4bc3-b04d-bf7144b00d51','andresmontoya','andres.montoyal@udea.edu.co',NULL,'2018-07-19 16:23:21','2018-07-19 16:24:03',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('cbae1f6c-7dee-41c8-984c-bf05946477bd','daniel_higuita20103','daniel_higuita20103@elpoli.edu.co','Colombia','2018-07-21 21:34:52','2018-07-21 21:42:18',1),
  ('c9071092-a7d4-47d2-9fa3-ede48c146842','juliobenavides','jbenavides@unab.edu.co',NULL,'2018-07-24 11:28:59','2018-07-24 11:40:25',1),
  ('31783413-764f-466b-ae9f-f37555df35a3','fannia','fanniamariacadena@gmail.com','Mexico','2018-07-25 11:22:42','2018-08-10 16:51:16',1),
  ('dec8eac3-29f3-47e4-a7bc-6b63ea3d813f','isaiasmolina','isaias.molina@gmail.com','Colombia','2018-07-26 14:41:57','2019-01-14 15:24:13',1),
  ('589d309b-1720-475b-a157-a4dbf1956f50','dhermelin','dhermeli@eafit.edu.co','Colombia','2018-07-29 18:48:26','2018-12-07 17:51:13',1),
  ('f3e0b58d-cfd7-44d3-ab59-bc85fd7b0f64','sandra_flores','sandra_flores@uaeh.edu.mx','Mexico','2018-08-02 15:47:13','2023-09-12 16:16:23',1),
  ('999d07bc-a0f6-4d2d-b845-571fcb5a4063','illas','illasw@hotmail.com','Venezuela','2018-08-03 23:52:03','2022-10-25 22:39:41',1),
  ('73c36584-d8bb-4ce4-bb8a-b596b6266a1b','ngomez','ngomez@iteso.mx','Mexico','2018-08-04 20:51:05','2018-08-28 12:36:51',1),
  ('a253607b-1570-4577-bd66-d458921038bb','adelgadillo','rolandonotas@gmail.com',NULL,'2018-08-07 21:24:22','2018-11-23 14:23:24',1),
  ('e60f28f8-e4ea-49d2-9fe7-7e2fad1fcfa4','galhardi','claudiagalhardi@usal.es','Brazil','2018-08-08 10:59:48','2018-08-08 10:59:48',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d6461726-d278-423e-a9cf-eb93cc7b5d58','aarreola','aarreola@ucol.mx','Mexico','2018-08-08 17:12:50','2018-08-10 16:28:10',1),
  ('626faa61-aead-4325-a963-d240f8b7a913','aduplatt','antoduplatt@gmail.com','Argentina','2018-08-09 18:01:31','2025-09-02 05:27:57',1),
  ('aabf939b-7a2f-4f4b-9cd8-54e08801a447','isacris2018','isabel_restrepo20111@elpoli.edu.co','Colombia','2018-08-09 18:21:52','2022-11-05 10:17:10',1),
  ('68957dcd-1d3a-43b5-b801-2feecd127283','carolina','carolina.raigosa@docentes.umb.edu.co','Colombia','2018-08-10 18:32:35','2018-08-10 18:36:53',1),
  ('52424f30-242e-4c45-93ab-b4c2046c06e9','ngguaman1','ng.guaman@uta.edu.ec','Ecuador','2018-08-10 22:54:36','2019-01-23 18:26:53',1),
  ('6ef92772-529d-4f25-9aa7-ee95005ee9f0','juliacastano','julia.castano@ucp.edu.co','Colombia','2018-08-14 11:03:30','2022-10-18 07:46:10',1),
  ('ee2f3e0c-823c-4a6b-abb2-bf6cc42e9b15','jorgentr','jorge3344@gmail.com','Mexico','2018-08-14 16:10:58','2018-08-15 11:17:43',1),
  ('166850e9-8cef-44f6-9a28-35ce3724f1bb','nccabaleiro','nccabaleiro@hotmail.com','Argentina','2018-08-14 21:32:00','2019-04-20 17:17:56',1),
  ('c4239a3b-7d01-4592-9bb1-677339e37cfd','espinola','dolly.espinolaf@gmail.com','Mexico','2018-08-16 11:47:23','2025-04-08 20:33:21',1),
  ('f1cabfb2-a72f-4e01-bdad-ab7dbf37e401','ariannea57','arianne.herlitz@arcor.de','Ireland','2018-08-18 22:00:07','2018-08-18 22:00:08',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3008366c-dd48-4b97-ab6e-6a4befc612e8','cortes','danielcortes@elpoli.edu.co','Colombia','2018-08-19 16:46:28','2018-08-19 16:47:32',1),
  ('119bdbbc-7525-4b34-b393-69bcafabf6e2','dianacceballol','dianaceballoslopez@gmail.com','Colombia','2018-08-23 09:13:44','2019-01-12 20:22:32',1),
  ('7a342e57-3506-4024-9de1-e60dcee44cc5','cesarmejia','camzulua@usbcali.edu.co',NULL,'2018-08-23 17:29:00','2018-08-23 17:36:24',1),
  ('40f9559e-5b83-4e13-ba79-5494c709189b','a1jegb','garciaquerojuane@hotmail.com',NULL,'2018-08-27 18:33:27','2018-08-27 18:36:46',1),
  ('a651c69d-c30b-470a-b22e-e8061de59a1c','david_cuenca_orozco','davidcuenca.orozco@gmail.com','Mexico','2018-08-27 19:39:39','2018-08-27 19:46:02',1),
  ('ff6ffcd8-52ca-48f5-96d1-cdd40a9a8e0d','linapaez2004','u5800026@unimilitar.edu.co',NULL,'2018-08-27 22:18:32','2018-08-29 22:49:21',1),
  ('6d5d5350-b94b-4903-82c6-234e40052f29','esmeralcas','esmeralda.ccueva@gmail.com','Mexico','2018-08-31 15:12:17','2018-11-28 17:21:32',1),
  ('0c01689f-d4f0-45b5-bceb-c846ac72436e','mhernandez','mhernandez@sena.edu.co',NULL,'2018-09-04 09:32:55','2018-09-13 14:18:16',1),
  ('dc929d36-4238-4bca-9359-3d8d8d01219b','rjimenez','robinson.jimenez@unimilitar.edu.co','Colombia','2018-09-04 11:44:33','2018-09-04 11:51:13',1),
  ('fcc489b2-7083-4fc2-892f-d7f2376eb696','francardona','jcardonab@hotmail.com',NULL,'2018-09-04 14:47:42','2019-04-10 13:52:27',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('37969071-8cdc-4a09-a3ea-b922678198db','joseherrera2018','jjherrerao@elpoli.edu.co','Colombia','2018-09-04 16:35:34','2018-09-04 16:55:59',1),
  ('0785a304-e7b7-4502-806c-c03dcbf279c0','maldonado','ribemat@gmail.com',NULL,'2018-09-04 22:36:40','2018-09-17 20:30:34',1),
  ('4ca230aa-9585-4e2e-98fd-3a78a2b0e557','cvalencia','carlos.valencia@pascualbravo.edu.co',NULL,'2018-09-05 08:18:04','2018-09-10 19:34:54',1),
  ('0773f17a-608d-4719-9eac-5abefa1433e8','ahernandez','alher.hernandez@udea.edu.co',NULL,'2018-09-05 10:33:31','2018-09-05 15:27:33',1),
  ('8d4baecd-9ed2-4362-919f-10533604afbb','rtorres','robinson.torres@eia.edu.co',NULL,'2018-09-05 10:35:54','2018-09-05 10:35:54',1),
  ('591ccdff-798c-486e-907d-2c61204b7d2d','jdlemos','juan.lemos@udea.edu.co',NULL,'2018-09-06 00:46:44','2018-09-06 00:46:44',1),
  ('df1b1972-9f78-4943-9aa8-e401bfca13a5','gaponte','guillermo.aponte@correounivalle.edu.co',NULL,'2018-09-06 09:23:22','2018-09-06 09:23:22',1),
  ('625b6121-fcc9-45c1-b931-d776775d0e6d','aalejandre','a.alejandre@unileon.es','Spain','2018-09-06 09:38:39','2018-11-05 12:29:01',1),
  ('42447ba0-91f1-44f8-b3c8-81f7b66efb79','hjsarmiento','hjsarmiento@elpoli.edu.co','Colombia','2018-09-06 10:26:01','2024-09-26 09:30:21',1),
  ('8a455483-12d8-47f1-a709-c995b972af17','mospina','manuelospina@itm.edu.co',NULL,'2018-09-06 12:47:39','2019-04-24 08:46:14',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('9e98ea75-1868-4850-8a74-51ecb9174255','scardona','scardona@unal.edu.co',NULL,'2018-09-06 14:34:08','2018-10-12 15:17:57',1),
  ('22bc8c42-faef-44b2-81d1-7041aea3fac2','cbotero','carlosbot@gmail.com',NULL,'2018-09-07 07:17:16','2018-09-07 07:17:16',1),
  ('e41fd1c3-50d0-4c66-ac9e-856b5b47c9a3','lherrera','lkherreraq@unal.edu.co',NULL,'2018-09-07 07:20:53','2018-09-07 07:20:53',1),
  ('fbcaf5e4-bf00-4294-b9d8-a410a95c40b7','fnovegil','xabieranleo@gmail.com','Colombia','2018-09-07 07:22:49','2018-09-27 17:54:53',1),
  ('975f6cfe-ed81-4e54-b765-b4ea966536af','frivera','chafer_333@hotmail.com',NULL,'2018-09-07 07:30:00','2018-09-19 11:37:34',1),
  ('e081a25d-52fb-4080-b729-f75ee2800dec','gagredo','gagredo@unicauca.edu.co',NULL,'2018-09-07 07:31:38','2018-09-09 17:19:02',1),
  ('559bb997-8455-4f6b-8043-920cf3c0a27c','epalta','elepalta@gmail.com',NULL,'2018-09-07 07:33:18','2018-09-07 07:33:18',1),
  ('bc25a1fe-3e07-4eac-bd5d-40e514039cb9','csierra','csierra1000@gmail.com',NULL,'2018-09-07 07:41:47','2018-10-04 14:40:37',1),
  ('2636eac5-c183-41a9-9860-d2dba38a4791','cbenjumea','carlosbenju@gmail.com',NULL,'2018-09-07 07:43:31','2018-12-10 09:59:36',1),
  ('38651aeb-dd17-44cb-b5fb-4b3d1e12b615','jmedina','jorge.medina@usa.edu.co',NULL,'2018-09-07 07:57:21','2018-09-07 07:57:21',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f7a614fe-886d-4a1a-9d78-1420240cc59b','opinzon','omar.pinzon@upb.edu.co',NULL,'2018-09-07 08:59:13','2018-09-23 00:00:09',1),
  ('d2ae2828-9593-4e35-8579-b064cccafcd9','woro3666','william.orozco@pascualbravo.edu.co','Colombia','2018-09-10 16:01:00','2018-11-07 16:26:31',1),
  ('85f7c6a7-edb6-474d-bce8-f5a207839a5d','cavh123','cavh123@gmail.com',NULL,'2018-09-10 19:20:40','2018-09-10 19:25:24',1),
  ('a5f054d6-81f8-4a43-8446-532b17d578c6','roisman','roismanenrique30@yahoo.es','Colombia','2018-09-11 11:16:05','2022-11-01 10:46:01',1),
  ('f85368bc-2282-45a0-a39c-bff650645c73','dzuluaga','natalyiron@hotmail.com',NULL,'2018-09-11 14:20:11','2018-09-11 15:17:41',1),
  ('eb895425-3689-4bdb-a24d-8cbbafd280ae','pbernal','paola.bernal@unillanos.edu.co',NULL,'2018-09-11 14:34:35','2018-09-11 14:34:35',1),
  ('4fd8e41e-ec3d-4eb0-a5da-d92c013b3773','daniel_cortes','viviendascg@hotmail.com','Colombia','2018-09-12 12:56:42','2025-10-04 18:16:55',1),
  ('88343c10-dd92-42f8-9131-64c7bbbb7588','pablozuleta','pzuletap@yahoo.es',NULL,'2018-09-12 13:43:47','2018-09-12 13:44:51',1),
  ('9417728c-b2ff-4aab-9a07-5c7ad9fcd8f2','lsancht','xiomsanch@gmail.com',NULL,'2018-09-12 22:35:06','2019-07-17 17:49:05',1),
  ('43d7f287-7668-4b11-9b3d-0e0c58a84345','jquiroz','julianaquiroz9509@gmail.com','Colombia','2018-09-13 07:06:38','2023-09-25 09:18:38',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8c8f1ed9-ad5f-4237-9cee-90350f32c915','jcasasz','jccasas@unicauca.edu.co','Colombia','2018-09-13 09:01:50','2019-02-18 19:48:43',1),
  ('6e63f435-64b0-4a87-97d8-0e55ec7297b4','anardila','anardila@elpoli.edu.co',NULL,'2018-09-14 09:17:47','2022-02-01 13:58:06',1),
  ('99d70b92-784c-4aeb-b48d-c5a813643031','xabieranleo','xabiernovegil@gmail.com','Colombia','2018-09-14 13:41:56','2018-09-20 15:38:25',1),
  ('a804851b-2076-471f-8d62-60abc4dc077c','dansaldo','dansaldo@gmail.com','Chile','2018-09-15 11:14:43','2018-09-15 11:14:43',1),
  ('1e8b77d7-f71f-4eac-8449-a4df83c41eaa','turnitin','rpolitecnica@gmail.com',NULL,'2018-09-15 13:11:37','2024-05-15 11:22:08',1),
  ('bf79a8c7-fc62-43db-b8da-cdba55653001','masuabla0311','contadoramacarena@gmail.com',NULL,'2018-09-15 18:16:53','2024-03-04 09:21:32',1),
  ('4712dc83-bcc2-4ffd-950f-51fedde4e898','brendavane','mgconfianza@hotmail.com','Colombia','2018-09-16 22:46:46','2018-09-16 22:46:46',1),
  ('9b521b37-ff2e-468e-bdc1-6a40cce6ea96','ingridirene','kaufmann.ingrid@inta.gob.ar','Argentina','2018-09-17 06:48:50','2020-05-29 13:03:02',1),
  ('d10c06f6-07cf-4c11-937f-f2b9486d507e','obustamante','mobustam@unal.edu.co',NULL,'2018-09-17 14:42:37','2018-10-31 10:19:56',1),
  ('5d62d34a-db3f-4775-8bd6-24e622d557d1','darcho','daamuba@hotmail.com',NULL,'2018-09-17 15:00:53','2019-06-22 09:54:54',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('bb33117a-585a-4bed-8688-85ca1fc3eb20','ggleal','leal.giovanny@gmail.com','Argentina','2018-09-17 17:49:43','2018-09-17 17:58:35',1),
  ('d725be81-f4a2-40b0-85f6-e984ff307dc9','claudiah31','claudiah@unicauca.edu.co','Colombia','2018-09-18 00:31:00','2018-11-01 19:14:42',1),
  ('6680234f-8dd5-4dfe-b2cb-dda92b379088','lchica','lmchica@unal.edu.co',NULL,'2018-09-18 08:59:02','2018-09-24 10:22:14',1),
  ('60d0d985-9a37-433d-960a-a4af5f3997e2','smateus','spmateus@elpoli.edu.co',NULL,'2018-09-18 12:37:33','2018-10-01 11:41:04',1),
  ('3c96b2ed-6f11-4cb8-b661-df42adc8a8e4','jmontoya','jmontoya@tdea.edu.co',NULL,'2018-09-18 14:18:04','2018-09-18 14:18:04',1),
  ('10dd623a-60e2-4c02-be79-3683924f9e33','mramirez','margarita.ramirez@upb.edu.co',NULL,'2018-09-19 09:01:55','2018-10-17 06:22:29',1),
  ('02622ac2-33cc-4835-82cf-3bfe9f86c9e6','jgranada','jhon.granada@udea.edu.co',NULL,'2018-09-19 10:16:56','2019-03-04 14:40:12',1),
  ('a352170a-8cf7-4550-a30b-f61820f1169f','abarinas','abarinas@jdc.edu.co',NULL,'2018-09-19 22:01:48','2019-01-27 16:52:34',1),
  ('693ecd88-d1c0-420d-8b24-b9208bd1095b','scampana','sixto.campana@unad.edu.co',NULL,'2018-09-20 17:17:06','2018-09-25 14:03:59',1),
  ('058deab7-807c-4c70-bd6f-46535c2de768','jgallego','jonathan.bioingeniero@gmail.com','Colombia','2018-09-21 08:14:10','2018-09-25 21:58:24',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('bc6e50f2-dbe5-439c-9c63-efb16f338096','mgomez','magomez@unal.edu.co',NULL,'2018-09-21 08:24:38','2018-10-24 08:20:38',1),
  ('7cf8256b-c010-4e1f-8ee9-202c79ae48b8','jisele','jisele.guacheta@uniminuto.edu','Colombia','2018-09-21 20:02:27','2018-09-26 21:58:44',1),
  ('1ecd6e3b-6498-43e9-ad78-e5e966edb653','josenorono77','jnorono@urbe.edu.ve','Venezuela','2018-09-24 00:10:10','2019-06-23 11:48:36',1),
  ('0f19d489-0624-425e-b6a2-15df64a77984','idobrosz','idobrosz-gomez@unal.edu.co',NULL,'2018-09-24 01:02:49','2018-10-24 05:54:12',1),
  ('ebc75663-9a7a-4d9d-8fce-6df5feaa4bcd','hespinosa','hilespq888@gmail.com',NULL,'2018-09-24 01:06:28','2018-10-09 12:22:46',1),
  ('e067d594-df8e-4a7f-85a0-03d791532481','jleguizamon','julilegui@gmail.com',NULL,'2018-09-24 01:09:03','2018-10-15 18:29:35',1),
  ('04fe599a-f7e7-4ea1-81a0-07957053a63d','aruiz','amruizr@elpoli.edu.co','Colombia','2018-09-24 01:17:50','2025-06-10 08:06:24',1),
  ('c7aa7ce7-4bec-4afb-8dd0-a261a422f43c','jmarin','juanmarin@elpoli.edu.co',NULL,'2018-09-24 01:20:20','2019-02-28 23:03:26',1),
  ('09acbd33-2d16-4423-b248-4ace81ff3db2','jlondono','jorge.londono@upb.edu.co',NULL,'2018-09-24 12:23:10','2018-09-24 14:05:12',1),
  ('18b62d0b-fbf5-41cd-bd38-cc485232a2d5','gvelez','gloria.velez@upb.edu.co',NULL,'2018-09-24 15:40:23','2018-09-24 16:10:50',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('85668f69-fe7f-4bdf-ad7a-c250acf269d7','aoviedo','ana.oviedo@upb.edu.co',NULL,'2018-09-24 19:09:17','2019-07-18 12:28:07',1),
  ('819b273d-677b-4204-955e-8882a3b4149d','eoviedo','eaoc46@gmail.com',NULL,'2018-09-25 09:46:21','2018-10-09 11:06:34',1),
  ('ff324d15-812b-41ad-8fa2-a2cba5f57d48','johny_alvarez','johnyalvarez@itm.edu.co','Colombia','2018-09-25 09:46:28','2021-05-10 11:42:32',1),
  ('9ff4c5d2-95d7-4bf5-93a1-c9543694cabf','warteagasarmiento','wilfrido.arteaga@unimilitar.edu.co','Colombia','2018-09-25 10:04:05','2019-02-28 09:49:46',1),
  ('4ee59a67-8eaa-4d9e-8784-bce9942bcb51','nsepulveda','nasepulveda@elpoli.edu.co',NULL,'2018-09-25 10:21:47','2018-10-16 08:44:58',1),
  ('99c0fba5-1fff-4a8e-b82a-9e4e8f1f2b41','mgarcia','mariagarcia@elpoli.edu.co',NULL,'2018-09-25 10:29:55','2018-10-31 15:06:03',1),
  ('9f8b6932-2bb1-4e15-9b1b-a2c00928ec27','alcolorado','andrescolorado@elpoli.edu.co','Colombia','2018-09-25 11:33:14','2018-10-26 16:11:37',1),
  ('ce19483d-88dd-4c1d-b0c6-3b66e2f8c3e7','wpatino','walterpatino@elpoli.edu.co',NULL,'2018-09-25 12:11:52','2018-10-29 22:26:47',1),
  ('612dca28-0fe2-4ae8-a5f9-cb544c5afce2','phdrvv','phdrvv@gmail.com','Colombia','2018-09-25 16:34:46','2022-10-14 07:45:44',1),
  ('c2bf6d71-3bcf-493a-a196-0b487a6f706b','irivera','ismael.rivera@pascualbravo.edu.co',NULL,'2018-09-27 15:01:35','2018-11-13 09:09:00',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('83b9c878-8395-4d9f-a811-2e5bde1b7e3d','janyednall','janeth.lozano@campusucc.edu.co',NULL,'2018-09-27 15:51:18','2018-09-27 15:51:18',1),
  ('140cbbd4-2706-4adb-9aff-bfb6e88f5f39','sjaen','jjaen@udea.edu.co',NULL,'2018-09-28 09:07:56','2018-11-01 13:15:51',1),
  ('0850c462-2349-42ba-8431-05796ca0f597','jsanchez','juan.sanchez9@udea.edu.co',NULL,'2018-09-28 11:36:21','2018-10-08 17:02:10',1),
  ('1584139d-55e0-4647-bd3d-ef3602de48a2','jbohada','jbohada@jdc.edu.co',NULL,'2018-09-28 14:57:40','2018-12-11 08:11:01',1),
  ('ff2e7f0e-333c-4865-864b-fa584d3bb923','71743308','juliangiraldo@elpoli.edu.co','Colombia','2018-09-28 19:45:18','2018-10-01 11:40:07',1),
  ('bfbe002b-f744-40ab-b78f-f800eb10456b','lisandrovargas','lisandrovargas@mail.uniatlantico.edu.co','Colombia','2018-09-29 00:21:46','2019-06-19 13:41:34',1),
  ('233d64b5-5cda-484e-9e04-4f8563fcab02','ahoyos','jahoyosch@udea.edu.co',NULL,'2018-09-30 13:52:04','2018-10-01 15:11:40',1),
  ('3077dc87-3912-4d2e-911e-efdab20c1458','luzamunozd85','luza.munoz@udea.edu.co','Colombia','2018-09-30 15:07:22','2018-09-30 23:55:06',1),
  ('70aaf8ed-2caa-4f11-8d22-5d5f7db3dea1','hernan724','hernan_lopez54172@elpoli.edu.co','Colombia','2018-09-30 18:23:40','2019-05-17 09:42:47',1),
  ('f4bc4296-c1f5-4f34-b287-3f597f1c8bfb','guillermo_sanchez','gsanchezh@unal.edu.co','Colombia','2018-09-30 19:00:17','2019-12-04 10:09:06',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4d23f606-2e96-4b10-bff4-caecce5ea14e','margaritaperez','margarita.perez@udea.edu.co','Colombia','2018-09-30 21:48:09','2018-09-30 23:50:41',1),
  ('13297d2c-ff9f-4d02-877c-18a251f1d94e','orlmaldonado','orlmaldonado@unipamplona.edu.co','Colombia','2018-09-30 22:47:17','2019-01-29 13:32:54',1),
  ('6cd6cf4a-0761-4413-b04e-9018230ba9fa','nrojas','nrrojasr@unal.edu.co',NULL,'2018-10-01 08:34:59','2021-02-10 11:43:05',1),
  ('aef48e5b-1889-4da5-990e-27616dd307e6','mninogalvis','mninogalvis@gmail.com',NULL,'2018-10-01 16:48:11','2019-08-16 10:29:31',1),
  ('defb508c-881c-47a8-9e1f-51468c453222','cgomez','cristina.gomez@upb.edu.co',NULL,'2018-10-01 16:49:21','2018-11-02 14:19:30',1),
  ('cb4d2f21-d2d9-4c13-bce1-b3ab1c8e80ea','benjamin-atehortua','benjamin.atehortua@udea.edu.co','Colombia','2018-10-03 11:52:39','2019-05-28 15:38:33',1),
  ('96cf7c50-842c-4a87-ad2f-c968822823d7','avanegas','angelicavanegasp@unicesar.edu.co',NULL,'2018-10-03 14:06:48','2025-05-27 11:57:09',1),
  ('e08c4d4c-eeee-48f7-9abf-ce02606bb42c','lmontoya','luismontoya@unicesar.edu.co','Colombia','2018-10-04 09:38:06','2022-03-15 15:55:10',1),
  ('81265eab-a384-4472-a957-e2ba478ab057','ccristancho','cristhiancho8822@hotmail.com',NULL,'2018-10-04 11:14:22','2018-10-04 11:14:22',1),
  ('67290b04-ab3c-4805-b853-ab98916d4434','hhernandez','heahernandezm@correo.udistrital.edu.co',NULL,'2018-10-04 11:42:53','2018-11-15 10:23:28',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3648c973-fd08-4f78-a626-74c024b1cc2b','cedurangov','cedurangov@unal.edu.co','Colombia','2018-10-04 17:59:23','2018-10-25 13:49:53',1),
  ('004a774e-3ffa-4f55-8bbe-4aba2bf64922','rmanjarres','ramanjar@elpoli.edu.co',NULL,'2018-10-05 10:32:36','2021-02-09 20:57:54',1),
  ('2560ee7d-d4d1-44b5-8963-cbffad92381f','dtibaduizab','dtibaduizab@unal.edu.co',NULL,'2018-10-05 12:42:21','2018-10-26 11:19:59',1),
  ('7493ff29-72fc-47b8-9f9a-58c3c3769643','midomidi2013','marwaremas@gmail.com','Egypt','2018-10-06 13:21:40','2018-10-06 13:24:35',1),
  ('455fcdec-eabb-44cf-8aae-d7964cff7e1f','cmzapata','cmzapata@unal.edu.co','Colombia','2018-10-07 23:28:03','2018-10-08 09:07:28',1),
  ('f4c4de8e-a070-4cf8-b2b0-ba44c924e966','arojas','anfrojasgo@unal.edu.co',NULL,'2018-10-08 15:19:55','2019-05-29 06:24:50',1),
  ('54590001-b5be-4c41-b545-06061391b8c4','mrada','mrada@unicauca.edu.co',NULL,'2018-10-09 08:26:45','2018-10-17 11:02:35',1),
  ('8f6b1028-a3bc-4fb7-9648-743db7a808e7','carias','camiloariashenao@yahoo.com',NULL,'2018-10-10 08:17:43','2018-11-03 10:59:46',1),
  ('83c19e88-f9d0-42a2-94f5-2392ea4179fb','azapata','azapata@elpoli.edu.co',NULL,'2018-10-10 11:15:07','2018-11-26 15:21:24',1),
  ('40124253-faed-4d64-bb67-a1d4dfd8cbaa','ndmunoz','ndmunoz@elpoli.edu.co',NULL,'2018-10-11 11:51:25','2022-07-04 21:31:18',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('0ac2be7b-6504-4714-ada8-96d00de1daf5','jlramirez','joseramirez@elpoli.edu.co',NULL,'2018-10-11 12:40:36','2018-10-11 12:40:36',1),
  ('9d2fb0fa-c2dc-4711-bf6d-1d0fdc654819','jarrieta','jarrieta@eafit.edu.co',NULL,'2018-10-12 08:07:37','2018-11-26 08:42:10',1),
  ('5e4df9ba-dcf1-4b35-a9b4-ee358f7fe888','rgonzalez','gonzalez.ricardo@fuac.edu.co',NULL,'2018-10-12 14:53:14','2018-10-18 10:10:33',1),
  ('557e859c-b79e-4359-a41e-d4d9092039f3','gisaza','gustavo.isaza@gmail.com',NULL,'2018-10-12 15:48:32','2018-10-12 15:51:20',1),
  ('7e6732d3-65ed-4caa-924d-ec40ff904c3e','lcastillo','luis.castillo@ucaldas.edu.co',NULL,'2018-10-16 15:17:41','2018-11-09 08:44:46',1),
  ('b9177ce2-a5e8-4084-bac9-a1689fe243f5','sergio','sergio@peq.coppe.ufrj.br',NULL,'2018-10-18 01:04:10','2018-10-18 18:36:01',1),
  ('f9ba1eb7-50c9-4026-bf94-65c4737f2d43','deinismm','deinismm@hotmail.com',NULL,'2018-10-18 10:48:21','2018-10-22 10:10:28',1),
  ('bbd05408-9047-4a44-8e51-924051141d58','jhoncruz10','jh.cruz@udla.edu.co','Colombia','2018-10-18 15:17:59','2020-07-26 17:26:36',1),
  ('fa7c6560-8934-4e61-92f2-d5fc05ca8d70','jmplaza','jmplaza@gsyc.es',NULL,'2018-10-19 09:00:11','2018-11-05 14:13:44',1),
  ('16586bcf-998d-4919-b9e8-b0f522e6482d','rearboleda','rearboleda@elpoli.edu.co','Colombia','2018-10-19 10:27:04','2018-10-24 18:21:02',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('137ff68b-2d17-40b4-9c9e-e844dbd211a5','cordonez','cordonez@eng.famu.fsu.edu',NULL,'2018-10-20 12:54:29','2018-11-28 11:18:40',1),
  ('4359c1d8-9228-4bcc-b8ba-1bfa467acc42','josdanielmb','josdanielmb@gmail.com',NULL,'2018-10-21 13:27:46','2018-12-02 15:30:52',1),
  ('497d8bd0-d70f-4e1a-b3b1-26ac5d619642','nlondono','nelson.londono@udea.edu.co',NULL,'2018-10-22 09:05:15','2019-02-26 10:49:01',1),
  ('8ed720bd-2b93-458a-a8f1-80ff2762b048','jgaleano','julian.galeano@pascualbravo.edu.co',NULL,'2018-10-22 09:22:47','2018-10-29 16:00:18',1),
  ('a77c9966-a8c5-45b2-8db5-233b3c483e2f','fjlopez','fjlopez@elpoli.edu.co',NULL,'2018-10-22 11:23:53','2018-11-01 08:11:13',1),
  ('2c70f910-f670-4a9c-8c0f-482f607d015a','safernandez','safernandez@elpoli.edu.co',NULL,'2018-10-22 11:33:28','2018-11-19 09:19:34',1),
  ('2481890f-e031-4ba0-8e42-e81c84ffbe92','nflorez','nflorez@elpoli.edu.co',NULL,'2018-10-22 11:47:30','2018-10-22 11:47:30',1),
  ('c863a5a7-1482-4ef0-baad-25bd91841966','jlhenao','jlhenao@elpoli.edu.co',NULL,'2018-10-22 17:04:43','2020-09-18 19:40:39',1),
  ('fa6f6307-aab9-415d-abb5-557e94ccc58a','mmontoya','mmontoya@elpoli.edu.co',NULL,'2018-10-22 17:08:22','2019-03-08 11:50:11',1),
  ('a883db3d-f0f1-4fcc-a923-1212134fe307','eloaiza','eloaiza@elpoli.edu.co',NULL,'2018-10-22 17:11:16','2025-01-23 15:32:20',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('16893da2-5d72-4fec-9b6d-a69267cc945d','rlisaza','rlisaza@elpoli.edu.co',NULL,'2018-10-22 19:08:52','2018-11-05 22:51:21',1),
  ('339370e5-92a8-4d08-8f75-3cf64d97159d','jespinosa','jeespinosa@elpoli.edu.co',NULL,'2018-10-23 14:12:10','2025-02-06 15:41:31',1),
  ('4d8d2812-8c39-45fd-addc-4956eba56534','molivares','manuel.olivares@ucn.cl',NULL,'2018-10-23 14:43:26','2018-11-07 09:07:04',1),
  ('e9873cc0-550c-4b81-8f9f-2e729a908877','carosero','carosero@elpoli.edu.co',NULL,'2018-10-23 18:52:57','2018-11-08 08:54:28',1),
  ('889a676c-69f3-4dde-b748-02b5140a6afb','aperez','alexander.perez@escuelaing.edu.co',NULL,'2018-10-23 18:56:29','2018-11-08 08:10:00',1),
  ('6ccc005f-3d85-4ce8-a1f3-728a14b6c51a','yesicanieto','yesica.nieto@correo.uis.edu.co','Colombia','2018-10-23 22:34:51','2018-11-22 03:01:19',1),
  ('4f8809c1-89bf-48be-aaef-f223ef9204ba','fchejne','fchejne@unal.edu.co',NULL,'2018-10-25 22:58:54','2018-11-03 18:30:51',1),
  ('0806bcb4-4feb-4636-810d-bab606c19c2a','dgranados','dgranados@uco.edu.co','Colombia','2018-10-26 09:39:09','2018-11-20 11:22:35',1),
  ('46e9a631-fc2c-47ee-af72-6cf073dc6177','mrquesada','mrquesada@elpoli.edu.co',NULL,'2018-10-26 09:42:17','2024-04-29 09:16:50',1),
  ('26482180-7621-474b-ac2c-2016c13df466','jwbranch','jwbranch@unal.edu.co',NULL,'2018-10-27 21:02:55','2018-11-10 19:25:22',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c65fa937-90ab-4527-a684-d8174ffaf47c','saguti','sagutierrez@udem.edu.co','Colombia','2018-10-29 10:21:31','2019-04-10 15:29:28',1),
  ('b4bb3e69-2286-42d7-b70d-a96f117f50e7','mguerrerou','mguerrerou@unbosque.edu.co',NULL,'2018-10-29 14:17:24','2018-11-09 12:21:17',1),
  ('0d41884d-c3af-427c-83ae-4029ec45771e','6juanrodrigosalamanca7','juan.salamanca@usantoto.edu.co','Colombia','2018-10-29 19:41:11','2019-07-25 12:02:17',1),
  ('33bf27e2-346b-462b-a47b-066ba52f894e','jfdlcruz','jfdlcruz@unal.edu.co',NULL,'2018-10-29 23:02:06','2018-11-15 14:36:05',1),
  ('14251860-b26f-4f4f-85ea-ab08426fbef9','maritatorre','marita.torre@gmail.com','Argentina','2018-10-30 06:58:03','2018-10-30 06:59:20',1),
  ('64ba4fb7-ed2d-4ad2-85a9-a14b825e2701','oquinte1','oquinte1@eafit.edu.co',NULL,'2018-10-30 11:17:29','2018-11-14 06:37:29',1),
  ('7415ef23-626f-4dc1-95be-94ab56dcd829','cgmez','carlos.gomez@ingenieros.com',NULL,'2018-10-30 12:40:11','2018-10-30 12:40:11',1),
  ('4efc70d3-deb8-4899-9d75-9065480ae714','paulaortiz','paulaortiz@itm.edu.co',NULL,'2018-10-30 12:42:57','2018-12-04 09:46:43',1),
  ('8dadc9aa-358d-4f27-a990-bfad108c7a6e','molivera1952','martha.olivera@udea.edu.co','Colombia','2018-10-30 16:30:43','2019-04-25 10:35:50',1),
  ('5fc9e531-52cb-45d8-aef4-b4e245677225','pepeluissg','pepeluissg@hotmail.com',NULL,'2018-10-30 16:41:46','2018-12-05 09:46:10',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5a8bdda4-e92c-4b27-b9f5-29399c019588','melybar','melisa.barrera@udea.edu.co','Colombia','2018-10-31 11:08:42','2019-10-22 11:12:58',1),
  ('6eb717f7-a739-40f9-91c2-7844181a3371','maurocallejas','mauro.callejas@uptc.edu.co','Colombia','2018-10-31 22:01:04','2019-03-05 14:09:07',1),
  ('c2934b06-cd10-447b-8b0d-fad37dba7f31','gtorres','gtorres@ces.edu.co','Colombia','2018-10-31 23:47:40','2018-12-17 23:54:12',1),
  ('e6758cb6-ddc5-419e-a91d-4ac5325fd378','mbetancur','manuel.betancur@upb.edu.co',NULL,'2018-11-01 00:58:53','2018-12-07 10:26:50',1),
  ('81ac784a-37f2-461e-b501-1a460b1da482','gsuarez','guiovanny@gmail.com',NULL,'2018-11-01 15:04:16','2023-11-30 09:54:04',1),
  ('dbb8d836-cb51-4185-b528-2cd630735a5f','jdpulgarin','jdpulgarin@uao.edu.co',NULL,'2018-11-02 00:18:26','2018-11-08 18:13:52',1),
  ('6faf5087-0530-4a37-8b11-9d8dca305ce7','andresru','andresru@uan.edu.co',NULL,'2018-11-02 12:39:46','2018-11-16 21:10:49',1),
  ('3daafd17-2dbe-4c36-80b9-e1bc13dc8b04','gsanchez','sanchez.gt@gmail.com',NULL,'2018-11-06 16:49:36','2018-12-04 13:32:40',1),
  ('e58dbaaf-0084-4aa5-baeb-8ba5a0632e42','luzma1','franluzma@hotmail.com',NULL,'2018-11-07 09:34:51','2018-11-07 09:57:58',1),
  ('a57a238e-25a6-44c4-b636-82eaa0db61f5','jvidalcc','jvidalcc@gmail.com','Colombia','2018-11-07 14:56:02','2018-11-07 15:00:32',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c4869c59-f3b1-422a-8683-10f2085c5a84','persaint2004','pedro.sanchez@unimilitar.edu.co','Colombia','2018-11-08 09:38:04','2025-10-01 14:33:08',1),
  ('14fb39dc-9514-4e19-813a-5b7988d5c0cd','jmgil','estjmgil@infovia.com.ar','Argentina','2018-11-08 14:20:12','2018-11-08 14:20:12',0),
  ('c34394d8-d675-40ee-8c68-59380acfcde1','amartinez','armartinez@elpoli.edu.co','Colombia','2018-11-08 14:34:00','2025-04-10 07:49:52',1),
  ('4d749d08-87ac-43de-9954-1875ec583433','carlosmera','carlosmera@itm.edu.co',NULL,'2018-11-08 16:40:09','2018-11-21 09:20:09',1),
  ('2d196614-2eef-4f11-9e41-0636e611965a','monica_mercado20','monica.mercado20@gmail.com','Colombia','2018-11-09 09:48:55','2018-11-09 09:50:36',1),
  ('24f39c83-7cc4-4131-8a3f-2cd953bfd35e','edyeort','edyeort@gmail.com',NULL,'2018-11-09 13:48:36','2018-11-22 09:17:48',1),
  ('de1b8546-2222-4a43-92ee-18a868e6ebca','alejorestrepom','alejorestrepom@gmail.com',NULL,'2018-11-09 21:08:45','2018-11-23 17:59:37',1),
  ('534f234a-8580-4d81-87b5-278d4dbf2d71','antonio_cerroque','antonio.cerroque@hotmail.com','Mexico','2018-11-09 22:47:37','2018-11-09 22:55:34',1),
  ('9b41f175-b763-4923-b88a-5e70837ce786','jesusmarialopezl','jmaria.lopez@udea.edu.co',NULL,'2018-11-09 23:37:27','2019-05-27 16:13:57',1),
  ('68415cf5-a20b-4c93-8509-d8343c9bd821','isasotocas','isabelsoto@convergenteconsultores.com','Colombia','2018-11-11 22:42:16','2019-01-11 10:52:07',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('0dcbb6c9-8d80-4143-9c8d-3aab0e80a685','ruth2608','ruth_2608@hotmail.com',NULL,'2018-11-12 13:39:13','2019-10-13 20:44:48',1),
  ('6e57a53e-a81b-4370-b36d-f71639812078','davidhoyos','davidhoyos@gmail.com','Canada','2018-11-12 17:24:39','2019-11-06 18:21:06',1),
  ('9d34c1fa-fd4c-42b4-bf6b-749676dee90e','leidy_yohana_gil_sepulveda','fonogilsepulveda@gmail.com','Colombia','2018-11-12 20:49:02','2018-11-24 18:01:13',1),
  ('0878f7a7-f632-4bd8-9949-fd3ed26f6b42','edgar1871','edgar.admon1971@gmail.com',NULL,'2018-11-13 15:25:18','2018-11-13 15:48:54',1),
  ('f12f5d1e-e3e5-4995-8b11-ed3b5011d300','20moni-18','monicaa.montest@ecci.edu.co','Colombia','2018-11-14 19:16:28','2018-11-19 22:32:37',1),
  ('a7aa0e13-a438-4c98-b7d5-d97f27a8036b','yeilerq','yeilerq@gmail.com',NULL,'2018-11-14 21:03:22','2018-11-24 09:32:57',1),
  ('457833b6-cbe9-4f93-89ea-68a27ef2e3e7','mpaez','martha.paez@correounivalle.edu.co',NULL,'2018-11-15 16:15:46','2018-11-15 16:15:46',1),
  ('b84140bb-9cfc-46c9-85c6-75edc886167f','leovp88','lvaldivia@up.edu.mx','Mexico','2018-11-16 10:00:27','2018-11-20 12:16:22',1),
  ('6dc6cb2c-00c8-4f61-8720-f9bf7dfa6548','grestre0','grestre0@unal.edu.co',NULL,'2018-11-16 12:39:21','2018-11-29 11:40:06',1),
  ('f233e25a-5d9f-4060-b88d-c3979183b187','cperez','cf.perez@uta.edu.ec',NULL,'2018-11-17 12:27:45','2018-11-23 20:44:46',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3b66f70e-1d97-4e31-b555-a43c537ad60c','jenny_2018','jenny.galeanoca@amigo.edu.co','Colombia','2018-11-17 13:44:26','2018-11-17 13:46:17',1),
  ('22e457c6-0d20-42b9-a8c8-3d6d059edfbb','neil_jimenez','neiljimenez@unicauca.edu.co',NULL,'2018-11-17 13:52:15','2019-02-13 23:48:13',1),
  ('3a7fa901-472f-405a-ab13-427fe3fd8007','hmoncada','hemerson.moncada@gmail.com',NULL,'2018-11-17 18:50:35','2019-02-24 09:22:56',1),
  ('7ca21c41-eea1-4e5d-bef1-899ed2230420','jairhcasrom','jairhcasrom@gmail.com',NULL,'2018-11-17 19:05:16','2018-12-23 15:14:17',1),
  ('868fba9e-69f1-435f-9bcf-2e7b52e5859c','antonellasardi06','antonellasardi06@gmail.com',NULL,'2018-11-18 23:37:26','2018-12-26 10:43:29',1),
  ('40e1712e-4c5f-44df-971a-77aa09e87187','nvasquez','nvasquez@unal.edu.co',NULL,'2018-11-19 10:39:04','2018-11-19 10:39:04',1),
  ('a0db26db-f41b-4786-ad81-42d206a872fd','eroviedo','eroviedo@uis.edu.co',NULL,'2018-11-19 14:46:52','2019-01-17 15:11:58',1),
  ('a4a54dab-d845-462d-8302-a26f793a0674','alejandrayezzi','alejandrayezzi@gmail.com',NULL,'2018-11-19 14:53:18','2019-09-19 15:40:37',1),
  ('635ae0d5-888b-404c-9146-815fe092af31','43926798','johanahernandez21@gmail.com','Colombia','2018-11-19 17:33:58','2018-11-28 17:15:14',1),
  ('209a159f-4386-48d9-ae49-80a0dd85b0d8','mamariles','mauricio.amariles@usbmed.edu.co',NULL,'2018-11-20 15:16:29','2018-12-05 15:20:03',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f292ec2c-dcaa-4da8-a7d6-af22d2d62942','dianajllo','diana.jaramilloq@upb.edu.co',NULL,'2018-11-20 16:10:28','2018-12-12 14:36:22',1),
  ('878b9a6e-c060-42ec-8a18-8e70397e8f80','dbigio','dbigio@uniandes.edu.co',NULL,'2018-11-21 15:36:56','2018-12-04 21:14:45',1),
  ('7ad43e2b-01e6-4e47-92cd-894635ddb646','jorgenriquez','revistaorinoquia@unitropico.edu.co','Colombia','2018-11-21 15:59:11','2019-04-02 15:21:21',1),
  ('6ff49537-0c29-42fc-8bb4-1dbf01a55043','kjsalazarf','kjsalazarf@unal.edu.co',NULL,'2018-11-21 21:37:51','2018-11-21 21:37:51',1),
  ('bad11b79-9285-4cbc-becc-c705caca3a45','pkent','pkent@elpoli.edu.co','Argentina','2018-11-22 08:56:18','2018-11-22 08:56:18',1),
  ('d43d9915-a7eb-4568-a2d5-76672858b56b','lrocha','larocha@elpoli.edu.co','Colombia','2018-11-22 09:03:04','2025-09-14 13:38:36',1),
  ('b4423c9f-6af4-4464-8efe-5a318f241f2e','hbustamante','hbustamante@elpoli.edu.co','Colombia','2018-11-22 09:04:59','2018-11-22 09:04:59',1),
  ('da66559c-5f9f-467a-87ce-bf7e7e7b83bc','rmontejo','rmontejo@elpoli.edu.co','Cuba','2018-11-22 09:06:28','2018-11-22 09:06:28',1),
  ('fd8ba596-de35-48df-803d-ad73c8670592','soquendo','soquendo@elpoli.edu.co','Colombia','2018-11-22 09:07:46','2018-11-22 09:07:46',1),
  ('86ef2783-cae8-4fb0-b92e-fe51aa8aaaf5','ecolino','ecolino@elpoli.edu.co','Argentina','2018-11-22 09:09:26','2018-11-22 09:09:26',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2ba83ebd-46c0-4ffc-aa67-9f84678bf603','sjasso','sjasso@elpoli.edu.co','Mexico','2018-11-22 09:10:54','2018-11-22 09:10:54',1),
  ('371e6e28-4829-4984-b56c-4284e7de1056','oaktouf','oaktouf@elpoli.edu.co','Canada','2018-11-22 09:27:19','2018-11-22 09:27:19',1),
  ('aea86c69-a0a2-4cf8-bdc5-10ce9076f2fb','achanlat','achanlat@elpoli.edu.co','Canada','2018-11-22 09:30:27','2018-11-22 09:30:27',1),
  ('158e21c2-6d58-490f-a520-34a32f69a1b5','mneef','mneef@elpoli.edu.co','Chile','2018-11-22 09:31:47','2018-11-22 09:31:47',1),
  ('6aa8c188-09ea-4893-8939-124f49752f0e','eleff','eleff@elpoli.edu.co','Mexico','2018-11-22 09:33:08','2018-11-22 09:33:08',1),
  ('63c29e29-855a-44cf-86fd-bf02a592f08c','jtua','jtua@elpoli.edu.co','Spain','2018-11-22 09:34:35','2018-11-22 09:34:35',1),
  ('1f46fcc2-facb-426d-8170-d9520ff35431','clarrinaga','clarrinaga@elpoli.edu.co','Spain','2018-11-22 09:35:55','2018-11-22 09:35:55',1),
  ('4d3fa09a-6ec7-4a71-96b9-d5a7a4d63921','cgarcia','cgarcia@elpoli.edu.co','Colombia','2018-11-22 09:37:08','2024-02-14 10:00:08',1),
  ('50cfe45e-110a-4c93-8c32-8c294950fe7c','flopez','flopez@elpoli.edu.co','Colombia','2018-11-22 09:40:59','2018-11-22 09:40:59',1),
  ('0d253fab-ee3e-4664-adaa-4c5a8985fa32','gcalderon','gcalderon@elpoli.edu.co','Colombia','2018-11-22 09:42:01','2018-11-22 09:42:01',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('eaefa367-11c0-430e-be62-88bd682bb81b','rfranco','rfranco@elpoli.edu.co','Colombia','2018-11-22 09:42:57','2018-11-22 09:42:57',1),
  ('e7a6cc10-0c40-4b64-8003-1974586fca5f','carosalazarl','carosalazarl@gmail.com',NULL,'2018-11-23 10:55:24','2018-12-07 16:10:23',1),
  ('ea471f63-898a-4b8a-8b61-3263090058e5','oriana2018','orianalujipe@gmail.com','Argentina','2018-11-23 15:27:26','2025-09-25 02:38:16',1),
  ('90aae1e8-9c3b-42bb-a0dc-ac7391f266f6','jvillarraga','junes.villarraga@udea.edu.co',NULL,'2018-11-26 15:49:08','2018-12-10 12:01:52',1),
  ('7a63a8b6-5c1b-479b-bebc-a8264b39717f','dcuartas','diego.cuartas@upb.edu.co',NULL,'2018-11-26 15:51:59','2018-12-08 17:47:52',1),
  ('ce15ea58-261d-46c5-8421-1a31a35da43a','joseiperez66','joseiperez66@hotmail.com',NULL,'2018-11-27 08:39:29','2018-11-29 09:38:58',1),
  ('43d3ce73-3dd3-4a70-bf38-8cf354357276','lflondono','lflondono@elpoli.edu.co',NULL,'2018-11-28 00:53:58','2018-12-14 11:06:35',1),
  ('2bd44df5-7cf6-42d7-9ff7-3e2b99f15e21','ctamayo','carlos.tamayo1@udea.edu.co',NULL,'2018-11-28 00:56:35','2018-12-10 13:39:00',1),
  ('8fc494c1-41c4-4610-b9fa-2123fb855505','dhurtado','dhurtado@ces.edu.co',NULL,'2018-11-28 13:51:14','2018-12-14 08:30:32',1),
  ('447269a0-95fe-4fe0-9719-94ca53bdaf28','ldgonzalezc','ldgonzalezc@hotmail.com','Colombia','2018-11-29 21:34:29','2019-09-10 11:08:29',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b46bdbad-8fce-419b-9a0f-5d184cf66b66','omargutierrez','omargutierrez@itm.edu.co',NULL,'2018-11-30 12:30:51','2018-12-18 10:26:15',1),
  ('66bd4b18-0e17-4a6d-a8c4-95ea37d3db5b','saulbustamante','saulbustamante@elpoli.edu.co',NULL,'2018-12-01 01:23:48','2018-12-07 15:44:08',1),
  ('93abbc3b-71ea-4708-9002-823d355b9b5c','wcarrizo-1008','waltercarrizo10@gmail.com','Argentina','2018-12-01 16:49:59','2018-12-01 16:51:15',1),
  ('c1886b15-02c2-403d-a3b1-d1e4774aa818','ramumo','rodolfo.munevar@gmail.com','Colombia','2018-12-04 11:21:17','2018-12-04 11:23:41',1),
  ('fc9439aa-b83e-4c81-a17f-3f74401446a5','miccmarin','micc.marin@gmail.com',NULL,'2018-12-07 13:53:46','2018-12-07 13:55:12',1),
  ('c2c30794-ddd4-45fc-8323-165817d0cfbb','yumaseal','yumaseal@gmail.com','Colombia','2018-12-10 00:12:39','2018-12-10 00:14:17',1),
  ('0602c506-b56d-4ea6-9488-21d4b5cb664c','gerzoncalle','gerzon.calle@udea.edu.co','Colombia','2018-12-14 16:21:37','2022-12-19 11:46:50',1),
  ('b8ca909d-b6f1-4766-9b61-364ce201f5ae','juan','jcherna2@unal.edu.co',NULL,'2018-12-15 15:17:21','2021-09-07 20:37:31',1),
  ('bdf98d32-6e6e-4928-badb-19f91deecd89','marianaarmendariz','m_armendariz@outlook.com',NULL,'2019-01-15 04:26:17','2019-01-15 04:28:03',1),
  ('11b1055c-a2e8-4de7-be31-e4de83370798','frankdelgado','a00792516@gmail.com','Colombia','2019-01-15 16:59:17','2019-01-21 16:33:44',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('34e484fa-949c-4235-a725-9bab61e770da','yamilaheram','yaheram@yahoo.com.ar','Argentina','2019-01-15 18:31:37','2019-04-09 14:06:23',1),
  ('92c47d95-3d0c-478e-b4c3-a1266f7dc890','magda','magdamares@gmail.com','Mexico','2019-01-16 11:59:56','2019-01-16 12:00:49',1),
  ('6c15c5d2-c248-4008-b232-fbe89592924f','yimmymontoya3','yimmymontoya3@gmail.com','Colombia','2019-01-18 08:28:36','2025-09-17 15:56:49',1),
  ('a7f3fd2e-b994-4bfa-b9db-1d582ff91a0c','dalejandrodiez95','diez11diego@gmail.com','Colombia','2019-01-25 08:03:01','2019-08-29 12:19:18',1),
  ('0bd7db13-1dc5-4bdb-b162-681c5ee04c08','poletto','jpoletto@uol.com.br','Brazil','2019-01-28 05:12:11','2019-01-30 06:42:12',1),
  ('42c0aabe-4fbc-4cb8-b9b9-b601b066892c','evelialm','evelialm42@gmail.com',NULL,'2019-01-29 13:47:35','2020-11-30 19:49:40',1),
  ('b60d2d49-646d-439c-b1cd-4456e23c9f5e','alfonso_jm01','alfonso_jm01@hotmail.com','Mexico','2019-01-29 22:50:57','2019-03-05 18:52:05',1),
  ('b83ffb63-ddda-48e0-88bb-711370d09539','jgcg','jgcg@ineel.mx',NULL,'2019-01-29 22:57:21','2019-03-28 13:23:05',1),
  ('4d06397c-9cbb-44e5-8bfa-73bf998ca463','jpoletto','jpoletto@etec.sp.gov.br',NULL,'2019-01-29 23:16:34','2019-01-29 23:16:34',1),
  ('068fad4c-fdd0-48ed-86f0-fa2757c69298','sergio_madrigal','sergio_madrigal54181@elpoli.edu.co',NULL,'2019-01-31 16:09:18','2019-03-24 13:50:10',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('14222ff0-7c61-41cc-916f-b7529a82d21b','sxcarvajalq','sxcarvajalq@unal.edu.co',NULL,'2019-02-01 09:16:50','2019-02-22 17:59:20',1),
  ('7e41a33d-a8d2-464b-b02c-128cf5b46a50','sergiodelacruz71','sergiodelacruz@educ.ar',NULL,'2019-02-03 17:53:15','2019-02-03 17:55:26',1),
  ('3c8dae35-19d6-468f-b094-c0f510d4213a','mromeroorue','mromeroorue@yahoo.com.ar',NULL,'2019-02-04 16:24:57','2019-03-13 16:04:50',1),
  ('e9f3827a-89ed-451d-b335-dd2437a322f2','acampillo','ana.campillo@udea.edu.co',NULL,'2019-02-05 10:40:37','2019-02-08 11:57:27',1),
  ('66ce5655-2609-4e13-bf90-1bc4765ee5c4','vmut','vmut@inaut.unsj.edu.ar',NULL,'2019-02-05 10:44:26','2019-02-26 09:08:08',1),
  ('e1ea071a-dd11-40e2-ac76-10446a33bc69','gmeneses','gustavo.meneses@usbmed.edu.co',NULL,'2019-02-05 16:52:06','2019-02-24 20:51:29',1),
  ('8ef27a6d-890e-4671-a307-39b3260b4ae8','luisco5049','luisco5049@yahoo.com',NULL,'2019-02-07 10:28:10','2019-02-20 19:54:43',1),
  ('872b34b5-b459-4b9c-82bf-4fb57cb066b2','rcarelli','rcarelli@inaut.unsj.edu.ar',NULL,'2019-02-07 15:01:42','2019-03-18 08:20:08',1),
  ('5575c944-bc78-4505-92b8-7b349aeacef5','jibenito','jibenito@ono.com',NULL,'2019-02-11 09:59:06','2019-02-26 00:18:30',1),
  ('e37a5794-165a-4179-bfb0-8c30fc0348c2','jcgiacometti','jcgiacometti@espe.edu.ec',NULL,'2019-02-11 10:11:50','2019-03-14 23:13:18',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('82b2a8fc-bcbf-445a-80a5-c039effcbc80','fbersosa','fbersosa@gmail.com',NULL,'2019-02-11 10:13:50','2019-03-25 08:30:59',1),
  ('12871a05-48ac-4830-ad48-d22c409b8933','ingsanchezcastro','ingsanchezcastro@gmail.com',NULL,'2019-02-11 16:02:52','2019-03-31 10:41:42',1),
  ('da6aba5c-96b7-4c2e-87f8-d754f464eed2','diegobotero6','diegobotero6@hotmail.com',NULL,'2019-02-11 17:04:03','2019-02-17 16:01:34',1),
  ('eb429345-7e80-49cf-a57b-5db503a859fb','emgaleanor','emgaleanor@unal.edu.co',NULL,'2019-02-11 21:18:51','2019-03-24 16:35:45',1),
  ('6f780051-acc6-4bdd-a5ea-f959cf4af8d1','lmromerom','lmromerom@unal.edu.co',NULL,'2019-02-12 08:55:26','2019-02-12 08:55:26',1),
  ('9db0679d-38b2-4199-93b6-347599e87070','lacsunam','lcruz13@icloud.com',NULL,'2019-02-12 13:11:45','2019-02-20 14:51:57',1),
  ('6bb5b0e4-3ef1-42c2-b124-06f5bb1f788c','mcruz','maria.cruz@unillanos.edu.co',NULL,'2019-02-12 16:11:17','2019-04-26 15:15:46',1),
  ('82718870-d4e7-4797-abc4-cccc1a70fd01','jutrista','jatristanchoo@udistrital.edu.co','Colombia','2019-02-12 18:02:04','2019-02-12 18:04:25',1),
  ('404af9d7-9352-45d0-b7b9-b683647af864','eavendano','eduardo.avendano@uptc.edu.co',NULL,'2019-02-12 19:40:27','2019-02-13 15:23:40',1),
  ('aca54bb2-96d7-4f1b-85d3-b8ae8532e5db','acardenas','ana.cardenas@udea.edu.co',NULL,'2019-02-12 19:43:19','2019-02-12 19:43:19',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3317f8cf-45dc-40d2-bded-a9fd095c93c8','stiwar_salinas96','stiwar_salinas01141@elpoli.edu.co',NULL,'2019-02-13 10:53:49','2019-02-13 10:54:55',1),
  ('ebb4dbec-c551-4ab9-9d35-df3e2a74634b','jeymmywalteros','jeymmywalteros@gmail.com',NULL,'2019-02-13 23:23:39','2019-02-13 23:23:39',1),
  ('48c9e4a5-9872-4cd5-a39d-fc88d36a979d','juanpadierna','juan.padierna@udea.edu.co','Colombia','2019-02-14 08:55:54','2019-02-28 11:07:56',1),
  ('6837f132-fbc4-4cc3-a0d8-3b1d9a78896e','71699433','rhenaovelez@gmail.com','Colombia','2019-02-14 17:04:35','2019-02-14 17:07:32',1),
  ('f588a0af-1236-4c78-918c-8e3218652af8','mcgutierrezespinosa','mariana.gutierrez@unillanos.edu.co','Colombia','2019-02-15 01:08:12','2019-12-10 12:24:54',1),
  ('104314fa-23d2-40a4-a14f-57ac1b0ae856','ramiroferreira','ramiroferreira91@gmail.com','Brazil','2019-02-15 07:35:19','2019-02-15 07:35:19',1),
  ('509babaa-a7fd-4bff-aac0-3aff32b5e788','eabedoya8','eabedoya8@gmail.com',NULL,'2019-02-18 10:04:58','2022-11-18 14:19:07',1),
  ('08130375-044b-4f40-94ad-e2f8f6fcf32c','famarcar','famarcar@saber.uis.edu.co','Colombia','2019-02-18 22:05:15','2022-01-29 10:03:00',1),
  ('f92f9e83-482d-4159-bc32-d5a6ad4f7bbf','lmonico','lmonico@usbbog.edu.co','Colombia','2019-02-19 14:01:55','2019-02-28 16:29:43',1),
  ('b04e9fa5-78e5-4ba2-8708-c9e4edd2b7ad','dfernandez','david.fernandez@udea.edu.co','Colombia','2019-02-19 17:27:12','2021-06-09 16:27:54',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('9812221d-d083-4df7-8106-f46b6d781791','pakent630','kentpatricia@gmail.com','Argentina','2019-02-19 19:06:04','2023-11-28 06:31:12',1),
  ('33cdbb16-e9ee-40ff-a02d-daec4f8397e7','90061368689','jorgeluisesjara@gmail.com','Colombia','2019-02-20 04:38:14','2019-02-20 04:39:01',1),
  ('0d7ab3e8-1d4e-4cd7-8674-1699f6fa9a8f','lfletscher','luis.fletscher@udea.edu.co',NULL,'2019-02-20 11:47:29','2019-03-06 08:18:23',1),
  ('1312eb7c-3973-4ce4-9900-e452f924fe8d','jmendoza','juand.mendoza@udea.edu.co',NULL,'2019-02-20 11:54:02','2019-03-05 18:14:56',1),
  ('b9aa6c9c-ec74-4813-ac9e-55d37fb27632','juandacoli','juan.corrales@unimilitar.edu.co','Colombia','2019-02-20 16:18:43','2021-08-11 16:48:59',1),
  ('b8633c67-40bc-4302-8959-7bb1180e7cfc','jegomez','jegomez@elpoli.edu.co',NULL,'2019-02-25 10:45:02','2019-03-11 21:53:47',1),
  ('ac961e95-e5b2-4230-bad2-a366274f91bc','gpatino','adolfo.patino@udea.edu.co',NULL,'2019-02-25 19:33:35','2019-03-11 18:17:06',1),
  ('bb8a1c85-9fc2-402f-8da6-7da823165e85','claudia_carmona','claudia.carmona@upb.edu.co','Colombia','2019-02-26 22:07:26','2019-05-14 08:13:00',1),
  ('bbbbb622-7e2f-42ec-a933-3b39deeddc77','nick_almeida','nickalmeida@gmail.com','Colombia','2019-02-28 00:43:06','2019-06-07 14:54:22',1),
  ('99676360-4a0c-4d25-96d9-a7c98567c062','plunat','plunat@unal.edu.co',NULL,'2019-02-28 22:36:11','2019-03-13 19:51:20',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('dc68494b-ae4f-44fa-b19e-217745df4585','odflorez','odflorez@udistrital.edu.co','Colombia','2019-03-01 12:53:49','2019-03-01 12:55:17',1),
  ('ba5ed091-7e95-463a-a069-34948466adbe','cptakeuchit','cptakeuchit@unal.edu.co',NULL,'2019-03-02 10:13:39','2019-03-21 21:48:09',1),
  ('23feca9f-82e2-419d-bfb2-da3c4f8c213e','caferen','caferen@unicauca.edu.co',NULL,'2019-03-03 11:23:00','2019-03-16 18:45:29',1),
  ('21f7fcdf-3181-477d-9b1d-b2ad92d2fdc9','alvilla032','aida.villa@udea.edu.co',NULL,'2019-03-03 20:05:32','2019-06-19 21:12:58',1),
  ('7934ce4c-9779-46d6-80e4-4588b48e41d2','porrasalvarez','porrasalvarez@gmail.com',NULL,'2019-03-03 20:11:39','2020-09-11 17:41:36',1),
  ('c79388aa-986d-4c06-8c9d-4213a0c7044e','jaramirez','juanantonioramirez.merlano@gmail.com',NULL,'2019-03-03 21:20:10','2019-04-15 12:44:01',1),
  ('5fc99695-f54d-496c-a43d-8ecd6d18923f','lumibo30','luis.borras@uptc.edu.co','Colombia','2019-03-06 10:29:52','2019-03-06 10:31:16',1),
  ('d5bc746b-2f7a-4c03-b959-5b0dea142ef3','eliana-celis','eliana.celis@upb.edu.co','Colombia','2019-03-07 15:10:27','2019-03-07 15:13:02',1),
  ('ee25cbdc-4412-4ec9-b431-4a4d97495b76','juancubillos','juancubillos@unicesar.edu.co',NULL,'2019-03-08 13:22:15','2019-08-27 08:40:54',1),
  ('75e05dcc-ad24-471b-b683-3952801f0b93','camherrera837','camherrera837@gmail.com',NULL,'2019-03-08 19:11:44','2019-04-14 11:42:10',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('20cb5bed-f87c-40f2-a581-e2cd899a8db5','daum','daum@uninorte.edu.co',NULL,'2019-03-10 22:30:26','2019-03-25 15:09:20',1),
  ('785534d4-0257-4828-b48e-61f614bb3c33','nemattac','nemattac@unal.edu.co',NULL,'2019-03-10 22:46:02','2019-03-10 22:46:02',1),
  ('749cb885-c9ee-4176-b81a-5c41e181c00f','jluna','jluna@uaem.mx',NULL,'2019-03-10 22:53:18','2019-03-22 11:22:31',1),
  ('72f0a6e3-30b3-476f-a6d1-2f456af65577','jsvelasco17','jsvelasco17@gmail.com',NULL,'2019-03-11 08:47:57','2019-04-24 18:42:33',1),
  ('f6413831-e20f-49a8-a1aa-4b0a30cef73c','dvisbal','dvisbal@unimagdalena.edu.co',NULL,'2019-03-11 10:50:40','2019-03-11 10:53:45',1),
  ('fd2e1629-fac6-428b-baed-11a6e9280fb1','ivan','ivanjaramillo458@gmail.com','Colombia','2019-03-11 16:45:22','2025-06-06 15:03:38',1),
  ('725fcb03-c849-4073-aef7-c4cc19ea0c4f','jhonjerleytorres','jhonjerleytorres@gmail.com','Colombia','2019-03-11 17:11:41','2022-02-06 19:27:06',1),
  ('c2c9304b-82b9-46b0-a96e-f421efbc8122','adelmendoza','adelmendoza@mail.uniatlantico.edu.co',NULL,'2019-03-12 11:22:05','2019-04-05 14:14:25',1),
  ('b80658d3-924b-4a57-b781-3cfbe9e43bbb','lolyrome','lolyrome@yahoo.com',NULL,'2019-03-12 16:04:59','2019-03-27 22:17:48',1),
  ('a287a3df-e218-47b3-a35b-2c032d8e623d','djma_18','djma_18@hotmail.com',NULL,'2019-03-12 20:42:51','2019-05-08 15:17:52',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7e312198-6183-49df-9e3e-fa07f09c7606','evermster','evermster@gmail.com',NULL,'2019-03-13 09:25:31','2019-04-12 16:50:00',1),
  ('8dd431e6-3e15-4f1a-af01-44d16a430740','vsanhuez','vsanhuez@udec.cl',NULL,'2019-03-13 09:33:41','2019-05-08 15:13:50',1),
  ('ce0e2356-a1ec-45d5-856b-dcb738faed34','mateomunozb','mateomunoz@elpoli.edu.co',NULL,'2019-03-13 10:34:54','2025-09-16 20:48:02',1),
  ('76b7e52b-47a3-40ae-845c-03e07ef18a1a','oscarhe','oscarhe@utp.edu.co',NULL,'2019-03-14 19:25:27','2019-03-27 16:16:35',1),
  ('7dd47f38-2706-4196-bfb6-4bc15b390335','natalia','nataliaud1708@gmail.com',NULL,'2019-03-15 08:57:43','2019-03-15 08:57:44',1),
  ('312b9ebc-ebff-42c5-8322-292a2d20239b','overalizcano','omaira.vera00@usc.edu.co',NULL,'2019-03-17 17:40:32','2019-03-30 15:17:18',1),
  ('72440a2e-25e4-41d9-88b1-37d2580790e5','joategarzon','jose.onate00@usc.edu.co',NULL,'2019-03-17 17:42:35','2019-03-29 22:28:11',1),
  ('73d1910b-6bb8-4d7a-8f6f-5e011dc2c3af','afalcorestrepo','aura.falco00@usc.edu.co',NULL,'2019-03-17 17:44:59','2019-05-02 17:58:04',1),
  ('30e848ce-5114-48c1-91ee-8f996c518bb0','mduenasb','mduenasb@ulvr.edu.ec',NULL,'2019-03-17 18:06:18','2019-04-18 16:13:44',1),
  ('6a3c99d4-105c-440c-8433-755f0ca86798','ygonzalez','yenny.gonzalez01@usantoto.edu.co',NULL,'2019-03-17 18:17:13','2019-03-18 15:46:38',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('46894cd2-b166-4297-82b4-5e0b5e9e8613','lnietoramirez','luisa.nieto01@usc.edu.co',NULL,'2019-03-18 09:33:44','2019-07-01 16:56:33',1),
  ('96a1fade-6583-472c-9ad4-eaf986782999','droserogarcia','doris.rosero00@usc.edu.co',NULL,'2019-03-18 09:36:01','2019-04-29 14:22:30',1),
  ('a0e11518-4041-4b3a-bce7-5a496967d07c','cicardozoc','cicardozoc@unal.edu.co',NULL,'2019-03-19 18:19:47','2019-04-03 14:13:57',1),
  ('46840360-674c-422d-bdf5-219ff7b9b9bc','veladavila','veladavila@gmail.com',NULL,'2019-03-19 18:27:28','2019-03-22 12:54:36',1),
  ('f623587f-14bd-4cfa-a5a6-5a3cb38c51be','lamberco','pvasquez@utb.edu.co',NULL,'2019-03-20 15:02:26','2019-08-01 15:10:30',1),
  ('efd14d66-6e46-4d0b-90e2-bb4419e75956','jvilladiegolordoy','jorge.villadiegol@upb.edu.co',NULL,'2019-03-20 15:47:29','2019-04-11 17:25:54',1),
  ('59ea21f9-07f5-4fb7-bf8e-fbb78228851b','jbarbosa','jbarbosa@eafit.edu.co',NULL,'2019-03-20 15:51:40','2019-04-03 15:03:56',1),
  ('ca5b1e5a-6127-4389-a39b-ca8f1bd5aee8','calmaleon42','calmaleon42@hotmail.com',NULL,'2019-03-20 15:54:21','2019-04-20 21:20:51',1),
  ('7ab2408e-1227-4966-9248-c3dd3064caf8','ediguilio','ediguilio@frc.utn.edu.ar','Argentina','2019-03-20 15:58:34','2019-05-15 12:40:40',1),
  ('62d9b897-beb9-45ec-b698-2047be18fa27','annairiyana','annairiyana@gmail.com',NULL,'2019-03-20 21:28:23','2019-03-20 21:28:23',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('01cd23ca-3066-4bb3-8f50-887d7a19dbce','fairqq365','cs.fairqq@yahoo.com','Indonesia','2019-03-20 23:12:04','2019-03-20 23:47:53',1),
  ('dd4cbea7-5bff-41a2-9048-b86dfccd9241','johnwicken','johnmckinney843@gmail.com',NULL,'2019-03-21 17:59:17','2019-03-21 17:59:49',1),
  ('f4026624-e7f8-4e19-bdc9-f96934db89c4','alejandrohossian','alejandrohossian@yahoo.com.ar',NULL,'2019-03-21 19:00:17','2019-03-24 15:45:39',1),
  ('94d66cc1-0a3d-4ad9-8c46-333c17d57b17','ivanarroyo','ivan.arroyo@uma.es','Colombia','2019-03-22 11:39:09','2019-06-12 14:18:35',1),
  ('6fac3187-7c99-465f-a854-b319dba571e7','farizagonzalez3','farizagonzalez3@hotmail.com','Colombia','2019-03-22 15:52:24','2019-12-03 15:07:52',1),
  ('ea201daa-40c7-440f-994a-586962c061dd','siskatan','siskatan120@gmail.com',NULL,'2019-03-23 01:30:24','2019-03-23 01:31:46',1),
  ('77ab33b7-a266-4027-8d69-97ce911d01d3','aconde','aconde@unisalle.edu.co',NULL,'2019-03-23 15:14:14','2020-01-08 13:27:33',1),
  ('161b7a23-a078-4ae2-9c36-a72ffdf3579e','ragudelovalencia','rafaeln.agudelov@unilibre.edu.co',NULL,'2019-03-23 15:17:12','2019-04-06 18:24:14',1),
  ('1d5101b2-ad33-41a4-b219-8d55cd58d9f5','cmlondonop','cmlondonop@unal.edu.co',NULL,'2019-03-24 15:02:59','2019-03-26 22:26:54',1),
  ('fa87d30f-0ab0-417b-8958-d74d7165994d','marcoarizad','marcoarizad@yahoo.com','Colombia','2019-03-25 15:02:52','2019-03-25 15:04:23',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d118e07d-b3f3-4b68-9099-12e661726a6e','javigonzalez','javigonzalez@unisalle.edu.co',NULL,'2019-03-26 18:01:28','2019-03-26 18:01:28',1),
  ('77d0e826-d6ba-4fa3-a48a-4277f00a92dd','jcramirez','jcramirez@unisalle.edu.co',NULL,'2019-03-26 18:06:42','2021-06-10 09:07:39',1),
  ('1fd2ace7-37e5-4cf6-bcaf-2473673f0cc8','lruizmartinez','lidae.ruizm@unilibre.edu.co',NULL,'2019-03-26 18:10:18','2019-03-26 18:10:18',1),
  ('e1825b84-b32b-468e-9169-559801a5d37e','jagonzaleza','jagonzaleza@unisalle.edu.co',NULL,'2019-03-27 12:46:10','2019-03-27 12:46:10',1),
  ('31a0058a-93fd-4715-86d6-23be6e889bc7','jhquiza','jhquiza@udem.edu.co',NULL,'2019-03-28 12:07:26','2019-04-17 12:09:13',1),
  ('9f2599f5-6a82-4f17-b150-2ba3d9129e69','idelgadovarga','ivan.delgado@udenar.edu.co',NULL,'2019-03-29 09:42:30','2019-04-09 22:30:25',1),
  ('57ad10d2-a51d-4ead-87a4-fd0018a12c39','duvan_morales','duvan.morales@udea.edu.co','Colombia','2019-03-29 12:11:27','2019-10-21 14:58:15',1),
  ('e8d29bc1-60a3-4af6-a5ff-54200d44027c','sharon','cruzsharon942@gmail.com','Colombia','2019-03-29 22:03:52','2019-07-24 12:38:19',1),
  ('e76a2639-ae07-41a3-a842-927a57aba01d','nataliamp','natamont_03@hotmail.com','Colombia','2019-03-29 23:02:02','2022-10-10 16:03:27',1),
  ('0ebbe324-ee39-4bf0-aeff-0ab3c4121dee','maestrogaviria','cagaviriac@ut.edu.co',NULL,'2019-03-30 21:13:26','2023-04-11 22:55:43',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('395225f4-3b0f-41ce-8092-321055c8dad7','fmerchan','fmerchan@usbbog.edu.co',NULL,'2019-03-30 22:34:20','2019-04-03 18:34:12',1),
  ('badf2888-73a5-4790-b745-4ccf5a4d30f5','dquirogatorres','daniel.quiroga@urosario.edu.co',NULL,'2019-04-01 08:01:03','2019-04-29 19:20:33',1),
  ('c7c3442d-0249-4121-b29b-3cccc04cfd1d','luz_santacoloma','luz.santacoloma@unad.edu.co',NULL,'2019-04-01 14:47:39','2019-04-01 14:53:20',1),
  ('8ad996bb-f6d6-4558-a358-767d0ce8857d','charolvelez0709','charolvelez0709@hotmail.com','Colombia','2019-04-01 18:36:18','2019-11-27 09:55:57',1),
  ('6eee84aa-b73a-40a9-9ddf-68e253ca1329','felipegiraldo','felipegiraldo@itm.edu.co',NULL,'2019-04-01 19:14:33','2019-04-14 16:26:18',1),
  ('c3a539c3-9d85-441c-9a9b-7dd0d0095b5b','julygaleano','julygaleano@itm.edu.co',NULL,'2019-04-01 19:26:27','2019-04-01 19:26:27',1),
  ('2ecc0eee-70d2-4233-8777-3e46e74d8717','jrodriguezacevedo','jrodriguez@usbbog.edu.co',NULL,'2019-04-02 16:52:20','2019-04-13 05:25:51',1),
  ('2b53fc7c-9737-4a82-9637-7990e79f1515','andres_ariza92','andres.arizaleal.2015@upb.edu.co','Colombia','2019-04-03 15:22:23','2019-04-03 15:23:54',1),
  ('64862306-9465-48de-a10d-05998ef01c91','cfbarreras','cfbarreras@unal.edu.co',NULL,'2019-04-03 20:00:52','2019-04-15 09:14:19',1),
  ('86234dee-c6c4-4e75-b77f-2d782c3b7f7e','rimazop','rimazop@eafit.edu.co',NULL,'2019-04-03 20:04:40','2019-04-08 04:13:54',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('bb2685f9-347e-4fa8-af87-cf8f07a346db','frojas','frojas@uco.edu.co',NULL,'2019-04-03 20:20:51','2019-04-13 13:04:27',1),
  ('48aa1e7a-09d3-4bdf-8d7b-a8f2c5dfbb38','mtorobe','mtorobe@eafit.edu.co',NULL,'2019-04-04 20:36:02','2019-04-07 15:45:25',1),
  ('293ac4b3-bc26-48ba-8592-d076517d46b0','carodri','carodri@eafit.edu.co',NULL,'2019-04-04 21:17:53','2019-04-04 21:17:53',1),
  ('075bc68a-6133-465d-a53e-87824a709ce5','jacardona','jacardona@uninorte.edu.co',NULL,'2019-04-05 18:43:07','2019-04-09 09:16:58',1),
  ('1cb77d9a-906c-4a22-bc01-69dde0d87154','ncatanoc','ncatanoc@uninorte.edu.co',NULL,'2019-04-05 18:47:52','2019-04-19 15:35:13',1),
  ('88edc235-2f6b-44da-ba91-ae631d33a5a8','inoliver','inoliver@uninorte.edu.co',NULL,'2019-04-05 19:02:50','2019-06-12 17:29:31',1),
  ('f8948694-28d3-4b68-9724-fed43c71c316','mpcanoo','mpcanoo@unal.edu.co',NULL,'2019-04-05 19:08:17','2019-04-13 11:30:54',1),
  ('667204d3-05ae-4496-ad26-c2db12c53808','fcyepes','fcyepes@unal.edu.co',NULL,'2019-04-05 19:10:45','2019-05-20 21:19:01',1),
  ('5cec0457-3208-4daf-9a45-0c10534d3259','joengomez','joengomez@gmail.com',NULL,'2019-04-05 19:20:55','2019-04-09 07:36:06',1),
  ('1db3f828-b4c9-437a-b8c6-109bae09a722','srodri16','srodri16@eafit.edu.co',NULL,'2019-04-06 14:49:48','2019-04-08 08:53:10',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('1966835a-2514-467b-ac24-8b452215ffbd','jecheverrigutierrez','jecheverrigutierrez@gmail.com',NULL,'2019-04-09 11:39:00','2019-04-22 19:38:41',1),
  ('682b542c-4528-43b2-872b-06c4ef5345d0','alexanderarias','alexanderarias@itm.edu.co',NULL,'2019-04-09 12:08:52','2019-04-09 12:08:52',1),
  ('1ef00a0a-89be-426d-9625-f6024d9e3edf','jlalinde','jlalinde@eafit.edu.co',NULL,'2019-04-09 20:29:04','2019-04-09 23:16:11',1),
  ('cee77a3e-49ff-4bfb-855c-7e25b50f212a','lmarinpa','lmarinpa@eafit.edu.co',NULL,'2019-04-09 20:32:22','2019-04-22 13:08:17',1),
  ('e68d0639-7770-4f8f-8f76-e4fb18e3cd90','daniel_art','daniel_rojas95161@elpoli.edu.co',NULL,'2019-04-11 09:34:12','2019-04-11 09:36:08',1),
  ('194deee5-560a-4a13-b097-d5a1a5cc59ae','bethy_moreno','bethy.moreno@gmail.com','Colombia','2019-04-11 15:26:26','2019-04-11 15:28:41',1),
  ('e9dfb539-4319-4d97-b1fd-e8584fb3142f','lramrezlpez','leonardo.ramirez@unimilitar.edu.co',NULL,'2019-04-11 18:25:25','2019-04-11 18:25:25',1),
  ('5d8a373e-9a91-4707-88ca-f2447e660a36','ypascuas','y.pascuas@udla.edu.co','Colombia','2019-04-13 09:58:03','2024-11-19 11:14:24',1),
  ('32a54dc0-83cf-4df0-8bbc-4bdee88d3277','ncadavi1','ncadavi1@eafit.edu.co',NULL,'2019-04-13 10:18:10','2019-04-13 10:18:10',1),
  ('f8918aa2-2bb9-4e3d-83ce-cc604739e742','fabiosuarez','fabiosuarez@itm.edu.co',NULL,'2019-04-13 10:22:34','2019-04-13 10:22:34',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('54b8b5e6-e03c-4a13-a53c-0a10576bf1ce','jleonp','jleonp@universidadean.edu.co',NULL,'2019-04-13 10:26:37','2019-04-13 10:26:37',1),
  ('64736aee-40c1-4d4c-8ec3-7957c5f51505','ifrodriguezb','ifrodriguezb@libertadores.edu.co',NULL,'2019-04-13 10:28:51','2021-01-23 12:41:21',1),
  ('f468bdc2-4ba5-4ed9-b16f-48b91efb6c6a','jeorduyr','jeorduyr@libertadores.edu.co',NULL,'2019-04-13 10:31:58','2019-04-13 10:31:58',1),
  ('73962702-a0de-4c0f-ad57-5173db0d3275','daldanar','daldanar@libertadores.edu.co',NULL,'2019-04-13 10:33:50','2019-04-13 10:33:50',1),
  ('67e396ac-9290-4641-82c0-ca118a3981a6','jjvacar','jjvacar@libertadores.edu.co',NULL,'2019-04-13 10:37:57','2019-04-13 10:37:57',1),
  ('39a686cc-1497-456c-97d5-7c321ef0f8d6','upmaker','nadirovchinnikov93@mail.ru',NULL,'2019-04-16 00:19:36','2019-04-16 00:21:07',1),
  ('e90d63ae-4405-4766-b727-92914f4718c8','gpezzotti','gianni.pezzotti@mlib.ic.cnr.it',NULL,'2019-04-16 09:39:36','2019-04-16 09:39:36',1),
  ('c95b2c5d-83c8-4464-baef-9a265b404bd5','luz','luz@bioeco.cu','Cuba','2019-04-17 16:32:53','2023-04-04 10:46:58',1),
  ('f9d1bbf8-75c9-49bd-9c7f-b0cb7f328bbf','lykarisa','alexandralykaris@gmail.com',NULL,'2019-04-20 15:24:48','2019-04-20 15:28:34',1),
  ('cc588b0e-fd60-40db-b141-e0a8c12103f4','arizaleal','afal5116@gmail.com','Colombia','2019-04-20 16:16:15','2019-05-13 11:33:23',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a78277f3-4b08-4740-98d1-6df0c3c76885','anamunoz','anamunoz@elpoli.edu.co','Colombia','2019-04-20 20:48:14','2019-04-20 20:49:40',1),
  ('7bf6ea75-42a2-46cf-9244-333bc0f48773','jualf','hagerstorm@hotmail.com',NULL,'2019-04-21 16:38:48','2019-05-19 16:18:09',1),
  ('861307d6-d91c-465b-a067-84c9e7b64e73','hrpineda','hrpineda@elpoli.edu.co','Colombia','2019-04-22 08:55:08','2023-02-10 12:26:24',1),
  ('bc807532-5bd4-45d1-aced-fb7db7774da5','lsantos','lsantos@unipamplona.edu.co',NULL,'2019-04-22 17:51:47','2019-05-09 08:49:05',1),
  ('f593f4bd-c144-469c-a1e9-a801d3f9ed9f','jcorredoracuna','jacqueline.corredor@unipamplona.edu.co',NULL,'2019-04-22 18:18:13','2019-04-22 18:18:13',1),
  ('888a3b80-dfd0-48ac-91e4-b1df894881c2','sbuiles','sbuiles@eafit.edu.co',NULL,'2019-04-22 18:31:36','2019-04-22 18:31:36',1),
  ('4f67e008-0893-4d11-b5c0-34982af58d5d','oacevedo','oacevedo@utb.edu.co',NULL,'2019-04-22 18:35:43','2019-04-22 18:35:43',1),
  ('b1210735-dd59-48e8-9750-a5d253c66614','lebaqueror','lebaqueror@libertadores.edu.co','Colombia','2019-04-23 14:46:50','2019-08-28 15:21:13',1),
  ('f1e91bd0-c078-4bbb-aa8e-4d5c28a72dd6','mhernandezb','mhernandezb@libertadores.edu.co','Colombia','2019-04-23 15:10:13','2019-06-12 18:03:21',1),
  ('69c7bd3f-737c-467d-908b-c00f6a479c6c','56lilibethviloria','lilibethvilorias@gmail.com','Colombia','2019-04-24 00:02:30','2019-09-16 20:06:36',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4890ed40-d8b0-4507-a361-abf0559fce5e','pestupian','edith.estupinan@unimilitar.edu.co',NULL,'2019-04-30 12:54:58','2019-04-30 12:54:58',1),
  ('52de2362-8ceb-4f39-b827-7ea44cdfa4a2','dareyesc','dareyesc@libertadores.edu.co',NULL,'2019-04-30 13:14:44','2019-04-30 13:14:44',1),
  ('6471fafb-229d-43a3-84f0-ad518ca3819b','pejomogua','pedr1193@hotmail.com',NULL,'2019-05-02 08:54:30','2019-05-02 08:57:30',1),
  ('be596310-17aa-4cd1-8d31-1bce237ac85d','fernandatusa','ftusa@utmachala.edu.ec','Ecuador','2019-05-05 03:49:57','2019-05-05 03:50:56',1),
  ('2b13f370-81e9-430a-b516-0977fe8ce13c','xbrito','lx.brito@uta.edu.ec','Ecuador','2019-05-06 15:00:22','2022-10-18 12:11:18',1),
  ('447e02db-4d31-443b-8293-83264ec23d88','paola92','paola_betancur92101@elpoli.edu.co','Colombia','2019-05-10 19:10:37','2019-05-10 19:11:21',1),
  ('21ceed98-0537-420e-911d-8d7c26ef8a00','yuliamika321','yuliamika321@yahoo.com',NULL,'2019-05-16 09:59:46','2019-05-16 10:04:32',1),
  ('b7a80172-2d99-49d5-990d-70fc8ebd28f0','babafang','gtt64934@ozlaq.com',NULL,'2019-05-17 13:36:14','2019-05-17 13:40:02',1),
  ('250f483e-ebe2-43d9-93d8-3bf596886740','rasarria','rasarria@hotmail.com',NULL,'2019-05-17 16:38:29','2019-05-17 16:38:29',1),
  ('d8b8e613-db80-4307-b7d3-4675b82f202f','ocamachoromero','osvan_ro@hotmail.com',NULL,'2019-05-17 16:50:13','2019-05-17 16:50:13',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('eb5b7276-ab13-40c4-822a-96c3364c9405','amosquera01','amosquera01@yahoo.es',NULL,'2019-05-17 16:54:06','2019-05-17 16:54:06',1),
  ('9efe8c93-f63b-4cd9-a5d4-cff5da4162d5','hjcorreac','hjcorreac@unal.edu.co',NULL,'2019-05-17 19:50:41','2019-05-17 19:50:41',1),
  ('1fc80c41-f375-42ca-a053-e9301a6bee6a','ravelasquezv','ravelasquezv@unal.edu.co',NULL,'2019-05-19 01:00:05','2019-05-19 01:00:05',1),
  ('00f7429b-9c83-4cc8-9061-b3a17e2dc149','jprestrepoq','jprestrepoq@unal.edu.co','Colombia','2019-05-20 11:49:44','2019-05-20 11:49:44',1),
  ('4577fdeb-4166-4abf-9c63-4bd5ca50d3e6','cgomezrodriguez','carlos.h.gomez@correounivalle.edu.co',NULL,'2019-05-20 14:19:59','2019-05-20 14:19:59',1),
  ('f6689dd4-17f5-4686-932f-a2151027e2bb','juanpablo77','juanpablo77@utp.edu.co',NULL,'2019-05-20 17:15:53','2019-06-20 15:34:51',1),
  ('cf5eaa85-0da0-4c8c-9391-8756c0022128','omelo','omelo@ut.edu.co',NULL,'2019-05-20 17:18:13','2019-05-20 17:18:13',1),
  ('8449d808-a02f-40a7-8188-ed61638e76ce','sramirezperdomo','sindy.lorena.ramirez@correounivalle.edu.co',NULL,'2019-05-21 19:19:00','2019-05-21 19:19:00',1),
  ('a013af5a-e19b-400a-9200-02b788d967e4','hl8','seo@hl8viet.com',NULL,'2019-05-22 06:07:17','2019-05-22 06:08:12',1),
  ('7bb2cba4-15c4-4834-bf80-71d03ce38265','mpcalvoc','mpcalvoc@unal.edu.co',NULL,'2019-05-22 16:39:53','2019-05-22 16:39:53',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('eaa435f5-4e57-4615-9a32-c3e863958cbf','dceleitarodriguez','df.celeita10@uniandes.edu.co',NULL,'2019-05-22 16:41:47','2019-05-22 16:41:47',1),
  ('631bec30-30ac-4783-a445-030904e0d32a','vatencio','vatencio@hotmail.com',NULL,'2019-05-22 16:48:50','2019-06-03 14:26:45',1),
  ('833bfff1-c02f-4fbf-b1ee-904f765af8df','mauriciomedina77','mauriciomedina77@gmail.com',NULL,'2019-05-22 16:56:09','2019-05-22 16:56:09',1),
  ('121593c9-83de-4b86-9eb4-67d1ccc69b8b','elbetancur','elbetancur@lasallistadocentes.edu.co',NULL,'2019-05-22 16:58:21','2019-05-22 16:58:21',1),
  ('deae5ee7-b30d-4fa2-83a0-fa3a1fcb91ea','vipertuz','vipertuz@hotmail.com',NULL,'2019-05-22 16:59:54','2019-05-22 16:59:54',1),
  ('15e24f35-c34f-4a22-9dd5-273aebc6bb98','felipeelvago','felipe_pamplona84172@elpoli.edu.co','Colombia','2019-05-24 10:25:23','2019-05-24 10:26:02',1),
  ('cfbee8a8-0938-464f-85a4-08c58a94e2a3','posorio','posorio@ubiobio.cl',NULL,'2019-05-24 20:26:45','2019-06-01 18:13:53',1),
  ('6173760f-8f82-4e84-8283-c68f54dabf1b','jorgemontoyajimenez','jorge.montoya.jimenez@una.ac.cr','Costa Rica','2019-05-27 18:12:33','2019-05-27 18:14:31',1),
  ('81acbdd5-0cf1-4dfc-a692-f7e19a94b2e1','alsalazar','alsalazar@uniatlantico.edu.co',NULL,'2019-05-29 23:53:50','2019-05-29 23:53:50',1),
  ('a100385b-7d4c-4737-abd7-ef8c64d49576','wdcmaya','wdario.cardona@udea.edu.co',NULL,'2019-05-30 11:35:16','2019-06-07 09:25:09',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('9d8b6253-cb07-448e-91a3-0fb8ecd52e1e','leidy_johana','leidyescobar@umariana.edu.co','Colombia','2019-06-05 17:30:09','2019-06-05 17:32:35',1),
  ('994b45a6-abb6-4013-97a1-e9e36a5ef2e7','betsy_valencia','betsy.valencia@gmail.com','Colombia','2019-06-10 06:42:00','2025-04-01 16:10:43',1),
  ('484f2ba8-67de-40a5-8d21-83ebc46acca5','71774314','carlosazz2525@gmail.com','Colombia','2019-06-10 13:38:58','2019-06-10 13:41:01',1),
  ('ab25ba13-2769-45a9-8db3-2a8f707a6e05','ngutierrezg','ngutierrezg@usco.edu.co',NULL,'2019-06-10 18:44:27','2019-06-10 18:44:27',1),
  ('e47971e8-baa6-4563-8fa1-6415b5109edd','mribaric','mribaric@gmail.com','Portugal','2019-06-12 06:35:08','2025-03-24 16:12:20',1),
  ('65444d8e-cd39-44ce-9de2-dd3857f5d46a','emurillo8','emurillo8@hotmail.com',NULL,'2019-06-18 14:50:39','2019-06-20 09:21:16',1),
  ('3eca4a07-5f32-46af-b3f3-e678db48865d','mmaza','mmaza@tec.mx','Mexico','2019-06-18 17:03:05','2019-06-21 16:43:36',1),
  ('76592907-cfc8-49dd-9e76-60b4595104dc','catalinabeltran','mariacbel@hotmail.com','Colombia','2019-06-20 16:29:56','2019-06-20 16:30:37',1),
  ('56468906-4f68-416b-8f18-24fc69644c01','riashow99','riashow99@gmail.com',NULL,'2019-06-21 01:48:11','2019-06-21 01:48:49',1),
  ('2b685d24-829d-4393-bd68-7c12209ed842','jaime_restrepo','jaimerestrepo@itm.edu.co','Colombia','2019-06-25 11:36:04','2021-02-25 13:35:33',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('dc7ed38b-8732-464a-b193-f1502dfbf072','ncortes','nelson@colectivoinside.com','Colombia','2019-06-25 14:04:07','2019-06-25 14:04:07',1),
  ('b88a0991-0505-4644-9f12-b212c70d9b2d','mortiz','mateominotas@gmail.com',NULL,'2019-06-25 14:04:50','2019-06-25 14:04:50',1),
  ('5edfc7d7-da64-4ce2-b0a1-422727ccbd54','lalvarez','lalvarez@elpoli.edu.co','Colombia','2019-06-25 15:41:21','2019-06-25 15:41:21',1),
  ('4ccd79ad-e4ef-40b6-809a-d1cd30732124','vgarcia','vagarcia@elpoli.edu.co','Colombia','2019-06-25 15:42:24','2019-06-25 15:42:24',1),
  ('2bf3fcc6-5cb5-4474-90fc-0f9561a2e7bb','lmaria','lmroldan@elpoli.edu.co','Colombia','2019-06-25 15:44:59','2019-06-25 15:44:59',1),
  ('37071635-a54e-47fb-86e4-22c3e5a4b7ff','boyw7913','boyw7913@gmail.com',NULL,'2019-06-26 04:49:57','2019-06-26 05:01:32',1),
  ('586b68bb-9d3c-4238-891b-aca67c6931fa','fortiz','francisco-ortiz03@hotmail.com','Mexico','2019-06-27 14:22:55','2022-12-16 11:35:21',1),
  ('2405d6b5-ba93-4e8d-909f-780c348ad3e7','foxsin987','harachan365@gmail.com',NULL,'2019-06-27 16:19:52','2019-06-27 16:19:52',1),
  ('4eb0ab9d-38db-4032-9436-9676bae3a574','lorenazunigal','mzuniga@unicomfacauca.edu.co','Colombia','2019-07-02 09:52:00','2020-07-02 14:52:34',1),
  ('dcccd1ab-ba79-430e-ae4f-0db1796e2b68','cuautle','luis.cuautle@upaep.mx','Mexico','2019-07-04 13:25:53','2019-12-04 13:29:32',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('fc40c8ca-6dd0-4dfe-87e8-1e679f2afac6','alopez','alopez@utp.edu.co',NULL,'2019-07-04 16:14:01','2019-07-04 16:14:01',1),
  ('3fb45b9f-a259-4dba-b83a-51b82459de52','ferchofmz','ferchofmz@gmail.com',NULL,'2019-07-04 17:13:23','2019-07-04 17:13:23',1),
  ('51e010ed-f496-4097-8575-0754f9d9ff30','llozano','llozano@ut.edu.co',NULL,'2019-07-04 17:17:42','2019-09-26 17:25:12',1),
  ('8658def4-8ed5-400e-ae57-539bb5b7f399','imtiazfn','imtiaz.fn@gmail.com',NULL,'2019-07-06 07:35:19','2019-07-06 07:35:19',1),
  ('75930de7-bdf3-4e0c-adf4-3679e6aae327','jlpeznez','juancarlos.lopeznunez@gmail.com',NULL,'2019-07-06 13:23:35','2019-07-06 13:23:35',1),
  ('b869246c-fc98-4e48-a250-d583d08335f0','ferestrepo','ferestrepo@elpoli.edu.co','Colombia','2019-07-09 13:29:14','2022-07-21 17:14:52',1),
  ('6ab81dda-e516-411c-9316-7a49c83bc4df','etorrescabra','etorres@jdc.edu.co','Colombia','2019-07-11 09:02:51','2020-02-04 21:24:02',1),
  ('0d099cba-a8a7-4c6d-8a6e-4a8f19f36615','jcmartinez','jcmartinez@agrosavia.co',NULL,'2019-07-11 20:40:53','2019-07-17 23:08:22',1),
  ('5c7530a5-f088-4a17-bbab-df0c28bf2cd5','aidaebaca','aidaebaca@gmail.com',NULL,'2019-07-11 20:43:15','2019-07-11 20:43:15',1),
  ('aa940679-93e2-40c2-87c3-a8b75dfc1f9f','anitaroque7','anyroque@hotmail.com','Colombia','2019-07-11 22:47:46','2019-07-11 22:52:01',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8bfcdd1f-89a6-45c3-aa08-9b1df285d157','henry_arenas','henry.arenas@udea.edu.co','Colombia','2019-07-15 17:47:41','2019-07-15 17:48:53',1),
  ('95eb11ab-c592-48ea-97a9-5c706e571053','sandro','langulo@ut.edu.co','Colombia','2019-07-17 11:22:53','2023-04-12 07:39:33',1),
  ('9f32266e-814b-4f71-94b1-baec0aff9302','jcmartineza','jcmartineza@gmail.com','Colombia','2019-07-17 23:13:55','2019-09-04 13:19:28',1),
  ('57b3fb34-59c2-4dcc-a1e8-7df2a739ed65','laura-2408','lvelasquezcardona@gmail.com','Colombia','2019-07-18 21:43:30','2019-07-18 21:45:20',1),
  ('cbd8ddd2-d67c-405e-af28-b7aff62c3eef','seposada96','sebastian_posada82132@elpoli.edu.co','Colombia','2019-07-23 15:35:24','2019-07-23 15:36:38',1),
  ('0a36645b-0c42-43b1-9700-c14a7251350e','valergil','valery_gil95192@elpoli.edu.co','Colombia','2019-07-24 18:04:03','2019-07-24 18:08:47',1),
  ('ac5bb4a7-d154-4cd8-b67f-a0b6bf2f39d6','mmarion','mmarion@javerianacali.edu.co','Colombia','2019-07-25 11:45:13','2019-07-25 13:40:05',1),
  ('05a2df85-3476-4843-818a-e4bb5764a691','hvillarv','hvillar@sena.edu.co','Colombia','2019-07-25 14:04:38','2019-07-25 14:29:23',1),
  ('7e773da6-0a82-41b1-a4c5-ae8aa595eda7','troncd','troncd@gmail.com','Colombia','2019-07-25 14:49:45','2019-07-30 13:45:25',1),
  ('254e6377-989c-47bc-8013-7f9613351089','jesusasp','jesusasp@gmail.com','Colombia','2019-07-26 14:21:00','2019-07-26 14:21:50',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8788fa36-1b8a-4992-a8f6-5c492ae07f69','hgonzalezv','hery77@hotmail.com','Colombia','2019-07-29 21:30:09','2020-02-21 14:58:26',1),
  ('f517fc19-4623-465e-bd59-c97d7e18bd01','afelipeescobar','afelipe.escobarg@gmail.com',NULL,'2019-08-01 10:30:41','2019-08-01 10:31:26',1),
  ('ce11afe4-36cf-4efe-866f-bc239b6687ef','petrar','arturo.talensgalicia@alum.uca.es',NULL,'2019-08-01 10:37:06','2019-08-01 11:12:16',1),
  ('04ed6183-8ffd-4c3c-a741-9459df4640a5','jorgeadid25','joadpa10@hotmail.com','Colombia','2019-08-02 10:12:41','2019-08-02 10:15:02',1),
  ('65e6e463-aae4-42ae-b316-0a037a944639','alejolora25','alejandroloratovar@outlook.com','Colombia','2019-08-06 11:50:00','2019-08-06 11:50:53',1),
  ('4b330a77-4ae7-4926-8132-7ee44a00d8a5','ozapatac','orlandozapata@itm.edu.co','Colombia','2019-08-11 13:50:30','2020-11-12 08:17:21',1),
  ('13ca8007-10d0-4199-9668-dfcada5b5875','juliana','julianagc0709@gmail.com','Colombia','2019-08-14 15:48:08','2019-08-14 15:48:55',1),
  ('f9f4660e-136d-496f-aaf9-5a5b44ff2899','gberistain','g.beristain@icraai.com',NULL,'2019-08-20 14:00:12','2019-08-20 14:00:12',1),
  ('d8676555-5ee0-462f-a794-1ce13b0c89ba','mlagoslopez','mayer.lagos@uptc.edu.co',NULL,'2019-08-20 14:13:39','2019-08-20 14:13:39',1),
  ('3a28438d-8f19-405e-97a0-59048949bd57','lyvegar','ley-vega@hotmail.com','Colombia','2019-08-21 14:28:12','2019-10-07 10:36:51',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a2a20361-5d97-4909-9dde-c5cefe0ee64b','jfiallos','jfiallos@unal.edu.co',NULL,'2019-08-26 16:58:12','2019-08-26 16:58:12',1),
  ('af4425a9-7d67-414c-8832-8be4f35662c3','juanj85e','juanj85e@gmail.com',NULL,'2019-08-26 17:00:03','2019-08-26 17:00:03',1),
  ('5a7c40ed-3d2a-4e7a-8e86-d61f17494b35','orlandozapata316','orlandozapata316@gmail.com',NULL,'2019-08-26 17:19:52','2019-08-26 17:19:52',1),
  ('2f9d38dc-7fd1-4142-8b05-40e168d00ed5','1035875655','valentina_toro83152@elpoli.edu.co','Colombia','2019-09-03 14:51:52','2019-09-03 14:56:01',1),
  ('14f77d89-6717-44d4-8c68-f68d5d1b9b27','1037639987','geraldine_gutierrez11121@elpoli.edu.co','Colombia','2019-09-08 16:05:21','2019-09-08 16:06:26',1),
  ('75cffc85-6a00-446e-b335-fae52bf7fbc9','fajarqq','fajar.qq@yahoo.com',NULL,'2019-09-09 20:30:49','2019-09-09 20:32:10',1),
  ('18d1d339-cde6-454b-85d5-258e0b244ee2','vero','mvrrowe@gmail.com','Chile','2019-09-10 13:31:59','2019-09-10 23:01:06',1),
  ('833bd3f9-0aa1-413d-8261-0e5c891773be','jennylis889','jennylis889@gmail.com',NULL,'2019-09-11 09:26:07','2019-09-11 09:27:29',1),
  ('2f577a51-9bfe-472d-83b8-83ac37db8a6a','betnhacai','betnhacaivn@gmail.com',NULL,'2019-09-17 08:40:46','2019-09-17 08:41:44',1),
  ('eb642fb3-84e6-48eb-9957-46263203aa55','jquinterodaz','carlos.quintero@udea.edu.co',NULL,'2019-09-17 14:26:49','2019-09-17 14:26:49',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b83621db-3c76-40d6-9914-43612f5808f6','joviedolopera','juan.oviedo@upb.edu.co',NULL,'2019-09-17 14:28:19','2019-11-29 15:16:28',1),
  ('30eae672-e2d2-4a3d-b916-859c85bf9f0d','mariajo97','mariacaso4444@gmail.com','Colombia','2019-09-18 13:00:18','2020-06-07 17:22:34',1),
  ('25ad5853-b3f2-42e4-a1b6-b36b03fd8797','rentabombcarhire','rentabombcarhire@gmail.com','Australia','2019-09-19 02:19:29','2019-09-19 02:20:09',1),
  ('b85cf71e-09eb-41ab-91cd-62555a5ee19b','vbucheli','victor.bucheli@correounivalle.edu.co','Colombia','2019-09-19 11:43:13','2019-11-26 11:33:54',1),
  ('c17db190-135a-41cb-9944-819df11d362c','andaroga','andaroga@gmail.com','Colombia','2019-09-19 16:23:12','2019-09-19 16:23:12',1),
  ('de4d0ee9-368d-4f09-b40c-164b5625400b','javiermvz','javiermvz@outlook.com','Colombia','2019-09-20 08:05:47','2020-05-28 17:14:06',1),
  ('32cc39f1-76cb-4bcd-9951-d57109ada64a','jdiaz_19','juan.diaz7@unisabana.edu.co','Colombia','2019-09-21 17:22:05','2019-09-22 13:26:51',1),
  ('7f2fd359-d76c-4bd8-b423-7834db1116a3','garcialirios','garcialirios@aol.com','Mexico','2019-09-23 08:16:18','2019-09-23 08:19:12',1),
  ('1a2a287c-aadd-4bc0-9cf7-0c56c2c8183c','diramirezb','diramirezb@unal.edu.co',NULL,'2019-09-24 12:17:57','2019-09-24 12:17:57',1),
  ('e79917f6-09bc-49c6-a71b-760994ceae3e','jherrerapineda','camherrera837@hotmail.com',NULL,'2019-09-24 12:19:32','2019-09-24 12:19:32',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e521580f-ffd7-4210-a145-afb463679018','avelascov','avelascov@gmail.com',NULL,'2019-09-24 12:24:08','2019-10-02 11:18:00',1),
  ('0fa50dad-c233-4434-b24b-73a89091b9ea','yfimbresacedo','bm_yenitze_fimbres@hotmail.com',NULL,'2019-09-26 11:12:26','2019-09-26 11:12:26',1),
  ('8704e8f6-d9ab-45a6-a20a-3b53ecb7832e','gihernandez','gihernandez@umariana.edu.co',NULL,'2019-09-26 11:15:17','2019-09-27 14:23:15',1),
  ('a3afa3f5-f60a-4a89-9ba6-944acc6753f4','nediaz','nediaz@unicauca.edu.co',NULL,'2019-09-26 11:16:38','2019-10-07 09:12:00',1),
  ('c6232dcc-3486-4f1b-bf2c-86e4a9f98a23','hugoeraso','hugoeraso@gmail.com',NULL,'2019-09-26 11:19:21','2025-10-01 23:12:27',1),
  ('b221536a-e5a5-453f-b9d7-1c871bfa595c','jmaldonadoflores','carlos_maldonado@ciencias.unam.mx',NULL,'2019-09-28 15:13:11','2019-09-28 15:13:11',1),
  ('c0d70c88-1a40-43d7-be58-3bdc977699e5','alorga','alejandro_orozco54172@elpoli.edu.co','Colombia','2019-10-03 15:54:26','2020-02-25 15:04:19',1),
  ('b50cf3fc-bbd8-46d2-98dc-c5a9ff47c3d3','haramendiz','haramendiz@hotmail.com',NULL,'2019-10-07 12:25:59','2019-10-07 12:25:59',1),
  ('3aed4837-bd6c-47f5-9a80-f8579ff073f5','johanarodino','ger0830@hotmail.com','Colombia','2019-10-10 09:59:32','2019-10-10 10:03:25',1),
  ('4c8e40ad-72ab-4ad1-8ad4-27f9ae4d9731','la1won','pablo_mena60122@elpoli.edu.co','Colombia','2019-10-16 10:51:16','2019-10-16 10:51:16',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ca82dd93-39b2-44c3-b047-6139abc38d18','fernandopantoja','feagreda@gmail.com','Colombia','2019-10-28 18:14:47','2025-09-16 08:44:57',1),
  ('1ecf3485-6eff-458f-bced-00699875895f','silvia','silviamrampello@gmail.com','Argentina','2019-10-29 16:06:19','2019-10-29 16:08:06',1),
  ('c89af47f-b6d1-42b1-96ab-8800a5311443','mandresve','manuel.velez@uptc.edu.co','Colombia','2019-10-30 10:03:23','2019-12-15 20:26:10',1),
  ('c8fbcb10-3f3c-41e9-b654-4106322064be','leonardo_velez','lvelez770@gmail.com','Colombia','2019-11-22 01:25:48','2019-11-22 01:31:25',1),
  ('6dbc308f-d111-4b90-80c8-bcdcc33f173f','raguas','raguas@unimagdalena.edu.co',NULL,'2019-11-25 12:44:27','2019-11-25 12:44:27',1),
  ('f51db21b-8522-4fb6-841f-c0c1d93d33ae','meditor','jegiraldp@gmail.com',NULL,'2019-11-28 17:57:41','2019-11-28 17:57:41',1),
  ('fedbbf9a-6bdc-4275-a876-40c640cfe26b','heiler_torres1','heiler_torrespu@cun.edu.co','Colombia','2019-11-30 16:20:15','2019-12-02 13:42:24',1),
  ('07cd9348-5345-443d-bca0-08903d85108f','icarango','arangopalacioisabel@gmail.com','Colombia','2019-12-02 10:51:52','2021-04-15 08:53:28',1),
  ('aadca943-a254-4a58-9fc2-667381c4c87d','spcano','spcano@usbcali.edu.co',NULL,'2019-12-02 12:59:37','2019-12-02 12:59:37',1),
  ('48907fc9-0706-48e3-9ab0-bf22360e6e85','munozdairo','dairo.munoz@outlook.com',NULL,'2019-12-02 17:14:33','2024-03-21 16:43:27',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7e8ec4ae-d14d-473b-a287-85ce626ff8af','angelica_quinche1','angelica_quinche@cun.edu.co','Colombia','2019-12-02 23:04:49','2019-12-02 23:10:20',1),
  ('6f32e555-11bc-4a92-bdfa-ac742bd4eb11','jchaparrogutierrez','jenny.chaparro@udea.edu.co',NULL,'2019-12-05 13:57:42','2019-12-05 13:57:42',1),
  ('392a0eab-85ed-4b9f-a4b2-21a19dabfcbf','prodriguezcarrillo','paola.rodriguez@correounivalle.edu.co',NULL,'2019-12-05 14:00:16','2020-02-24 19:20:36',1),
  ('81fe4f7f-6fb0-445f-85fe-88289260d575','rod_ortega','rodrigo.dcea@gmail.com','Mexico','2019-12-06 14:26:26','2019-12-12 13:43:32',1),
  ('a0ec8a91-b0d6-4d5c-b12e-21e2adacf5fc','mecheverriv','paulina.echeverri97@gmail.com','Colombia','2019-12-06 16:22:29','2022-03-21 20:29:57',1),
  ('085e5ac8-6878-4fb2-a897-d4cca4e92969','lilitorres','lilizambranotorres@gmail.com','Colombia','2019-12-10 08:38:02','2020-02-26 11:41:19',1),
  ('05f8b9fa-7e03-4032-9f6e-55a0bf26b344','nelsontobon','nelsontobon220530@correo.itm.edu.co',NULL,'2019-12-11 00:20:33','2020-12-03 18:46:26',1),
  ('31a27567-983d-4179-a63e-0bc30cc04022','mduque071','mduque071@gmail.com',NULL,'2019-12-12 18:28:21','2019-12-12 18:28:21',1),
  ('ab423c72-f3f6-468c-8c1d-23d1f04a3457','wilrom','wilsonromeropalacios@gmail.com','Colombia','2019-12-16 19:26:37','2020-01-30 19:47:10',1),
  ('c6a451f2-b86b-4501-a8c9-2be8b994dd1b','tatiane_lazari','tatiane.lazari@unir.br','Brazil','2020-01-16 10:17:33','2022-03-26 07:13:58',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('38a6ebd5-3fda-43a1-8d01-f234493ba046','eleon','eleon@ucaribe.edu.mx','Mexico','2020-01-21 10:41:37','2020-01-21 10:48:14',1),
  ('e5804a58-07f5-46d5-9651-4a1631bbd2b4','uriel','ucardenas@isa.com.co','Colombia','2020-01-30 09:50:29','2020-03-30 07:07:24',1),
  ('8bc88316-ae2c-4d61-8443-6bc745266a7e','32182578','arueda.angel@gmail.com','Colombia','2020-02-07 12:48:11','2020-02-07 12:52:32',1),
  ('df59324e-4800-4870-8239-42ac96cf3e2d','camila_lopez','laura_lopez86191@elpoli.edu.co','Colombia','2020-02-10 21:50:49','2020-02-10 21:52:37',1),
  ('03c2fadc-ea91-47a3-956c-af5ef7548288','cristianboteroa','cristianboteroa@gmail.com','Colombia','2020-02-11 20:24:57','2020-06-02 21:07:01',1),
  ('bcd41c19-061d-4329-838f-663afd9d60ec','guillo25','guillermo.zamaconaa@anahuac.mx','Mexico','2020-02-12 20:04:38','2020-06-10 14:52:49',1),
  ('6aef4855-5b18-4a50-bcb4-022828889ea8','1020419880','leidymanco@yahoo.es',NULL,'2020-02-13 12:29:53','2020-02-13 12:29:53',1),
  ('44d8749d-2bf3-4eed-b0d2-e3b3b6b6b3ec','aguerreror','aguerreror@unemi.edu.ec','Ecuador','2020-02-19 12:52:34','2020-02-19 12:52:34',1),
  ('f623766b-1a00-43a4-8603-3f20834aa565','ambar','acuevab@unemi.edu.ec',NULL,'2020-02-19 12:57:47','2020-02-19 12:58:41',1),
  ('3efca34a-1ce7-4a4c-b6c2-b3d077ccde51','eaguam','12contevelinagua@gmail.com','Ecuador','2020-02-19 13:03:52','2020-02-19 13:05:19',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d2fb50a0-11b8-4cc8-b3c3-4a7a1e661fc1','andres_20','munozbolanos@gmail.com','Ecuador','2020-02-19 17:05:22','2020-05-08 13:48:39',1),
  ('5879cd38-6aa6-491c-bc84-2968d07cf010','oscar_agudelo','oscar.agudelo@unillanos.edu.co','Colombia','2020-02-20 13:46:25','2021-02-17 08:12:58',1),
  ('7b3e6c11-c56e-45c1-9eab-9a2f08bf32a4','lfcarvaj','lfcarvaj@unal.edu.co',NULL,'2020-02-20 14:38:42','2020-03-02 15:03:27',1),
  ('40b63ff9-8eab-42ef-a2f3-9a88cb080e27','oscararbelaez1','oscar.arbelaez@campusucc.edu.co','Colombia','2020-02-23 19:50:05','2024-10-01 09:07:06',1),
  ('b1b081d1-89cc-4861-b35f-0cecb5ef2200','josericardobs','josericardobs@ufps.edu.co',NULL,'2020-02-24 12:58:10','2020-02-24 12:58:10',1),
  ('af9d6b43-a400-4498-8b3a-08072408c573','lauradiaz','lacdiazga@unal.edu.co','Colombia','2020-02-25 13:48:44','2020-02-25 13:49:28',1),
  ('bee03673-a523-4a00-8a1b-da2c1de630e7','jab1106','jab1106@psu.edu',NULL,'2020-02-26 13:53:05','2021-01-23 11:12:08',1),
  ('6f11053d-d7fa-4e6d-b7b6-01e05e46f8b6','fisaza','fisaza@udem.edu.co',NULL,'2020-02-26 14:02:05','2020-02-26 14:02:05',1),
  ('6f82c9b2-af8e-46cf-aec0-502c149464e3','harolddiaz60','harold_diaz60@yahoo.com',NULL,'2020-02-26 15:55:41','2020-02-26 15:55:41',1),
  ('1b077d77-00c9-40df-a9a1-4b0bb4b4d43b','jhonfaiber','jhon_faiber@hotmail.com',NULL,'2020-02-27 13:51:28','2020-02-27 13:51:28',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e2e84398-3c35-4b0d-820b-29f8c26e60ed','leidirojas','leidi.rojas@javerianacali.edu.co',NULL,'2020-02-27 13:53:27','2020-03-05 09:34:37',1),
  ('d4e521c8-40c0-4870-9f9e-7dc167df7e49','leoplazas','leoplazas@gmail.com',NULL,'2020-02-28 13:11:04','2020-02-28 13:11:04',1),
  ('1f654b0d-9e16-41d5-85e9-35255da4c29e','maosando','mao.sando@gmail.com','Colombia','2020-02-28 13:14:28','2020-03-13 11:30:36',1),
  ('16a5e309-2383-4498-bb05-eb972ba2b8d9','slain','slain@uao.edu.co',NULL,'2020-02-28 13:15:55','2020-02-28 13:15:55',1),
  ('4ca1ac59-367b-4b61-9d4d-3d945db3480b','alexmo14','alexmo14@gmail.com',NULL,'2020-02-28 13:20:36','2020-02-29 13:48:16',1),
  ('7f28ecce-2958-4ff9-8f40-4caa685f18e4','rodolfoenriquesilveraescudero','rodolfoenriquesilveraescudero@gmail.com',NULL,'2020-02-28 13:23:48','2022-05-03 16:53:14',1),
  ('c7da0ac6-ed9d-452c-8ef5-02c60c32ca66','carlos_arango','caarango@udemedellin.edu.co','Colombia','2020-02-29 22:16:43','2024-02-14 10:17:34',1),
  ('f6378a11-17a3-4ec0-922f-60514100824a','karimgarzon','karim.garzon@urosario.edu.co',NULL,'2020-03-02 14:21:33','2020-03-05 13:01:22',1),
  ('cd467a92-850a-4642-9f77-7a5582323462','jaimediaz','jaime.diaz@correounivalle.edu.co',NULL,'2020-03-02 15:10:20','2020-03-02 15:10:20',1),
  ('8492dad5-906c-49a6-a634-50b70082fc66','melissapc','melissa_pena02121@elpoli.edu.co','Colombia','2020-03-03 07:42:00','2020-05-05 19:01:02',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('926f0525-0b77-4049-8b6a-330838443d4c','formatotvmedia','formatotv@gmail.com','Colombia','2020-03-03 15:20:39','2020-03-03 15:21:59',1),
  ('a73fee82-a0f9-444d-9c69-26d05a89d4cc','deissymgarcia','deissym.garcia@urosario.edu.co',NULL,'2020-03-03 15:36:09','2020-03-26 20:02:41',1),
  ('2d02c248-9d84-486d-91e5-1e14e579a56d','jonathangraciano','jonathangraciano@itm.edu.co',NULL,'2020-03-03 15:38:21','2020-03-05 10:06:04',1),
  ('022738b0-479b-462d-8242-b9bc783f9eae','rubycriollo','rubycriollo@udenar.edu.co',NULL,'2020-03-03 15:53:19','2020-03-03 15:53:19',1),
  ('f4b5089d-eb2d-4640-8b4f-0722cac12d4d','liliacastellanos','lilia.castellanos@adres.gov.co',NULL,'2020-03-04 14:53:01','2020-03-19 12:48:12',1),
  ('cd3edcc3-0fbc-4f6a-9388-2ba5644de566','fjpuente2000','fjpuente2000@gmail.com',NULL,'2020-03-05 22:52:29','2020-03-05 22:52:29',1),
  ('b9a2f95a-bda5-4469-8a4d-647551133554','henaoanamia','henaoanamia@hotmail.com',NULL,'2020-03-05 22:55:37','2020-03-05 22:55:37',1),
  ('9763dd6b-ace4-4b51-ab81-a50af5c35764','abrahamgonzalez','abraham.gonzalez@unimilitar.edu.co',NULL,'2020-03-05 22:56:54','2020-03-05 22:56:54',1),
  ('7c554bf0-00f5-43e2-93fa-28af675ead72','sbaezp','sbaezp@unal.edu.co',NULL,'2020-03-05 23:02:14','2020-03-05 23:02:14',1),
  ('bc6009fb-16da-4237-a0ba-f16d9e9617b7','bernardo','bernienahuat@gmail.com','Mexico','2020-03-12 12:39:56','2020-12-17 00:09:39',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c43dbb6f-dfad-4f96-b306-71255df1b57d','lamirabe','lamirabe1501@gmail.com','Colombia','2020-03-15 14:49:27','2020-03-24 20:02:06',1),
  ('9407f5b1-468a-49e8-9e23-455ec9471813','aaog','aaog@utp.edu.co',NULL,'2020-03-21 15:22:25','2020-03-21 15:22:25',1),
  ('bd5f4ddd-2b6c-4b12-891c-716b695b850b','npedraza','npedraza@unillanos.edu.co','Colombia','2020-03-26 21:27:37','2020-03-26 21:28:51',1),
  ('82a2b0b3-7710-4710-9b97-c6e8cb381c37','profamarta1','profa.marta@hotmail.com','Brazil','2020-03-30 19:16:52','2022-10-11 05:53:56',1),
  ('354b5d7f-6a37-49f0-b2a9-9763fb0b9d7d','aguilarimitolakarin','aguilarimitola.karin@gmail.com',NULL,'2020-04-02 15:05:47','2020-04-21 10:25:48',1),
  ('3960e96b-cc36-4af2-9fe4-ab4760af4a84','isabelarango','isabelarango@elpoli.edu.co','Colombia','2020-04-02 17:11:36','2023-11-14 11:50:20',1),
  ('2ae0df5a-ca88-47f8-99be-5860916a5ed8','krestrepoq','katherinerq1989@gmail.com','Colombia','2020-04-03 20:58:27','2020-04-03 20:59:23',1),
  ('0a3a77c2-0c29-426a-aaaa-98596dde1cd2','camiloespinosa13','juan_espinosa03161@elpoli.edu.co',NULL,'2020-04-06 12:35:28','2020-04-06 12:37:36',1),
  ('ca00437e-c5b2-4a4e-9795-1b1882a47abb','dpenaorozco','dpenaorozco@uniminuto.edu.co',NULL,'2020-04-06 14:11:41','2020-04-06 14:11:41',1),
  ('4ee949c2-e242-4433-bb23-99de8b7f3df1','clmunoz','cl.munoz@javeriana.edu.co',NULL,'2020-04-08 15:22:42','2024-12-14 11:26:03',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c596b633-f50a-43dc-8212-176a74d45466','dracontos','dracontos@gmail.com',NULL,'2020-04-08 15:24:13','2020-04-24 06:31:36',1),
  ('dd724455-7663-47f9-bff5-be2478c2d0e7','loaizaestiven96','estiven_loaiza84142@elpoli.edu.co','Colombia','2020-04-10 17:00:18','2020-04-10 17:04:25',1),
  ('0d3e8825-abd1-482d-bd24-16ca91ad2f28','alvarobernal','alvaro.bernal@correounivalle.edu.co',NULL,'2020-04-11 23:39:29','2020-04-11 23:39:29',1),
  ('9d967821-08ea-4a77-9ac6-7d34f68c06c8','oswaldococa','oswaldo.coca@invemar.org.co',NULL,'2020-04-12 02:21:54','2020-04-21 21:03:37',1),
  ('e4a63565-97f0-4e89-92ad-2b540c1af573','bibliotecauntdf','rfrias@untdf.edu.ar','Argentina','2020-04-14 19:56:48','2020-04-14 19:58:48',1),
  ('d0b124e0-6469-486b-a0bb-fc5125e6a462','juanopablo','juanopablo@gmail.com',NULL,'2020-04-15 16:09:25','2020-04-15 16:09:25',1),
  ('6de0bc69-fd3e-4e26-91e6-0eeeb7580760','1128445432','diana_alape83161@elpoli.edu.co','Colombia','2020-04-20 07:34:20','2020-11-02 15:11:36',1),
  ('0d72d593-7c5c-426f-9dcf-ad312540ba97','andresmhz','andresmhz@hotmail.com',NULL,'2020-04-22 17:15:31','2020-04-22 17:15:31',1),
  ('04934087-4b86-42d2-a36e-64fabf457eb3','angelikat83','angelikat83@gmail.com',NULL,'2020-04-22 17:22:05','2020-04-22 17:22:05',1),
  ('e2bfe43d-c592-4c39-be15-b5c689cb43b0','patriciafernandez','patricia.fernandez@upb.edu.co',NULL,'2020-04-23 14:46:35','2020-05-16 23:41:44',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('24f2ba99-e645-4e06-85e6-9fe078d85f07','angelicazuluaga','angelica.zuluaga@udea.edu.co',NULL,'2020-04-27 13:27:10','2020-05-01 06:56:35',1),
  ('28a8b47d-aedd-4c60-8235-58c7c18d9b8c','delpilarparedes','delpilar.paredes@udea.edu.co',NULL,'2020-04-27 13:30:23','2020-05-14 16:13:38',1),
  ('b52d2062-de8c-4206-b684-135bbbaa0c55','lportz1','lportz1@cuc.edu.co',NULL,'2020-04-27 13:32:44','2020-05-11 11:20:59',1),
  ('53ca192c-6bc8-4d86-8172-4e78ef90debf','maryorygomez','maryory.gomez@udea.edu.co',NULL,'2020-04-29 14:26:51','2020-04-29 16:44:44',1),
  ('8367171b-37aa-4c97-95be-f5aa650a0386','emiliano1986','emiliano.sanchez@perio.unlp.edu.ar','Argentina','2020-05-05 16:13:48','2020-05-05 16:15:08',1),
  ('1febb114-a808-4f11-b692-d88e9c92c0e0','mauriciovasquez','mauriciovasquez@itm.edu.co','Colombia','2020-05-07 11:46:06','2020-05-08 14:56:36',1),
  ('48f9ff0c-d74e-47f3-bfe7-6f96ecec71a8','albertobotero','alberto.botero@udea.edu.co',NULL,'2020-05-07 11:59:34','2020-05-07 11:59:34',1),
  ('9a3cf514-b552-4156-af7e-e31409eac8da','danielbuiles','danielbuiles@hotmail.com',NULL,'2020-05-11 11:37:16','2020-05-24 11:42:45',1),
  ('5c7b99a3-e987-4be7-bbe6-ae25aedd03fc','carmoli','carmoli325@gmail.com','Argentina','2020-05-12 17:15:47','2020-12-02 16:20:51',1),
  ('f51175dd-d9b5-4ca4-8d4f-14a74d83ebd6','teresita_betancur','teresita.betancur@udea.edu.co','Colombia','2020-05-13 17:24:21','2020-07-28 12:14:13',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('17cffae1-42a1-48f8-9c17-410e8ebfa5d0','leidycasarias','lvcastanoari@ut.edu.co','Colombia','2020-05-14 11:22:24','2020-05-14 11:23:28',1),
  ('92ac60f0-8359-4b73-81fa-d26067d9b8a3','stwar','jhesgomez@utp.edu.co',NULL,'2020-05-19 09:39:48','2024-03-20 09:59:21',1),
  ('a2179056-019d-47f6-abd4-f98e0af169b3','miguelcastanob','miguel_castano86181@elpoli.edu.co','Colombia','2020-05-19 11:29:44','2021-07-22 19:37:35',1),
  ('d3615696-d222-4ab9-a404-1ca24583dffd','tahisin','dustin.tgr@gmail.com','Colombia','2020-05-19 14:55:15','2025-05-02 08:12:15',1),
  ('abc14fe4-c4b6-4ff1-80d5-3564d5b7b717','emiliabocanegra','emilia.bocanegra@gmail.com',NULL,'2020-05-26 11:18:30','2020-06-05 09:05:46',1),
  ('eb96b1fd-09a8-4c24-b810-df4eb01a5fe6','andresuribe','jandresuribes22@gmail.com','Colombia','2020-05-26 21:54:29','2020-11-20 23:32:41',1),
  ('c6108559-cd5c-4173-9e1e-bae333a467ef','16070670','oscarbedoya@elpoli.edu.co',NULL,'2020-05-26 22:25:05','2020-05-27 08:43:20',1),
  ('a82fc2a8-04d7-4aea-bf0f-608178c83a95','bnavarro','bnavarromez@uniminuto.edu.co','Colombia','2020-05-28 15:34:23','2021-08-13 11:00:35',1),
  ('b96cf3ef-c560-47ce-bd9c-2aef558a6f8f','titanavarro','genavarros@unal.edu.co','Colombia','2020-05-28 20:08:05','2023-04-17 22:24:26',1),
  ('151e7b25-e134-4378-88d7-21e80e1e4f4b','andresdasugo','andresdavid.suarez@uptc.edu.co','Colombia','2020-06-02 18:09:31','2020-12-18 09:48:03',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('79877c8f-c390-443a-99f2-4c4e4c88247b','santiagoandressegura','santiagoandresseguraberrio@gmail.com',NULL,'2020-06-03 13:02:37','2021-03-16 22:17:31',1),
  ('ea17b89e-9a3d-4aac-9a35-f037f979be71','70928559','gcolbis@hotmail.com','Colombia','2020-06-03 22:22:43','2020-06-04 21:54:26',1),
  ('25eb100b-2cf2-4f21-b0b9-7c3897a30286','gabrielacuadradobarreto','gabriela.cuadrado@upec.edu.ec','Ecuador','2020-06-04 09:24:23','2024-12-09 15:45:23',1),
  ('b51b5906-3a8c-44d8-85a9-d500a2f92881','yujigushiken','yug@uol.com.br','Brazil','2020-06-07 14:17:25','2021-03-07 08:53:36',1),
  ('71309e9e-1fce-4b6f-890b-a50a3a71f3b5','1036673452','laura_rubio84191@elpoli.edu.co',NULL,'2020-06-08 14:47:01','2020-06-08 14:50:07',1),
  ('be7559d0-ad3d-41e0-8d2c-c15bb7608456','juannunez','jununezl@unal.edu.co','Colombia','2020-06-10 17:28:35','2020-12-10 12:39:19',1),
  ('eebb979f-4c1d-4466-a938-bd87e145c317','jeffersonamado','jefferson.amado.pena@correounivalle.edu.co','Colombia','2020-06-12 00:42:41','2020-06-12 00:45:32',1),
  ('497a3419-7f05-4ecb-bb3b-d74e695b76a7','franciscoaciolyneto','francisco.aciolyneto@gmail.com','Brazil','2020-06-12 06:47:40','2022-10-14 18:03:05',1),
  ('0bac7246-7940-48ae-8ddd-7855d0053b7c','carlarabelo','carlarabelo22@gmail.com','Brazil','2020-06-12 12:41:51','2020-06-12 12:41:51',1),
  ('aec58dfb-50ce-4a36-a16b-cccad974bca2','fllanos','fllanos@alumni.usp.br','Peru','2020-06-12 12:55:17','2020-06-12 12:55:17',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7fee4277-820d-416d-9cad-e89440e5f63c','trejoluna','omartp@ugto.mx','Mexico','2020-06-12 16:55:18','2020-06-12 17:02:12',1),
  ('82e9b69b-ef3c-4de5-88c9-830a2d6e4cbc','autoclave','gabrielseoca7@gmail.com','Spain','2020-06-14 23:32:01','2020-06-14 23:33:55',1),
  ('9d882f88-3692-4902-adf7-71e1f80eecdd','lhcordova','lucila.hinojosacr@uanl.edu.mx','Mexico','2020-06-16 10:31:46','2025-04-01 17:15:14',1),
  ('ef6ab1ba-db00-4851-ab36-c0e912a43c38','dmhidalgop','dhidalgop@umariana.edu.co','Colombia','2020-06-18 10:29:23','2020-06-18 10:30:08',1),
  ('be390a32-3e18-4057-a064-3ace30764987','carlaflorez','carla_florez@hotmail.com','Colombia','2020-06-18 13:13:20','2023-09-14 19:26:05',1),
  ('495ad9e0-c400-46fa-bdd0-c9ad1076efde','renovatio7','juanestebangc@hotmail.com','Colombia','2020-06-18 21:47:04','2020-06-18 21:47:04',1),
  ('aff6f450-3435-44c8-8bb2-6939a80ca39e','carlosrodriguez','carloscompol@gmail.com','Spain','2020-06-23 10:31:27','2021-08-23 13:50:17',1),
  ('3ccf66f3-ea60-4c06-a063-27aadef756fe','luislagos','luislagos2005@gmail.com','Honduras','2020-06-30 13:10:03','2020-06-30 13:11:14',1),
  ('41243471-2513-48ba-906c-3c4a809fbefc','tcobos','tcobos79@gmail.com','Colombia','2020-07-10 11:42:10','2024-09-25 07:56:10',1),
  ('41739491-c70a-4e81-9346-a4e54fc9dc87','marcela','claudia_cardona95111@elpoli.edu.co','Colombia','2020-07-15 21:22:20','2020-07-15 21:27:01',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f77f26c3-ddef-4b7d-bf12-da5a15c8af0e','fsantoro','flavia@ime.uerj.br','Brazil','2020-07-20 11:45:03','2020-07-20 11:45:03',1),
  ('b16e590c-8150-4c8e-8513-1aa85e61994e','gracecarrazco','gracecarrazco@yahoo.com.mx',NULL,'2020-07-22 10:33:58','2025-03-19 11:21:10',1),
  ('00c650e5-6981-4830-af2c-c10614395600','3michael3','michael.rojas@correounivalle.edu.co','Colombia','2020-07-30 14:20:52','2022-10-21 12:49:07',1),
  ('59d416b4-02f1-4c5f-9dd4-a027d491d725','juanquintero30','juanquintero30@gmail.com','Colombia','2020-07-30 18:40:20','2020-08-20 20:50:58',1),
  ('836ec0d7-9b5f-44d1-9edc-1ae19331849f','itorres','ingrid.torrespa@amigo.edu.co',NULL,'2020-08-03 13:10:25','2025-02-10 10:59:10',1),
  ('8df604ec-6916-4861-ba5f-4551a222961c','clarrea2020','carloslarrea@unach.edu.ec','Ecuador','2020-08-04 09:58:43','2025-03-26 11:10:59',1),
  ('2e29dfa8-f1b1-4b9e-9c46-4449e2463740','fernanda','bibliowebcf@gmail.com','Colombia','2020-08-05 13:08:45','2020-08-05 13:11:59',1),
  ('eca139da-cbb2-43ff-bc6b-d5e55a400f32','jaguar1964','jhguarin@elpoli.edu.co','Colombia','2020-08-16 18:22:53','2025-03-26 12:50:47',1),
  ('57de3c41-3dc9-47ad-9bd3-fc2725d207c6','disabel','dianagarces20@elpoli.edu.co','Colombia','2020-08-26 16:32:07','2020-11-19 15:38:02',1),
  ('99d73620-71e0-4962-80d4-6ff97e4b7703','marta1964','martahdez55@gmail.com','Colombia','2020-09-06 19:58:16','2020-10-21 21:21:05',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7b4040cf-f668-4c63-959a-06e88aba5cae','danilogomez','danilo_gomez80121@elpoli.edu.co',NULL,'2020-09-10 21:15:29','2020-09-10 21:16:13',1),
  ('e328f375-6bf1-40ad-b746-d943ebcefef8','alejandro_alzate_giraldo','aalzate@udem.edu.co',NULL,'2020-09-15 09:52:37','2021-05-18 18:10:19',1),
  ('cec6651f-e6bf-4b68-8504-5c40eb285b57','gahol','gahol@utp.edu.co',NULL,'2020-09-17 20:13:50','2020-10-07 14:59:07',1),
  ('04c92f3c-2999-4260-b329-d188601b8196','adrincones','adrincones@gmail.com',NULL,'2020-09-17 20:34:47','2021-01-24 20:46:35',1),
  ('f3bbc64c-2b3d-4b08-8e20-05f45f73251d','ivanobapardo','ivanobapardo@gmail.com',NULL,'2020-09-17 20:42:50','2020-10-03 13:46:30',1),
  ('7698cfa4-d710-4f06-84c1-4246b9c594da','epuello','epuello@correo.unicordoba.edu.co',NULL,'2020-09-17 20:54:18','2020-10-03 08:52:33',1),
  ('f085fac4-935f-405f-9851-3ffad990c97e','federicoayala','federico.ayala@ucaldas.edu.co',NULL,'2020-09-17 21:03:12','2020-09-23 14:23:02',1),
  ('678458c2-a0e5-4bb6-848d-cab0dcf381c8','donhaliliam','donhaliliam@gmail.com',NULL,'2020-09-17 21:58:18','2020-09-18 10:13:46',1),
  ('52c7c35b-60a5-42a4-96c6-81990b108cfa','danarboledagir','danarboledagir@unal.edu.co',NULL,'2020-09-18 16:52:20','2021-05-02 17:43:52',1),
  ('8ea0358c-5b63-4d40-88c2-545abc1c4b09','cbeltran','cbeltran@agrosavia.co',NULL,'2020-09-21 13:02:52','2020-10-06 15:15:44',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('247a452b-a997-4213-86a0-5c7eabec1852','dianabetancurth','diana.betancurth@ucaldas.edu.co',NULL,'2020-09-23 14:02:44','2020-09-23 14:06:44',1),
  ('d322c988-7aaf-499f-9c6f-e4250d481c94','cardonam33','cardonam33@gmail.com',NULL,'2020-09-23 14:18:37','2020-10-21 08:07:03',1),
  ('f85fc339-51d4-42fc-8d52-a6f05fea6aff','cristianorozco','cristian.orozco@ucaldas.edu.co',NULL,'2020-09-23 21:12:19','2020-09-26 22:12:47',1),
  ('d7bd772d-7131-4193-9f27-8b6b6f5a89de','evera','emerson12david@gmail.com','Ecuador','2020-09-24 11:56:50','2021-03-17 14:48:58',1),
  ('7b923484-1a8a-4240-8cc2-e56c10bb6620','anamayi','anamayi@utp.edu.co',NULL,'2020-10-05 17:03:01','2020-10-05 17:04:19',1),
  ('5e7cd833-b6aa-4e77-960d-2aa50ffa91e1','jpserna','jpablo.serna@udea.edu.co','Colombia','2020-10-07 08:44:08','2021-05-31 08:48:50',1),
  ('30433fff-b803-4c8c-b6e1-3e6862db4ab3','andreasanchez18','asanchez420@unab.edu.co','Colombia','2020-10-13 16:10:30','2020-11-17 18:58:21',1),
  ('8a2c828b-2234-42d3-becf-2123c6c4d14b','katherine','katdcer@gmail.com','Spain','2020-10-24 06:55:06','2025-03-29 18:00:00',1),
  ('3088130e-ec41-40d2-af56-fc6c732fbe73','belenas19','belen.fiallos@gmail.com','Ecuador','2020-10-26 16:39:52','2021-05-16 13:07:15',1),
  ('90b8ad63-c219-46cd-9f55-aa0ff8b9877a','flordelizperez','fplizliz@gmail.com','Mexico','2020-10-27 15:19:01','2021-05-07 16:58:34',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3b453890-d9ae-43d0-a575-c9555683860a','yeniferorozco_01','yenifer.orozco@correounivalle.edu.co','Colombia','2020-10-30 12:28:33','2020-10-30 12:29:58',1),
  ('9d402d79-c0ae-4bcd-8bb2-bf51f32f0f8e','psjorge','jorge.quimbayago@amigo.edu.co','Colombia','2020-10-30 14:37:13','2025-04-21 16:21:35',1),
  ('25520280-9262-4d44-bd36-2aa364ad21d2','julianruiz','julian.ruiz@udea.edu.co',NULL,'2020-11-04 13:19:52','2020-11-04 13:23:24',1),
  ('39dfc72d-643f-4c7e-a233-b334e76869d4','leliaschewe','lelia.schewe@gmail.com',NULL,'2020-11-05 09:52:58','2020-11-17 18:19:39',1),
  ('79048293-e095-4e1b-9873-58b5a4b04c54','juribo8','juribo8@hotmail.com','Colombia','2020-11-07 12:51:33','2020-12-24 08:30:40',1),
  ('ab3b830d-d28b-4cd9-a202-023ecb4fe577','cristinapereyra','pereyra.cristina@gmail.com',NULL,'2020-11-09 13:20:27','2021-02-20 10:09:54',1),
  ('e0ce0329-6676-4845-b43c-9ee5ce8f7958','nathybarrozo','nathy.barrozo@gmail.com',NULL,'2020-11-09 13:27:12','2020-11-17 12:02:18',1),
  ('b5397d37-d906-429b-9f25-8ffe98e2b9d3','carlosmra68','carlos.rodriguez@ibero.mx',NULL,'2020-11-09 13:36:08','2021-01-26 13:31:50',1),
  ('28c5d8d2-ef89-4dce-974e-ac5c1d0a7e85','ebedoya','bedoyaever@gmail.com','Hungary','2020-11-09 16:37:37','2020-11-09 16:38:34',1),
  ('1a5c2667-c2d2-49f9-8cbe-3b2a70a1acb3','yialx21','yialx@hotmail.com','Colombia','2020-11-09 23:12:57','2020-11-09 23:16:21',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('38d681b8-2b70-4420-8774-305170a30f4c','karivalss','karina_valencia@uaeh.edu.mx','Mexico','2020-11-10 14:22:10','2025-07-28 10:30:52',1),
  ('946e4da9-a0c8-43d6-ae6e-a18b7defa378','andres24','restrepoandres460@gmail.com',NULL,'2020-11-10 23:02:10','2020-11-10 23:06:12',1),
  ('4d7c5ae2-2836-4760-a2bb-ef1eb833ce28','marcosve20201','marcos.vegase@amigo.edu.co','Colombia','2020-11-16 08:15:28','2020-11-16 08:18:43',1),
  ('e5280e60-55aa-47ea-b383-7b67a7f4c2c4','javiergelvis','javiergelvis@gmail.com','Colombia','2020-11-17 17:30:08','2021-05-31 20:28:13',1),
  ('29b90106-a890-49c4-9d0b-ea6083b0b7a1','1037653890','manuela_munoz11142@elpoli.edu.co',NULL,'2020-11-18 08:46:35','2020-11-18 08:47:36',1),
  ('1fe2ec46-1019-49f4-8837-e95c12ec7312','cheffernandouvpmexico','coord.lab.vin.eve@uvp.mx','Mexico','2020-11-25 17:50:02','2021-02-09 16:57:01',1),
  ('45b9ffa9-b73c-4cd3-8ae5-d77947c7a51a','noricelly','nory1291@gmail.com',NULL,'2020-11-26 09:48:37','2020-12-02 14:33:12',1),
  ('4032c8da-392c-480d-92b6-8442e46ef9bc','dsilva','danna_abby@hotmail.com','Ecuador','2020-11-27 10:59:07','2020-11-27 15:54:39',1),
  ('84e4e4a4-7b6f-4c25-9abb-b11c55836bdc','gzambrano','genesiszambrano97@hotmail.com','Ecuador','2020-11-27 11:05:04','2020-11-30 21:11:51',1),
  ('5f5f302b-cf65-4171-8749-4f05ce13cd6c','zbii','msnsouhail@gmail.com','Germany','2020-11-28 11:34:24','2020-11-28 11:34:54',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c0015c47-a84a-437e-ac5f-741e2bc2270d','yacevedoagudelo','yaceved2@eafit.edu.co',NULL,'2020-11-29 11:20:51','2023-03-29 08:28:45',1),
  ('d43cb48e-7042-4ed4-84ab-6189762448b6','juan_camilo91','camivelezsaenz@gmail.com','Colombia','2020-12-01 22:35:47','2020-12-02 13:23:48',1),
  ('3e785434-2196-440b-bd73-df0a5968fe42','laura_zambrini','laura.zambrini@gmail.com',NULL,'2020-12-03 11:07:54','2020-12-03 11:08:32',1),
  ('197286cd-5426-4d9a-aa2e-f9a5c754364f','dedi_dst','dedi.dst@bsi.ac.id','Indonesia','2020-12-05 23:19:23','2020-12-09 22:09:40',1),
  ('1a4d73b7-b8b1-49fe-8ab1-210920963d8e','6leidysoto95','leidycarolinasoto@hotmail.com','Colombia','2020-12-06 11:36:35','2020-12-06 11:40:40',1),
  ('1511e2ed-bd0b-4332-811f-cf5a66f5fa85','camilacastroj25','camilacastrojimenez25@gmail.com','Colombia','2020-12-10 20:49:03','2020-12-10 20:51:41',1),
  ('7afc208f-94ae-45b7-a52b-2077c57ffba7','mavalles','mavalles@unsm.edu.pe','Peru','2020-12-31 18:00:47','2020-12-31 18:00:48',1),
  ('17b304ab-33cf-4c70-8076-c0ac2feecfc7','5watp7','wtuestap@unmsm.edu.pe','Peru','2021-01-13 17:18:54','2021-01-19 20:52:28',1),
  ('33b5a6e7-8883-405f-b368-57a86d627bf0','nataliarocon','marcio_cosmo@hotmail.com',NULL,'2021-01-14 12:06:20','2021-06-01 10:43:07',1),
  ('665ec21a-7286-49b4-bbdc-01a298cff6d0','magdaochoa','mlochoa@docentes.uat.edu.mx','Mexico','2021-01-19 21:52:00','2025-07-15 02:38:25',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('948482c7-e4f3-4ae4-8774-6155e9760a5b','denis_lorena','d.alvarez@udla.edu.co',NULL,'2021-01-25 19:31:12','2024-11-08 11:34:05',1),
  ('917798bd-0c32-4678-84b0-fa3fb042ae80','alejandromunoz','alejandro.munoz@uptc.edu.co',NULL,'2021-02-08 09:02:53','2021-02-20 19:00:21',1),
  ('d687afbc-27b0-4768-863e-c63f93dc48e0','calsofo','calsofo@yahoo.es',NULL,'2021-02-09 09:48:10','2021-02-11 10:25:02',1),
  ('73f744cc-2799-4d34-91bc-c3a01447734e','jedapome','jedapome@gmail.com',NULL,'2021-02-09 18:52:54','2021-02-16 20:55:19',1),
  ('8869858e-aad9-4d1c-8d7c-73007d31d554','millermarmolejo','miller.marmolejo@utch.edu.co',NULL,'2021-02-10 21:13:24','2021-02-26 11:11:44',1),
  ('823ad7e8-9152-449a-924f-9a43f3ad2afb','loteria1','agenciaseosem1@gmail.com',NULL,'2021-02-11 08:44:04','2021-02-11 08:48:55',1),
  ('9f49649b-8511-4dbf-addc-9efb2abbe31e','felipebustamante','felipe.bustamante@udea.edu.co',NULL,'2021-02-11 21:07:06','2021-02-12 10:52:48',1),
  ('ec23b01b-5be2-4c65-b866-6a49278fb84d','luislozano','luis.lozano@uptc.edu.co',NULL,'2021-02-14 18:18:18','2021-02-15 14:32:05',1),
  ('817d38ba-cb8d-4d56-92d4-fc975ba59dae','aochoa','direccion@fcc.uaslp.mx','Mexico','2021-02-17 16:27:23','2021-02-17 16:27:23',1),
  ('aee1aaa0-b8e1-440c-ba88-4868f7258662','ginnal','ginna.leyton@correounivalle.edu.co','Colombia','2021-02-19 13:37:18','2021-03-09 18:10:58',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('bf0c179d-71a6-47c2-9a39-73201f0d46b5','cmoncada','cmoncada@unab.edu.co',NULL,'2021-02-22 07:18:19','2021-02-22 07:21:55',1),
  ('3e762d68-c7e4-44f1-9903-ce1f9229f594','mikis','valentinasierramks@gmail.com','Colombia','2021-02-22 19:18:03','2021-02-22 19:18:56',1),
  ('932a10a3-ccd3-446d-9784-5d70958d14c3','johnmarh','johnmarh@yopmail.com',NULL,'2021-02-23 10:13:15','2021-08-13 15:47:34',1),
  ('a988877b-908f-41d7-b09d-9e2c848acfed','rafaelsantos','iamrafaelsantos0@gmail.com','Colombia','2021-02-25 06:47:47','2021-02-25 06:48:29',1),
  ('86f72bf9-9b30-428e-a7f0-a4e2ecdd1d3f','transhispanismo','hiriest@hotmail.com','Morocco','2021-02-25 16:41:20','2023-12-15 14:49:51',1),
  ('fa800f1b-c2cf-41bd-86ec-ae6531d876dd','07agungchandra04','agung.chandra@mercubuana.ac.id','Indonesia','2021-02-26 05:57:59','2021-02-26 05:59:52',1),
  ('084fbfe3-8ea3-4138-b7f8-f59eef3f1580','johnmarsh','johnmarsh@yopmail.com',NULL,'2021-02-26 16:33:18','2021-02-26 16:34:09',1),
  ('f285a6cc-9202-44a1-a6d4-3254bc660590','mespinosacastaeda','raquel.espinosa@uaslp.mx','Mexico','2021-03-01 15:38:09','2021-04-12 13:59:22',1),
  ('1ea0146d-fbc7-430f-8e96-0569f4e3e1b6','emmapacino','emmapacino1@gmail.com','United States','2021-03-02 10:12:40','2021-03-13 09:44:11',1),
  ('22ac47a4-a4ad-42d7-8f10-cda81e86e851','fernando_pantoja','fernandopantoja@elpoli.edu.co',NULL,'2021-03-03 11:10:36','2025-09-29 12:43:04',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('bc80c935-4b26-4c98-9b9b-ddb77fdfdea2','technology','ektatanwar500@gmail.com',NULL,'2021-03-05 08:49:15','2021-03-24 09:05:38',1),
  ('f0f43671-af07-4023-9138-8b75a2673481','paeis','pais@rhmlna.com',NULL,'2021-03-12 20:24:36','2021-03-12 20:25:50',1),
  ('b2d561d8-a0b5-4196-8554-f4bfb1c325dc','savagegrowplus987','londin2@cmusicsxil.com',NULL,'2021-03-13 04:16:56','2021-03-13 04:18:04',1),
  ('5b36fd35-fbe2-4384-83b0-205cd5328b12','tamilrockerttt','darkarmyhackers@gmail.com',NULL,'2021-03-14 10:48:51','2021-03-14 10:54:50',1),
  ('ac18044e-3e06-4154-9d7e-ca6be01dd403','ultramanifesat','domonic@vaticanakq.com','United States','2021-03-15 01:06:06','2021-03-15 01:08:32',1),
  ('f265bb77-59eb-42ec-a426-2c24abd60633','bloodsugarformula','nelda8@vaticanakq.com',NULL,'2021-03-15 01:55:51','2021-03-15 01:57:00',1),
  ('4565ea45-b73d-4516-a200-389edcd92996','flatbellytonics','candelaria0@vaticanakq.com',NULL,'2021-03-15 03:06:51','2021-03-15 03:07:56',1),
  ('510c882d-d098-4ef4-aac2-99119535c77b','franklinferrarogo','franklin.ferrarogo@amigo.edu.co',NULL,'2021-03-17 17:12:43','2021-03-31 16:41:47',1),
  ('e23eeea2-9d68-4d61-a0cc-58f99211f3e7','gridiscorts','gridiscorts@gmail.com',NULL,'2021-03-17 17:18:13','2022-08-28 10:47:54',1),
  ('6ea733a0-94b5-495a-92b7-7a593c72ebc2','shirlenevegaro','shirlene.vegaro@amigo.edu.co',NULL,'2021-03-17 17:23:39','2021-03-22 13:26:05',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('27ac4544-ec71-48bb-b9c7-5a3231a44efc','bonedensity40','cardellf09@lbzannualj.com',NULL,'2021-03-18 06:11:03','2021-03-18 06:12:17',1),
  ('5952e6ca-9c79-4c28-980b-2c9edafa37dc','diysmartsaw60','dicky@believesrq.com',NULL,'2021-03-20 04:55:53','2021-03-20 04:58:59',1),
  ('06d9da02-9c07-48d2-b21b-0c6db60c70cd','woodprofits','caedmonc3@believesrq.com',NULL,'2021-03-21 23:50:45','2021-03-21 23:55:55',1),
  ('1023ac43-7284-4ddd-b453-6f573a2cb03a','woodprofits0','job26@believesrq.com',NULL,'2021-03-22 00:54:19','2021-03-22 00:56:23',1),
  ('7bb1e10b-58a2-4e45-a0ed-f74ea87eddb8','leprotocoleventre','baileec57@believesrq.com',NULL,'2021-03-22 23:46:22','2021-03-22 23:46:59',1),
  ('a0d4dda3-bcf9-4778-8415-96dd31cb5a71','adeushemorroidas60','marquitta75@believesrq.com',NULL,'2021-03-23 01:05:18','2021-03-23 01:11:34',1),
  ('e6bd6549-076d-4191-acb1-3181aff86f48','superprofitscalper','aphaeae50@ebworkerzn.com',NULL,'2021-03-23 05:10:21','2021-03-23 05:11:11',1),
  ('5ea679f0-b80f-48d2-bfbe-1b09a8877d45','brightenloansreview1','jaxtyn.traeger@forloans.org',NULL,'2021-03-23 06:32:07','2021-03-23 06:33:37',1),
  ('aca94341-3ff0-4d09-a410-093430c2d321','heiwan','wsnow0017@gmail.com',NULL,'2021-03-24 01:16:41','2021-03-24 01:18:29',1),
  ('edd20c7c-6b65-4cc5-b0ae-39bd271cf5e4','vinauditreviews','gerri@ebworkerzn.com',NULL,'2021-03-24 02:05:24','2021-03-24 02:09:07',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('365e243e-8155-4966-9806-d9d1d8cae354','ketocompletereviews','delina.dylann@forloans.org',NULL,'2021-03-24 03:17:53','2021-03-24 03:18:22',1),
  ('4a3b92f6-9a19-4c15-8ba6-6a96c1b3847b','nosaracbdgummies','yoskare0@ebworkerzn.com',NULL,'2021-03-24 06:33:27','2021-03-24 06:33:56',1),
  ('80ba39fd-cf6e-46aa-840b-21a0fdc33b18','ketocompletereviews1','ger68@ebworkerzn.com',NULL,'2021-03-25 00:57:03','2021-03-25 00:58:56',1),
  ('c000ee04-f5d6-444a-b838-1616eb2371ab','nosaracbdgummies60','maahi.95@bedroomsod.com',NULL,'2021-03-25 03:25:10','2021-03-25 03:27:23',1),
  ('7fe06319-3df8-4767-9c78-852c0b4787f3','backyardrevolution','trust.amzee@forloans.org',NULL,'2021-03-25 07:01:06','2021-03-25 07:02:06',1),
  ('54a4df85-7676-4174-a3a3-368dcb48a421','oxidizedcholesterol','donya65@bedroomsod.com',NULL,'2021-03-26 03:29:20','2021-03-26 03:30:21',1),
  ('36ea1a1b-15a2-467a-8d37-965021e62a49','aricantu_10','acantu@hum.unrc.edu.ar','Argentina','2021-03-26 09:08:54','2021-08-11 17:31:45',1),
  ('23f93996-cd79-414f-8314-894647416468','silvina_58','sberti@hum.unrc.edu.ar','Argentina','2021-03-26 09:11:18','2021-05-25 07:30:43',1),
  ('7e76a3f4-11d2-4c2a-8707-f15482149df7','ketoelitereviews','gryffin4@qbknowsfq.com',NULL,'2021-03-27 04:40:10','2021-03-27 05:15:51',1),
  ('0a0e77ef-21ef-4ae1-8b80-dfd3ed0634cb','savageplus','savageplus@forloans.org',NULL,'2021-03-27 04:52:52','2021-03-27 04:54:06',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('fe293844-d394-4e5f-a2f9-a9a1ee659eaf','synaapsext','kaeya.patrisha@forloans.org','India','2021-03-29 23:42:28','2021-03-29 23:45:13',1),
  ('a87a03b3-197a-4be6-83b1-18e1fea6f990','nuvectramedical','damyen.decimus@forloans.org',NULL,'2021-03-30 06:02:54','2021-03-30 06:04:47',1),
  ('c1f950c6-d000-4943-8ec5-b299416dc674','edobre','leafthatneverfall@gmail.com',NULL,'2021-03-30 06:05:33','2021-05-05 03:22:05',1),
  ('2859c0a2-bbbd-4ee8-8095-e45b25224a1d','haleefaneeq','haleefaneeq8696@myself.com',NULL,'2021-03-30 07:10:42','2021-04-06 13:26:35',1),
  ('0f5aa3d9-a62e-4fa2-b112-b2ea71c2a1da','charlotterehab','evolett@iwtclocks.com',NULL,'2021-03-31 02:30:05','2021-03-31 03:02:11',1),
  ('e3b81157-e372-4aca-8eac-fec6f9705279','kelly23','kelly_prado68191@elpoli.edu.co',NULL,'2021-04-01 10:46:52','2021-04-01 10:48:20',1),
  ('748dc438-df27-47d6-b23c-e3cdf290ce5b','savagegrowplusbenefit','mckaylee61@waleskfb.com',NULL,'2021-04-03 03:15:02','2021-04-03 03:20:06',1),
  ('f8ff7607-42a5-4e49-8cf9-c05ee36aaa69','adrianabenitezcamargo','adrianabenitezcamargo@gmail.com',NULL,'2021-04-05 09:56:14','2021-04-11 09:19:50',1),
  ('dc2407d6-f730-4880-aa4e-fbac513a6850','veronica_mcb','veronica_calderon86103@elpoli.edu.co','Colombia','2021-04-05 18:37:58','2022-11-28 11:41:32',1),
  ('5368bfda-6f72-46e1-9dc7-3c374f84faa9','healthandfitness','owlb81@jwvestates.com','Estonia','2021-04-07 05:30:50','2021-04-07 05:31:21',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('6b201b5c-e069-4f63-9a8e-f183ccc83d3e','clydeadams','oldlavender9@jwvestates.com',NULL,'2021-04-07 05:57:07','2021-04-07 05:58:34',1),
  ('ee12a275-7455-4241-8ed4-bb0cd4cd2102','lkatherine_moreno','lkatherine.moreno@udea.edu.co','Colombia','2021-04-07 13:57:19','2021-07-30 11:02:41',1),
  ('a6fb3616-a4d3-4f39-8ae7-bd8b7771c2cf','biofitprobioticcaps','daruis09@jwvestates.com',NULL,'2021-04-08 00:02:51','2021-04-08 00:03:19',1),
  ('7b5019cb-8c9e-4bf3-a23c-f9f97f6f3041','prfectamino','prfectamino@forloans.org',NULL,'2021-04-08 05:59:33','2021-04-08 06:00:53',1),
  ('5a573b16-732b-49d8-8a3e-f4a32aedba16','mellitoxreviews','masha@cbrolleru.com',NULL,'2021-04-08 06:43:49','2021-04-08 06:44:31',1),
  ('9902075f-680e-4cf5-b256-8e8f2e028b2c','fitnessprogram','yazlyn.025@cbrolleru.com',NULL,'2021-04-08 07:08:53','2021-04-08 07:11:32',1),
  ('45c220c2-0489-42f1-9ebb-f1a1ddf5383b','healthandbeauty','timberwolf7@cbrolleru.com','Ukraine','2021-04-08 07:33:52','2021-04-08 07:34:36',1),
  ('654fbb72-7db8-4f96-8c78-80675a24fb0e','savagegrowplusbe','oswald@cbrolleru.com',NULL,'2021-04-08 07:57:42','2021-04-08 08:00:23',1),
  ('c57e8891-1546-49db-8ca3-669592244f60','healthproductreviews','aviannaa35@cbrolleru.com',NULL,'2021-04-09 00:29:24','2021-04-09 00:44:51',1),
  ('fdc4bbed-f24b-4ec2-8637-7b04224c78a6','thebioenergycodes','baldemar66@cbrolleru.com',NULL,'2021-04-09 04:16:22','2021-04-09 04:17:21',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8d2f855a-f629-4652-af44-e04a21ae6bd4','maribelsalazar','maribelsalazar@elpoli.edu.co','Colombia','2021-04-11 18:34:45','2023-05-15 15:44:35',1),
  ('61972b39-fb2b-49f1-a87a-fd782c94f4a2','mguerrerouseda','mguerrerouseda@gmail.com','Colombia','2021-04-12 19:39:45','2021-07-27 22:46:50',1),
  ('19727f73-5112-4948-b4df-7e763d9ad222','mrodelo','mrodelo011@gmail.com','Colombia','2021-04-13 16:11:58','2023-06-17 18:15:02',1),
  ('b2bae674-bf71-4bdc-8ef1-390de50e382c','gamepinupcasino','pinupppp777@gmail.com','Barbados','2021-04-14 04:39:48','2021-04-14 04:45:15',1),
  ('f98c26ad-fd81-46e2-b292-2d1ee07b0ec8','zoofaras','zoofaras@gmail.com','Colombia','2021-04-15 19:35:34','2021-04-17 11:57:35',1),
  ('8293f334-beab-4428-b306-ff856fe57d78','respaldojorgegiraldo','respaldo.jorgegiraldo@gmail.com','Colombia','2021-04-15 19:52:01','2021-04-15 19:53:22',1),
  ('fe557671-c087-4aba-a9de-75e0aa878d86','carbofixreviiew','darklava@xmlrhands.com','Zambia','2021-04-16 04:13:03','2021-04-16 04:16:03',1),
  ('babe052c-e9f8-4224-8658-c3f5c9b641dc','primalgrowpro12','marcelenee9@xmlrhands.com','Uruguay','2021-04-17 00:01:26','2021-04-17 00:03:56',1),
  ('df8caa6f-021b-442f-8385-59d9839c68b7','jerahema1213','jerahema1213@gmail.com','Colombia','2021-04-19 11:02:14','2021-04-28 21:24:24',1),
  ('b2f72b42-0c6c-4fdc-a339-6bd4065f4ae2','lvergara1985','lvergara1985@hotmail.com','Colombia','2021-04-19 11:13:24','2021-04-28 21:51:54',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d821edba-8785-45fd-acf7-277496e947bc','1000536976','maria_osorno64211@elpoli.edu.co','Colombia','2021-04-21 16:25:37','2021-04-21 16:26:51',1),
  ('302a6107-29a7-4b7a-895c-2932cd24fb63','memosurgesafe','autry0@zjhplayback.com','Armenia','2021-04-23 08:11:49','2021-04-23 08:14:01',1),
  ('7c62387f-08ad-4146-88a7-92d57bd75160','erlincarpiovega','erlincarpiov@gmail.com','Colombia','2021-04-23 10:14:51','2025-10-02 17:00:48',1),
  ('f3382459-f565-41bb-9fe6-dcdaa9840e37','alejo0619','alejo0619@gmail.com','Colombia','2021-04-28 20:35:42','2021-05-14 08:56:02',1),
  ('2d78ddef-df5b-4425-8027-ade9744b812b','franciavillegas','francia.villegas@unad.edu.co','Colombia','2021-04-28 20:43:18','2024-11-25 09:57:09',1),
  ('f4ac6cf6-4973-4fbe-b038-87c9f8b7e855','maediaz','marioe.diazduran@gmail.com','Uruguay','2021-04-30 15:09:54','2021-04-30 15:09:54',1),
  ('bce89d07-d152-4f93-8ff3-e7fbf7e98c29','andresvargas','andresvargas@itm.edu.co','Colombia','2021-04-30 17:42:50','2021-05-25 08:55:11',1),
  ('2fb108d3-6b88-4887-b8d1-243b96ecb63c','mruiz','mruiz@correo.uts.edu.co','Colombia','2021-05-04 20:07:06','2021-05-26 08:17:18',1),
  ('ddd8da0c-ca8f-4e12-aac3-482fdf6786c6','paulaamelines','paula.amelines@udea.edu.co','Colombia','2021-05-05 15:28:58','2021-05-10 09:01:46',1),
  ('e4d6b380-cced-43ba-bf60-95d4d9a2e6da','sararios09','sara.riosa@udea.edu.co','Colombia','2021-05-11 16:48:42','2021-08-02 15:05:32',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('aa6b4512-8552-4818-b608-28379464d9ac','erosinning','erosinning@gmail.com','Colombia','2021-05-18 08:32:29','2021-05-18 14:59:38',1),
  ('2cab282a-7a26-4e5c-89cf-d19a991db2a2','yelena_mafran','yelena.mafran@uo.edu.cu','Cuba','2021-05-21 10:00:14','2022-12-06 13:13:38',1),
  ('8d250bb9-5bc9-42a7-858e-463ea26f7380','raariza','pangloss64@hotmail.com','Colombia','2021-05-21 10:32:38','2023-12-20 07:07:16',1),
  ('e6b8e39d-dfa5-4af3-b5d6-d3537e51c96f','jairmardi','nanotechrd@gmail.com','Colombia','2021-05-21 11:55:43','2021-05-21 11:55:43',1),
  ('d96dfa6c-ce63-47a1-a282-b76eb5562cd6','taniam25','taniam@upr.edu.cu','Cuba','2021-05-21 14:30:25','2022-12-26 01:07:33',1),
  ('08bf13f7-b322-4ebe-92da-000d90e19578','503040242','adavila@una.ac.cr','Costa Rica','2021-05-21 18:13:18','2023-09-05 10:53:47',1),
  ('9bca55cf-5e74-4f07-88c4-394784fd70ef','dpgarcia','dpgarcia77@gmail.com','Ecuador','2021-05-21 18:38:31','2022-10-28 09:46:19',1),
  ('22aaf2e4-4bf1-416c-b9ab-ade183c88664','profevladimir','roque.carrion@upch.pe','Peru','2021-05-21 22:54:13','2025-04-04 00:02:59',1),
  ('1b6f5611-038d-4276-bc66-711bf9a7cc3d','ggallo','graciela.gallo@ean.edu.ar','Argentina','2021-05-22 12:31:00','2021-05-22 12:32:25',1),
  ('b3beba7b-cb67-4612-9904-9b17678b3230','josempp52','jmpp52@gmail.com','Venezuela','2021-05-23 14:25:47','2025-04-03 09:43:06',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('29117a65-4fca-4be4-8af1-15c91f28ae0d','mluigi1','marlenederequena8@gmail.com','Venezuela','2021-05-23 20:39:43','2025-04-13 16:35:50',1),
  ('31fd97a7-5b1f-417f-9bc3-163b36a5504d','ysalisky','dra.ysaliskypaez@gmail.com','Venezuela','2021-05-24 16:52:25','2023-09-07 07:35:43',1),
  ('b12fd263-109e-4a34-b519-7adb42f7701e','jflopez','jflopez@udem.edu.co','Colombia','2021-05-24 17:19:45','2021-05-24 17:19:45',1),
  ('b2e5e48e-b310-4900-9a7c-6ee1054109cd','jairocuellar30','jacuellar@elpoli.edu.co','Colombia','2021-05-25 18:33:20','2023-10-25 09:27:29',1),
  ('fd65c54c-308b-4f9a-a313-a5b5d111f142','mariadelosasf','mariadelosasf@ucpejv.edu.cu','Cuba','2021-05-26 12:22:53','2021-05-26 12:28:57',1),
  ('7a16d92a-5a28-4ec6-bb2c-bcfd4d1eef8a','faber_moyano','u20800283@unimilitar.edu.co','Colombia','2021-05-26 21:52:52','2021-11-20 12:54:36',1),
  ('259de853-aa99-4ed0-9e04-c38d26eee617','joselagos','jose.lagos@unimilitar.edu.co','Colombia','2021-05-27 11:27:56','2021-06-11 13:14:51',1),
  ('ef7825f1-22ca-49e8-9414-9d517073fd91','sandraeste','sandraco63@gmail.com','Venezuela','2021-06-01 17:03:19','2023-03-07 15:37:11',1),
  ('d5e7848b-2be9-47ad-88d5-ca991c14ee18','linacardona','linacardona@elpoli.edu.co','Colombia','2021-06-03 09:56:58','2022-07-19 15:06:57',1),
  ('64b66d06-a6cd-4882-8b07-e735543fdffe','carloscastro','carlos.castroumana@ucr.ac.cr','Costa Rica','2021-06-05 11:32:37','2021-06-05 11:34:52',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7c0af2ac-edab-42eb-93e6-dac8ef0d76f2','carlosoz','carlosoz@unisabana.edu.co','Colombia','2021-06-08 17:09:44','2021-06-28 19:49:51',1),
  ('8f42dbda-6e4c-4c8d-bd59-ede72c34b3a6','limaveve','limaveve@gmail.com','Colombia','2021-06-08 17:13:09','2021-06-08 19:16:28',1),
  ('8683f9e1-2b8f-49fb-bac6-36ca2c0824e8','mariasarmiento','maria.sarmiento@udea.edu.co','Colombia','2021-06-10 18:17:41','2021-08-12 11:07:30',1),
  ('cf32772a-31e2-4b74-b57b-493347764890','natibauni','nbauni@gmail.com','Argentina','2021-06-11 10:13:02','2024-07-04 13:24:25',1),
  ('b7b55ce4-54fa-4ae0-983b-23a895c5f631','socrates99','msocrates@crece.uss.edu.pe','Peru','2021-06-13 21:09:32','2021-09-21 00:30:38',1),
  ('db036349-ef65-4557-b842-e15e5069ed25','orleydisbatista','obatistaayola@gmail.com','Colombia','2021-06-14 12:31:01','2021-06-14 12:58:34',1),
  ('7a153272-641b-45e8-84a0-a856b3fe7aec','yeicop97','atehortua.jacobo@uces.edu.co','Colombia','2021-06-16 17:53:59','2021-06-16 17:54:24',1),
  ('23bce31b-262e-4023-94ab-2ba0cecc374e','alejandrofsec','alejandrofsec@gmail.com','Ecuador','2021-06-18 10:47:24','2024-09-19 09:04:02',1),
  ('b6e87874-3fc4-4812-ac5c-f52e7dc099b8','anabelglez','anabel9121@gmail.com','Cuba','2021-06-18 14:38:18','2021-06-18 14:40:50',1),
  ('24a638e1-3095-4de4-afc2-d28a2d6295dc','ehierrezuelo','ehierrezuelo@uho.edu.cu','Cuba','2021-06-19 14:50:27','2021-06-19 14:52:02',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ba7026da-31e6-4510-9b36-72b7d93631a0','erika_barojas','erika.jazmin.barojas@gmail.com','Mexico','2021-06-20 17:32:35','2021-07-06 13:16:04',1),
  ('43164a3a-8eec-4698-a233-3077a4501b5c','alex4123','isidoroga.lep20@bine.mx','Mexico','2021-06-20 21:36:57','2021-06-28 18:10:30',1),
  ('5ffeda23-f993-483d-b592-63b02ab1ff01','fabiocruz','fabiosouzadacruz@gmail.com','Brazil','2021-06-21 13:06:02','2022-10-26 11:24:49',1),
  ('f2b81fb9-9ece-4ad5-bda4-38d02b2b853e','1yesicarodas5','yesica.rodas656@pascualbravo.edu.co','Colombia','2021-06-21 16:29:16','2021-07-27 20:23:57',1),
  ('d607cad8-dc15-44ad-8a04-20ca65126cd8','jasolutions','info@jasolutions.com.co','Colombia','2021-06-23 11:06:12','2025-10-03 01:12:13',1),
  ('bbda232d-5db2-4069-a819-87e9a57b6723','lvpachon','viviana593@hotmail.com','Colombia','2021-06-23 17:42:37','2021-06-23 17:43:42',1),
  ('e0b56263-5dbd-401e-acf4-e3fce2bb81c7','mbardalesn','mbardalesn@ucvvirtual.edu.pe',NULL,'2021-06-23 21:38:10','2021-06-24 08:36:45',1),
  ('01a40d5c-8f81-4c35-b82f-575cdc7942da','dandyberlie','dandyberlie@gmail.com','Peru','2021-06-23 21:44:39','2021-07-23 19:37:59',1),
  ('d174a92d-9337-485a-8e80-dc46a529e753','silvanaarias','silvana.arias@udea.edu.co',NULL,'2021-06-23 21:52:54','2021-07-01 15:33:51',1),
  ('6365b8d0-a97e-4a8b-bcf9-6f4ad9e77958','ivanurango','ivanurango@correo.unicordoba.edu.co',NULL,'2021-06-23 21:56:34','2021-07-27 06:47:21',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5afe0b57-f3aa-4c68-885e-db149941bcea','lacriminologo','criminologounellez@gmail.com','Venezuela','2021-06-24 02:40:49','2024-01-15 08:51:50',1),
  ('10d73fa4-55cc-4cbc-97e6-309fdc02aa27','magaly15','magaly_mariaca@hotmail.com','Bolivia','2021-06-27 11:41:07','2022-10-16 08:58:09',1),
  ('008b9893-db55-4b5c-a4bc-67cc840d211f','franciscoortiz05','francisco.ortiz@uaslp.mx','Mexico','2021-06-28 12:14:40','2025-04-03 11:58:56',1),
  ('36ad3108-61b3-4cfc-b724-6daec248b2b5','jcardoorcid','jcardo@mailinator.com','Colombia','2021-06-28 12:17:05','2021-06-28 12:20:19',1),
  ('1ff5c67c-0400-45e1-bfbf-f91dfdc54b26','monrys2k','alicht@uninorte.edu.co','Colombia','2021-06-28 21:58:12','2022-03-29 16:43:28',1),
  ('f510a566-b16b-4310-b1fa-c62db8ce70ce','1leyser_12','leyserrengifo123@gmail.com','Colombia','2021-06-29 09:08:24','2022-04-21 14:17:58',1),
  ('0d647f50-c0ae-4134-87a8-85494c503c74','tania16','tania.plascencia@uan.edu.mx','Mexico','2021-06-29 10:35:39','2021-06-29 10:36:54',1),
  ('95ae9d7a-020a-4ddd-b790-1b6d5ff50033','12gva12','vaanvegah@gmail.com','Mexico','2021-06-29 13:15:39','2021-06-29 13:18:21',1),
  ('0300987d-18cf-4f28-8fe6-2b0dc3b74cf0','18cgarcia18','crisgavo7@hotmail.com','Colombia','2021-06-30 11:47:18','2025-04-07 11:53:42',1),
  ('2e3cba6e-d420-418c-883b-93e49887713c','lariza','yi.quinones@udla.edu.co','Colombia','2021-06-30 18:49:20','2021-06-30 18:53:26',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ed137a73-d6a7-4aee-88ba-5577fdf2a77c','eyemip','donniegwinn742@gmail.com','Australia','2021-07-05 14:29:12','2021-09-23 22:22:29',1),
  ('d6750e7b-8d11-4249-936c-27d81b5bdac2','jorgepeloche','jpeloche@gmail.com','Uruguay','2021-07-07 20:12:58','2022-07-13 08:41:07',1),
  ('8128f2d6-aece-454b-87e9-ebde7a25770d','cdamiani','cdamiani@unsa.edu.pe',NULL,'2021-07-08 21:39:52','2021-07-20 11:04:14',1),
  ('f2927082-85f9-4ddd-ad33-c6bd61718479','beagus02','alem.beatriz@gmail.com','Argentina','2021-07-10 10:59:26','2024-09-19 10:13:34',1),
  ('f545639f-2501-453b-8c71-ff3e06003bc2','yeisonloaiza9','yeisonloaiza95@gmail.com','Colombia','2021-07-12 20:58:06','2021-07-12 20:58:50',1),
  ('fa001ca1-760a-4f4b-b74b-0111563396a8','jilbher','jilbher@gmail.com',NULL,'2021-07-12 21:12:01','2021-07-14 09:24:22',1),
  ('a212b35a-c35e-4d1c-bbbd-2e6b0ab1191d','mdoneym','marlon.martinez01@usc.edu.co','Colombia','2021-07-13 19:46:46','2021-07-14 08:08:49',1),
  ('ed49f38a-ffbf-4c1e-b804-0bdc1c9fb41c','mariana0328','cindy.ariza@uniminuto.edu','Colombia','2021-07-15 20:59:14','2023-12-25 13:11:26',1),
  ('189011c9-be9c-491a-80fa-70370b42597e','angelplaza','angel.plazav@ug.edu.ec','Ecuador','2021-07-17 09:45:34','2021-07-17 09:58:17',1),
  ('e65853df-0d1d-4b9c-9115-d40c103806ae','ydmurillo','ydmurillo@iiap.org.co','Colombia','2021-07-21 08:58:17','2021-08-18 11:10:54',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('9b347e77-249f-4413-80cd-f09f75cdf3b5','karensr_22','santiagork.lep20@bine.mx','Mexico','2021-07-25 15:59:28','2021-10-09 23:49:13',1),
  ('f3033e7a-7270-4ca8-abfa-30bf208041ca','osfor3','oscar.forero@usco.edu.co','Colombia','2021-07-26 09:48:04','2024-10-01 15:52:30',1),
  ('db210773-14de-40d8-9375-f3cd316c6e52','lauragarzon96','lmgo851@gmail.com','Colombia','2021-07-27 09:55:48','2022-10-26 17:34:21',1),
  ('c9286f73-67e8-451a-90f5-56c9668e5369','008352447','luisalfonsoariasalvarez@gmail.com','Colombia','2021-07-31 09:14:04','2021-07-31 09:14:04',0),
  ('0d482bca-1e11-4664-95b0-faf6e84e914d','xiomara_19','xiomara.cardozo83@gmail.com','Colombia','2021-08-02 11:49:54','2022-11-04 12:38:43',1),
  ('f9d51e85-f21e-47aa-94ac-60c6c9a302e2','isabelmorales','isabelmmtz@outlook.es','Mexico','2021-08-05 18:01:39','2021-08-05 18:02:25',1),
  ('6cbf5728-0719-4554-b1c6-db3906d715ca','kelly15','kelly.diazth@gmail.com','Colombia','2021-08-14 14:39:33','2021-08-14 14:39:33',1),
  ('79658cea-ae07-4083-b555-05c12f9bfdd3','katherinerios180744','katherinerios180744@correo.itm.edu.co','Colombia','2021-08-18 09:17:00','2021-09-01 10:00:18',1),
  ('cf73aaf9-1969-4633-b08a-d9ed18b65d08','katherineguarin','katherineguarin52@gmail.com','Colombia','2021-08-25 06:44:03','2021-08-25 06:55:31',1),
  ('45215cca-2d69-4108-93b5-bd82ebdd2ea0','crisfajardo','crisfajardo@umariana.edu.co','Colombia','2021-08-31 13:55:53','2021-08-31 13:59:24',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('43d6c9e5-a98d-44e4-841d-d6c9689af26c','pllanos2727','llanostorrico@gmail.com','Bolivia','2021-09-01 16:54:09','2021-09-06 18:36:50',1),
  ('7983696b-8008-443e-80a9-ad80ddbf1dc7','melvinvasquez','melvinvasquezr2@gmail.com','Peru','2021-09-13 13:19:55','2021-09-13 13:20:54',1),
  ('8c948565-0957-4cc2-bbf2-ef952f0a36cf','davidhidalgo','david.hidalgo@rxglobal.com',NULL,'2021-09-16 21:17:11','2021-09-17 11:26:18',1),
  ('422a9e84-01c7-4a8f-bdd3-c6aec512ef28','hcornejo','h_cornejo@fibertel.com.ar','Argentina','2021-09-29 13:06:18','2024-07-29 19:45:06',1),
  ('69ce905d-ec8e-45a7-bfff-371c619ccbb4','iramosrullan','iramosrullan@pucpr.edu','Puerto Rico','2021-10-15 10:16:07','2021-11-03 04:24:48',1),
  ('7e8b061c-4935-4c91-b1a6-9c5a52b6f8ab','10','angie_munoz75211@elpoli.edu.co','Colombia','2021-10-16 05:49:18','2021-10-16 05:50:08',1),
  ('362b1ff4-2e99-4328-afa7-cdeac02cd20a','ananaranjo594','ananaranjo594@gmail.com','Colombia','2021-10-19 21:31:15','2021-10-19 21:32:14',1),
  ('09ac37ad-ae24-4163-b1f0-3a5217a616d1','crily4c','gcrisleisy25@gmail.com','Dominican Republic','2021-10-24 15:31:45','2021-10-24 15:36:58',1),
  ('10611c06-01f6-4cb5-8f46-077efa4b6a73','auxiliar','carlos_guarin82201@elpoli.edu.co',NULL,'2021-10-25 10:18:40','2021-12-18 20:57:56',1),
  ('cf8d2bc5-988a-469f-b830-200bea31500e','bryan','bryan_florez95191@elpoli.edu.co','Colombia','2021-11-08 08:40:08','2021-11-08 08:41:08',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('eb36e6a3-b261-4072-8af0-bfc0108f074f','csalazar','maria.salazarhu@amigo.edu.co','Colombia','2021-11-12 18:18:20','2021-11-12 18:19:17',1),
  ('fdb056b6-a16b-4582-9f9c-8bf6bfdad2ce','ruedaandrea','rueda-andrea@javeriana.edu.co',NULL,'2021-11-12 21:10:31','2021-11-26 08:49:36',1),
  ('9428af5e-8e0c-4eed-94a7-150ac26e4e4a','jcblandon','jcblandon@elpoli.edu.co',NULL,'2021-11-12 21:18:29','2021-11-23 12:56:37',1),
  ('420ba535-b8fa-436d-8a22-82acc2c13392','angelicaf85','angelicaf85@gmail.com',NULL,'2021-11-12 21:24:24','2021-11-30 11:47:47',1),
  ('2beacfb3-b993-43b8-87d2-03245940145b','tomasrg','tomasrg@uclv.edu.cu','Cuba','2021-11-16 10:38:10','2021-11-16 11:34:30',1),
  ('468ac20c-c65b-46b3-8b08-1beb023b8cc8','amartinezr','amartinezr@udistrital.edu.co','Colombia','2021-11-20 14:44:56','2021-11-20 15:09:03',1),
  ('4ef83cb1-8199-4b5c-9e08-b75d005c8c99','gabrielacarrascoaubert','gabrielacarrascoaubert@gmail.com','Colombia','2021-11-22 08:40:19','2021-11-22 08:40:52',1),
  ('98562b89-a7b9-4f04-aa77-e05901fb0309','70551914','capetope1@gmail.com','Colombia','2021-12-01 15:16:19','2021-12-01 15:17:35',1),
  ('c02805cc-465a-45c9-ae24-a78d3abf19bf','ilmucoro','ilmucoro@gmail.com','Indonesia','2021-12-02 03:04:56','2021-12-02 04:40:29',1),
  ('1cff5c67-92af-40eb-a76c-1b3a5ef739e3','auxiliar_marco','marco_mesa82182@elpoli.edu.co','Colombia','2021-12-06 11:23:06','2021-12-17 11:18:08',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b1a28f74-08f2-4adc-bb6b-20707864b3e0','anita2021','anaf.1956@yahoo.com.mx','Cuba','2021-12-14 17:10:32','2022-07-09 18:39:20',1),
  ('11264f92-1410-42ca-921a-8d3161fa3650','lufeteme08','lufeteme08@gmail.com','Antarctica','2021-12-16 03:45:55','2021-12-16 03:46:24',1),
  ('9bb9a1bd-006b-475d-83eb-37351a35f680','valentina_uribe11191','valentina_uribe11191@elpoli.edu.co','Colombia','2021-12-18 13:42:17','2021-12-18 13:44:03',1),
  ('1d5beb23-d36d-4b29-8e80-99e55ae2568d','sophiebunk','sophiebunker@wildmail.com','Austria','2022-01-09 09:40:17','2022-01-09 09:40:17',1),
  ('f251ceae-75d3-4c56-b959-1a9a8ea0f7ab','nicolas99','nicolas.alvarezmerlano@gmail.com','Colombia','2022-01-10 12:13:59','2023-06-03 16:09:30',1),
  ('a4a4cab0-d5a1-4fae-a116-bb44cef940da','wsalaol','wsalaol@ulvr.edu.ec','Ecuador','2022-01-19 16:12:16','2022-01-19 16:17:32',1),
  ('65141ff2-de92-464a-8427-7c88ef4f0173','26angel1998','aquihumberto@gmail.com','Guatemala','2022-01-25 22:25:00','2022-01-25 22:27:44',1),
  ('7faac4a2-1726-4aa0-8236-da95848b7e31','dasorcal92','daviel.soria@uo.edu.cu','Cuba','2022-01-27 14:52:43','2022-05-04 21:21:44',1),
  ('acd4621c-f0aa-455b-9594-63b4a3a5bb21','luismartinezd','luismartinezd@correo.unicordoba.edu.co','Colombia','2022-02-04 09:25:09','2022-02-13 16:39:43',1),
  ('171425b1-dac3-4eb3-95f4-a1959476a100','joselmo730715','sis3105@ucm.cfg.sld.cu','Cuba','2022-02-07 12:48:18','2022-02-07 12:50:47',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f2790671-114c-48cc-9197-bfaab36ec1f6','em_cornelio','elia.cornelio@ujat.mx','Mexico','2022-02-12 11:04:23','2022-12-20 13:42:15',1),
  ('03844d0d-b55c-4af9-812b-9368df021ea4','lamontoyar','lamontoyar@unal.edu.co','Colombia','2022-02-18 09:05:07','2025-10-02 17:38:08',1),
  ('f8030a0e-3369-41ce-acc4-ee7418885ba2','victor777','victor.gilve@amigo.edu.co','Colombia','2022-02-19 08:44:05','2022-04-22 16:48:53',1),
  ('d016bd86-f450-41ce-92db-8c0f7c0253c3','juan1999','juan.gil-a@uniminuto.edu.co','Colombia','2022-03-01 00:22:29','2022-03-01 00:24:17',1),
  ('c1acc6ef-9f31-4efa-ae2e-3041638176c5','ederacevedom','eder.acevedom@campusucc.edu.co','Colombia','2022-03-02 08:20:12','2022-03-17 18:14:05',1),
  ('9e1ba81a-8853-4f7a-b038-21675679c476','marialilianamejiadaza','marialilianamejiadaza@gmail.com','Colombia','2022-03-02 17:25:11','2022-03-12 12:45:56',1),
  ('ef41b040-40a4-4935-a1f7-4eec203ad4fa','92jhonatan92','jalexanderbecerra@jdc.edu.co','Colombia','2022-03-03 08:22:20','2022-07-11 15:17:55',1),
  ('d37e7a58-e426-4c5b-91c0-0480228ff381','jmapero76','jmapero76@gmail.com','Colombia','2022-03-08 08:38:57','2024-11-25 06:06:55',1),
  ('c88d3e20-34a6-4e76-b633-bb5f05540136','123henrybohorquez123','henry.bohorquez4810@correo.policia.gov.co','Colombia','2022-03-09 11:26:20','2022-03-09 11:27:32',1),
  ('9a2d3294-32ed-46ef-b657-303d82f375fb','fcorrea2701','fcorrea2701@gmail.com','Colombia','2022-03-09 16:58:40','2022-03-09 16:59:48',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('84c5d34a-f30f-43f6-afad-cada8d53edce','fercarias','fernando.carias@ulagos.cl','Chile','2022-03-17 14:52:57','2025-06-09 05:31:42',1),
  ('0d4bcd04-65ad-4b75-84a4-2982e3f7b555','mandradea','mandradea@ulvr.edu.ec','Ecuador','2022-03-17 15:03:32','2022-03-17 15:05:44',1),
  ('5606084e-cb4a-4f78-8159-42a5b655346f','rijapime79','ricardo.pineda@unad.edu.co','Colombia','2022-03-19 09:02:06','2025-10-03 11:05:14',1),
  ('e4effb28-71e6-4d28-8a61-2f483892f3ed','yakiel-rodriguez','yakiel.rodriguez@umcc.cu','Cuba','2022-03-19 17:50:50','2022-03-26 11:49:34',1),
  ('ca283206-3ce5-4311-8f5c-e361e2e70c73','waleont','willeon@udca.edu.co','Colombia','2022-03-24 09:38:09','2022-03-24 09:45:05',1),
  ('48cfdb26-3bca-49d4-993c-f090265976e6','habpoly','habotero@unal.edu.co','Colombia','2022-03-25 10:54:55','2024-09-30 08:42:54',1),
  ('5607ef35-5af6-4ca1-98c4-741101b13214','valentina_calderon92211','valentina_calderon92211@elpoli.edu.co','Colombia','2022-04-12 19:21:53','2022-05-23 22:50:39',1),
  ('1e79e7bc-75d3-40f7-8373-e2cfb59dc185','seagiraldora','seagiraldora@unal.edu.co','Colombia','2022-04-21 13:13:56','2022-07-18 21:40:33',1),
  ('9086eced-4ce1-4533-b1c4-cdd8b7679ee0','laura-rivera1','laura.rivera1@udea.edu.co','Colombia','2022-05-09 16:04:04','2022-08-01 11:33:30',1),
  ('d9f8f962-6a2b-4636-a274-686780795b32','jmorales22','jarmandomorales@ucompensar.edu.co','Colombia','2022-05-10 18:38:57','2022-07-26 16:27:31',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d3ae6ac8-0564-40d2-9f83-e960ac6de05f','oguzman2','oguzman2@unab.edu.co','Colombia','2022-05-16 13:59:33','2022-05-16 13:59:33',1),
  ('43225369-7637-4272-b5bf-7231c68ee8e2','javiermartinez25','jmartinez@unillanos.edu.co','Colombia','2022-05-20 17:41:32','2023-11-07 16:16:47',1),
  ('8109477e-1e53-4d8a-bcb5-a038d87a8b56','jaimearenas','jaimearenas@elpoli.edu.co','Colombia','2022-05-30 17:40:42','2025-09-21 09:29:08',1),
  ('a166a9b6-2d72-43a8-b787-cccb34799142','danna0101','danna.cortes@uniminuto.edu.co','Colombia','2022-05-31 16:37:07','2022-05-31 16:38:07',1),
  ('7b58ac10-a25d-4828-80bf-c4fff50c791f','sandra21','sandris21@gmail.com','Colombia','2022-06-04 08:55:07','2022-07-25 21:29:28',1),
  ('16ab71a6-ef6f-4665-8b7f-1a517dadafa2','orlandoa19','orlando19081982@gmail.com','Venezuela','2022-06-20 18:05:58','2022-08-09 16:27:13',1),
  ('6e38bd5d-f234-4355-bf7f-b5ee32882b20','wovelar','wovelar@hotmail.com','Paraguay','2022-06-20 22:33:54','2022-06-22 09:01:03',1),
  ('24240793-27d7-45b3-9345-8033962e5628','1marly1','marly_echeverry95182@elpoli.edu.co','Colombia','2022-06-23 09:01:50','2022-06-23 09:02:59',1),
  ('0c701f99-aea8-4aa3-a223-c2da68841b6a','luis_paz','luisernestopazenrique@gmail.com','Mexico','2022-06-26 19:59:07','2023-03-31 09:59:19',1),
  ('8b72e2b4-51e8-4a5d-849c-e6aa47724d46','slotgacor','christelmoon@snail-mail.net','Northern Mariana Islands','2022-06-27 06:15:33','2022-06-27 06:15:33',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('aaa09c20-9546-4a4c-a458-539f9230b03b','eahernandez1990','eahernandez1990@gmail.com','Mexico','2022-06-28 16:04:44','2023-01-18 20:30:21',1),
  ('a1778980-4807-46c0-b0c2-b54a1e36625d','carlosocampo','carlos.ocampo@upb.edu.co','Colombia','2022-07-05 20:19:16','2022-07-21 14:24:22',1),
  ('c111b59f-9d1c-4447-874e-bf79c7511426','pemedina','pemedina@correo.iue.edu.co','Colombia','2022-07-05 20:56:23','2022-07-19 16:03:38',1),
  ('3f888805-f133-4899-a4cb-a7f5ae30bf91','hernandoonate','hernandoonate@unicesar.edu.co','Colombia','2022-07-05 21:07:58','2024-08-20 14:29:15',1),
  ('f5aca342-43f9-4248-95bb-44a33a0aa83c','mariana_cardona86172','mariana_cardona86172@elpoli.edu.co','Colombia','2022-07-11 09:02:45','2022-07-11 09:03:39',1),
  ('e88ad43a-5ab5-4404-89bb-bc975ef133d6','marl-quintero93','ylram93@hotmail.es','Colombia','2022-07-12 11:37:09','2022-07-12 11:40:17',1),
  ('ebdb97f7-90a0-4f82-b91c-c116a7d984ab','rosorioh','rosorioh@unal.edu.co','Colombia','2022-07-18 18:57:49','2022-07-18 18:57:49',1),
  ('ef2e7098-b7d9-410c-8e79-d8e5c218e9bd','brayan_serrano99','brayanserrano1999@hotmail.com','Colombia','2022-07-25 22:09:18','2022-09-29 10:19:13',1),
  ('02a9e266-7a46-4b9b-8d23-e274609a8927','dlbetancur','dianabetancur@elpoli.edu.co','Colombia','2022-07-26 21:31:41','2025-07-07 11:41:37',1),
  ('a5d8db58-95bc-4fa6-867a-b665aff75f05','eeroldan','eeroldan@elpoli.edu.co','Colombia','2022-07-29 12:15:48','2022-08-19 12:21:16',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('306042da-58bc-4747-8f02-081be2f378a2','1035438222','andres_jaramillo80172@elpoli.edu.co','Colombia','2022-08-01 09:12:47','2023-03-23 17:45:47',1),
  ('987535ca-40e1-4bf2-b9f2-7dbb57c3f062','dloverad','dloverad@unmsm.edu.pe','Colombia','2022-08-01 12:57:22','2022-08-16 21:13:49',1),
  ('3bd0e723-c37b-465a-bbaa-2549eb716732','scherazadacalderon','scherazadacalderon@elpoli.edu.co','Colombia','2022-08-01 13:10:27','2022-08-10 15:10:24',1),
  ('69778b52-eaf2-44c3-8a4c-709d2e4a19a6','jairpatino','jairpatino@une.net.co','Colombia','2022-08-01 18:23:01','2022-08-11 07:35:50',1),
  ('2edb6380-e534-473e-ad89-c4b71ef6bb0f','psrivade','psrivade@unal.edu.co','Colombia','2022-08-02 12:36:55','2022-08-29 09:28:13',1),
  ('b853f088-91c1-4601-bec4-8436ea5e010f','grafcint','cvrojasp@unal.edu.co','Colombia','2022-08-03 06:54:47','2022-08-23 09:57:59',1),
  ('0b4916a2-d78f-4e31-bdb1-4c386ffd2f1f','delvasto','delvasto@uis.edu.co','Colombia','2022-08-10 20:19:43','2022-08-12 10:43:54',1),
  ('3748c8c7-be59-4b04-8c27-f9cda942282d','isaaclecla','isaacleclair@wildmail.com','South Georgia & the South Sandwich Islands','2022-08-17 19:49:41','2022-08-17 19:49:41',1),
  ('373f1bd2-2342-4d02-9b19-50d9d53d9fc0','ldfp981215','ldavid.florez@udea.edu.co','Colombia','2022-08-21 19:53:58','2023-03-28 21:50:46',1),
  ('74c60c5b-2f42-4099-80c7-50455b08f346','pollosro95','jj.ramirezossa@gmail.com','Colombia','2022-08-24 13:47:00','2022-08-24 13:47:53',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('55d50897-8c40-424e-bf87-f7c2759085ac','fernando28','ffernandezs@unitru.edu.pe','Peru','2022-08-25 23:26:13','2022-08-25 23:30:00',1),
  ('8b7fef82-cf9c-42b3-8bcf-c9f6e531d980','linavalencia2507','linavalencia2507@hotmail.com','Colombia','2022-08-26 20:29:36','2022-08-26 20:29:36',1),
  ('dca85d33-1a7c-433d-b8e6-ba2026559cac','hernoba','hernoba@hotmail.com','Colombia','2022-08-28 20:45:11','2022-09-08 10:04:38',1),
  ('500e4b9c-afa0-4b11-be52-9373cf452e9e','lvalencia','linavalencia2507@gmail.com','Colombia','2022-08-29 19:23:51','2022-09-06 21:26:53',1),
  ('fc8bc7f6-2cdb-449b-8bd3-880f712350b2','cmesa','carlos.mesa41@gmail.com','Colombia','2022-08-31 15:18:01','2022-09-12 11:03:24',1),
  ('f0e3e57d-eb94-402b-82ae-127af6318359','jptovars1991','jptovars@unal.edu.co','Colombia','2022-09-05 18:12:23','2022-09-29 11:10:39',1),
  ('42e04963-04bf-44b4-af0e-65339eb48ef6','augustocorreaochoa','augusto.correaochoa@gmail.com','Colombia','2022-09-05 20:18:05','2022-09-13 13:40:05',1),
  ('5668c233-fcfc-4c76-8f7a-e330e18b9a4f','williscour','willis.courtney@snail-mail.net','Tonga','2022-09-08 07:34:34','2022-09-08 07:34:34',1),
  ('034b388b-a4a9-4086-a2a9-54b9cfa69949','diegom','diegomunozc@elpoli.edu.co','Colombia','2022-09-13 18:34:56','2025-10-04 08:56:36',1),
  ('6a548039-c150-4650-a857-db3abf570700','jfduarte','jfduarte@elpoli.edu.co','Colombia','2022-09-14 15:25:30','2024-09-23 08:07:28',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f0ca5c59-ca73-4e9f-87e2-381e0b9fa293','dmunozc345','dmunozc345@gmail.com','Colombia','2022-09-14 21:47:11','2022-09-28 15:19:22',1),
  ('3a83b548-3cfe-42b7-98f0-ed890550ba70','svh','svillen@us.es','Spain','2022-09-20 03:26:58','2024-04-04 09:16:57',1),
  ('f0dab6bc-dcb7-491c-a1eb-6460efd9c299','icaro','icaro@elpoli.edu.co','Colombia','2022-09-21 13:49:35','2022-09-23 08:47:34',1),
  ('05c6ff46-3755-42a5-8d5c-acdade6ef541','yverdugo93','yulyverdugo@gmail.com','Colombia','2022-09-21 18:47:21','2022-09-21 18:48:14',1),
  ('df66cb71-9f60-4460-9a1f-b946da5e587e','jsilvabolivar','jsilva@elpoli.edu.co',NULL,'2022-09-23 18:03:55','2022-09-29 17:42:59',1),
  ('8472176a-5542-48d3-95ae-c18be5994295','johnvergara','johnvergara@elpoli.edu.co',NULL,'2022-09-26 11:39:56','2024-10-08 13:50:01',1),
  ('cfc97146-1f3c-40ac-aa10-2e0abc2614be','johncardona','johncardona@elpoli.edu.co',NULL,'2022-09-26 14:19:35','2024-10-23 19:26:03',1),
  ('0968a900-6591-4ee0-b902-eb969fe8395c','ancizarvargas','ancizarvargas@elpoli.edu.co',NULL,'2022-09-27 08:51:28','2024-09-26 23:02:00',1),
  ('b3f92ac6-e38a-4f7a-96a2-ba69cbc6b4f3','gustavomontoya','gustavomontoya@elpoli.edu.co',NULL,'2022-09-27 11:47:51','2022-10-01 18:30:13',1),
  ('9c919a40-2fd4-4ce8-84de-b58bda102dff','munozceballos','munozceballos.68@gmail.com','Colombia','2022-09-28 14:41:52','2023-09-18 14:29:43',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('84591ae5-f560-41a1-a561-63a65ab7e2ca','om2000','oscar.morales.2017@upb.edu.co','Colombia','2022-09-30 00:26:06','2022-09-30 00:26:55',1),
  ('a346c3d6-4de4-47cc-b8dd-058c5c07c0fe','jcaspuel17','juan_castano95142@elpoli.edu.co','Colombia','2022-09-30 10:24:40','2022-09-30 10:25:54',1),
  ('6bd751f2-6121-4b1f-b87f-664433758281','sara8323','sara_restrepo86192@elpoli.edu.co','Colombia','2022-10-01 21:10:15','2022-10-01 21:11:21',1),
  ('93cb1748-8cc9-4e16-a35d-b03b7d4b0d33','amfe','angelifa@hotmail.com','Mexico','2022-10-03 13:47:36','2024-01-17 16:17:40',1),
  ('c70cbceb-97ac-42b0-9dab-c6b54b557dd0','teresaquiroz','teresaquiroz@gmail.com',NULL,'2022-10-03 18:49:07','2023-09-07 13:57:34',1),
  ('99921b66-c647-4a3a-b89d-0d7c7259e69d','alexei8ad','agochoad@unal.edu.co','Colombia','2022-10-04 21:50:46','2022-10-04 21:51:21',1),
  ('8e25a654-468d-4901-a991-444a919a8895','aurelio','aflhav@gmail.com','Cuba','2022-10-09 08:00:56','2022-10-09 19:23:38',1),
  ('f1cf941d-3502-4575-a872-938b8ebb00de','07002629','roberto.rivas@umich.mx','Mexico','2022-10-10 16:22:42','2022-10-10 16:22:42',1),
  ('3b2857c3-7e5d-4ed2-beef-28ea7175ca36','cristian_pelaez82192','cristian_pelaez82192@elpoli.edu.co',NULL,'2022-10-12 13:11:59','2025-05-02 13:35:34',1),
  ('93cf772f-0e98-493a-8018-9f82ca1fe56d','raulhenao','raulhenao@elpoli.edu.co',NULL,'2022-10-13 08:05:39','2023-04-10 07:35:25',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e06abd8f-6ad0-4383-a1fc-cba82bb7500d','arianner','arianne.rodriguez@uo.edu.cu','Cuba','2022-10-15 08:47:30','2022-10-15 08:47:30',1),
  ('a97ee7fd-2dfd-4ad1-b228-dd1826c442f7','psfelipeagudelo','psfelipeagudelo@gmail.com','Colombia','2022-10-15 14:31:14','2022-10-15 14:35:19',1),
  ('eb83a12f-cd51-484f-b794-4ccda72cd00e','rmolina','ruben.molina@udea.edu.co','Colombia','2022-10-16 12:30:05','2022-10-16 12:30:39',1),
  ('29d5d0bd-8242-454a-9005-bd1f8e453d8c','19borsofia90','sofiaborsini@gmail.com','Argentina','2022-10-17 13:36:00','2024-06-16 17:55:38',1),
  ('a2a28629-d0e3-44de-8b4c-6d90d7e1091e','zpehollis1','hollisreynolds@animail.net','Portugal','2022-10-17 20:42:13','2022-10-17 20:42:13',1),
  ('040f7a5e-30d7-439e-92dc-d4bb34eb2935','nelva','nelvarf@gmail.com','Argentina','2022-10-18 09:26:07','2023-12-27 17:46:39',1),
  ('4daa1bd3-36c0-4605-8eef-226399e919f1','kathy_arias','katerin.arias9451@utc.edu.ec','Ecuador','2022-10-20 20:50:40','2022-10-20 20:50:40',1),
  ('eac029f6-5c4f-4893-bf0c-fa94823226eb','oscartroyo','oscartroyo7@gmail.com','Mexico','2022-10-24 09:39:00','2023-03-27 15:03:08',1),
  ('93ef80f0-0de4-4872-b90e-a9950a2c7752','catalinabeltranzerda','mariacatalinabeltran@gmail.com','Colombia','2022-10-24 14:11:24','2023-03-02 15:51:22',1),
  ('52e82371-239e-43a9-863c-43613eedfec6','alceganu','alma.celia@gmail.com','Mexico','2022-10-28 01:06:17','2023-08-28 01:41:01',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('455b33c6-e919-47ac-becd-234cadcec6e3','roxanajfarias','roxanajfarias@gmail.com','Argentina','2022-10-28 17:29:46','2022-10-28 17:39:55',1),
  ('6a7c4db9-4e4b-47c3-a3ed-015c6d4d018f','monivalle','monivalle@gmail.com','Colombia','2022-11-08 11:55:26','2022-11-08 11:55:26',1),
  ('3c34e92e-81b5-4d95-9b9b-7e1c549ca311','linasanchez28','lina.sanchez.guarnizo@unillanos.edu.co','Colombia','2022-11-08 16:40:32','2022-11-08 16:43:01',1),
  ('122bab50-be7c-43ae-a591-17894ad5df2c','maurocanas75','maurocanas75@gmail.com','Colombia','2022-11-09 17:35:39','2022-11-18 14:16:17',1),
  ('235f493c-d5e5-40e7-a1f1-39a1f5f07604','isabelpatinomarquez','isabelpatinomarquez@gmail.com','Colombia','2022-11-09 17:38:48','2022-11-15 08:49:25',1),
  ('4ea222bd-6dc4-4041-a0c5-c433f93c6c89','javierlora','javier.lora@udea.edu.co','Colombia','2022-11-09 17:42:00','2022-11-21 08:51:26',1),
  ('46e06031-281e-422c-80ac-e56446d7ea31','luzfel','luzfel@hotmail.com','Colombia','2022-11-17 14:22:37','2022-11-17 14:24:52',1),
  ('5e700a26-f4d2-43ec-911a-5466f4f48068','leidysanchez','leidy96.sanchez@gmail.com','Colombia','2022-11-19 18:04:02','2022-11-19 18:04:36',1),
  ('75118c4d-0111-483b-85ba-95acb56d838c','lizethmartinez1726','lmr242617@gmail.com','Mexico','2022-11-21 22:42:16','2022-11-21 22:42:16',1),
  ('5dafaf18-7274-44a9-b0de-1068b4776bde','lizethmartinez172650','lizmtz_26@hotmail.com','Mexico','2022-11-21 22:47:06','2022-11-21 22:50:15',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ee6b8e5b-2af9-4ab4-a269-d6adef6d65f2','elmanaylor','elma_naylor@snail-mail.net','French Guiana','2022-11-22 00:50:47','2022-11-22 00:50:47',1),
  ('2e45b357-b755-4754-a866-2294eb5a4898','franciscogutierrez','fgutierrez@uce.edu.ec','Ecuador','2022-11-23 10:40:04','2023-03-29 08:02:55',1),
  ('43995a6b-fb56-4cb8-9014-b9a06f00525a','magalyvaras','magaly.varas@uvm.cl','Chile','2022-11-23 15:10:17','2023-03-12 09:14:32',1),
  ('9ea740a8-0a33-4d7e-b0a0-39997a274c49','3paula3','paulah284@gmail.com','Colombia','2022-11-24 15:22:24','2024-05-26 23:20:02',1),
  ('07177faf-4c8c-4de1-8c49-c76d2c845ede','sara_nietom','svnietom@libertadores.edu.co','Colombia','2022-11-24 20:48:17','2022-11-24 20:48:44',1),
  ('27d3887d-6bca-4dca-8e93-22b0bb4087f2','rosa_pai1018','ropai@umariana.edu.co','Colombia','2022-11-25 21:57:03','2022-11-25 21:58:11',1),
  ('1068575c-a4c7-4781-8108-08a83913f998','rosariotorres','rzt1@psu.edu','United States','2022-11-27 11:59:49','2023-02-24 14:14:31',1),
  ('53a590e5-7204-4da6-bf9d-d4297aa6b6dc','editor_desarrollo','maria_espinosa82152@elpoli.edu.co','Colombia','2022-11-29 20:50:03','2022-12-13 21:39:51',1),
  ('78c235e5-7752-41ee-a5aa-a398e570454e','melisa_a27','meliisa.a27@gmail.com','Mexico','2022-12-02 13:36:36','2024-12-29 20:46:59',1),
  ('7252d6af-8d93-4185-974e-09d6a81bc814','andresmp','andres_mora84171@elpoli.edu.co','Colombia','2022-12-03 13:16:41','2024-05-04 10:23:14',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ecdbfe7e-e0be-47c4-a998-961ed2defe46','julietteaguillon22','juliette.aguillon@upb.edu.co','Colombia','2022-12-05 17:22:47','2023-03-28 21:53:27',1),
  ('c32d7d45-1568-4c3f-97b9-9bda747f41b1','59312032','vmrodriguez@unicesmag.edu.co','Colombia','2022-12-07 08:17:45','2025-06-04 17:14:24',1),
  ('eadac6ec-b359-4b1c-bbbe-17f2ebae2460','jfmunozf','jfmunozf@unal.edu.co','Colombia','2022-12-12 09:34:34','2022-12-19 09:08:24',1),
  ('2675f4ba-b802-4c38-b657-d123596ad4aa','edalgole','edalgole7@gmail.com','Colombia','2022-12-12 18:30:55','2022-12-12 18:31:34',1),
  ('2ca15f51-3f2f-4d08-b866-3c4f4f383e82','ana_gabriela_banquez_maturana','banquezanagabriela@gmail.com','Colombia','2022-12-15 17:28:04','2022-12-15 17:29:45',1),
  ('c15721ce-aa3e-452f-8805-a81fca79619e','juanfelipeherrera','juanfelipeherrera@gmail.com','Colombia','2022-12-17 11:04:45','2023-03-10 09:53:12',1),
  ('49fb6553-4a05-4914-9077-fa4c09f5fdd7','mottafer','mottafer@yahoo.com','Brazil','2022-12-17 11:12:08','2022-12-20 08:21:54',1),
  ('430d77e2-55f4-4731-8bc3-62055d60b1b8','dianapgiraldo','dianap.giraldo@upb.edu.co','Colombia','2022-12-17 17:10:27','2023-01-03 09:21:44',1),
  ('5c849db9-f37d-4a40-ab91-145e2895d780','juan_rivera84181','juan_rivera84181@elpoli.edu.co','Colombia','2022-12-19 10:10:54','2022-12-19 10:12:21',1),
  ('28353952-e85c-42f4-b270-ae02dc68cda1','federicofina','federico.fina@unr.edu.ar','Argentina','2022-12-19 21:22:29','2022-12-29 09:37:29',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('58eca8bc-6943-4638-89d8-7dd40aba9a33','bmartin','bmartin.unr@gmail.com','Argentina','2022-12-19 21:25:33','2023-04-14 03:57:03',1),
  ('740632e3-e0ab-490d-ac97-6215f00b2dbb','m4dapuos-01','maria.pulidoosorio8@gmail.com','Colombia','2022-12-21 15:04:18','2023-03-29 07:37:18',1),
  ('7be87622-64d9-411c-885e-49c03eecd702','sacastroh','sacastroh@gmail.com','Colombia','2022-12-23 12:03:56','2022-12-23 12:12:27',1),
  ('9c945b47-c6af-4585-9de2-391ff7078bbc','1116209299','jamessantanilla@gmail.com','Colombia','2022-12-23 12:57:33','2022-12-23 13:33:31',1),
  ('535ebf56-a8be-452f-b35e-89a9d36eaa82','duolingosebas2020','duolingosebas2020@gmail.com','Colombia','2022-12-30 21:22:09','2022-12-30 21:23:54',1),
  ('cdd6a8df-45f2-45ac-929e-2805745b65d1','andresfernandez1','andrespro12@hotmail.es','Spain','2023-01-08 09:24:41','2023-01-26 23:56:04',1),
  ('9fb26c0c-fabc-4889-83db-e53353dd8fa3','ruthberrodriguez','ruthber.rodriguez@corhuila.edu.co','Colombia','2023-01-08 11:50:32','2023-01-23 21:50:05',1),
  ('b35d35f5-7484-4cb9-be45-f9286881fc56','cristinahuertas','cristina.huertas@uco.es','Spain','2023-01-25 06:25:28','2023-01-25 06:26:42',1),
  ('31914a75-2549-4ea2-b472-24bfb90e0fb7','dico_08','diego.garcia@endeporte.edu.co','Colombia','2023-01-25 10:49:08','2023-01-25 10:50:30',1),
  ('29163c10-9e87-4ed9-96c3-c55f2d8429f0','haleman','haleman@jdc.edu.co','Colombia','2023-01-27 09:10:48','2023-01-31 11:55:45',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b307a0d9-e8e7-4214-9094-3b21bc068e46','fer5espinosa','fer5espinosa@gmail.com','Mexico','2023-02-04 01:34:48','2023-02-04 01:35:43',1),
  ('3b4e0192-26e5-4508-97f9-76ce438574f6','dianalotero','diana.lotero@udea.edu.co','Colombia','2023-02-06 11:19:55','2023-02-06 11:20:40',1),
  ('d68e52ea-0def-4c06-acd5-d6df6c7879cf','jairoguimaraes-62','jairoguimaraes62@yahoo.com.br','Brazil','2023-02-11 08:45:26','2023-02-11 08:45:57',1),
  ('3ab8a3ef-226b-4125-ab6a-ffe149bdc038','rodriguezfranconicolas2','rodriguezfranconicolas2@gmail.com','Colombia','2023-02-13 12:48:19','2023-02-13 17:02:24',1),
  ('cc6ce13e-de83-4086-8fa5-1e330f602740','jorangelc','jorangelc@gmail.com','Cuba','2023-02-13 17:08:10','2023-02-23 11:59:56',1),
  ('f4cf9a8f-f8f6-4596-9e6d-eed7c8cdefde','tmira','tmira@unillanos.edu.co','Colombia','2023-02-14 19:01:16','2023-02-17 11:57:12',1),
  ('0250dd1b-1316-4d32-8d41-d88001e1ffa9','ncastroperdomo','ncastroperdomo@gmail.com','Cuba','2023-02-15 09:03:44','2023-02-15 09:10:33',1),
  ('487bc309-2b84-4cb2-baae-67bd4a728930','vmmedinarobles','vmmedinarobles@unillanos.edu.co','Colombia','2023-02-15 18:20:30','2023-03-07 15:13:09',1),
  ('20a21e2c-2af0-4566-804f-c55b7c29db8f','luisfranciscoramirez','luisfranciscoramirez@unicesar.edu.co','Colombia','2023-02-16 19:23:42','2023-03-03 20:04:16',1),
  ('c7d9ad69-5fd9-4256-a8e8-340e360a924a','javierorozco','javierorozco@unicesar.edu.co','Colombia','2023-02-16 19:27:01','2023-03-01 06:00:20',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a54b5dbc-840f-482c-9e48-92722dada7b0','oliverramos','oliver.ramos@educantabria.es','Spain','2023-02-16 19:32:26','2025-05-16 03:24:55',1),
  ('0907a96f-ad69-4ebc-815d-cb9c152cd6e1','rodneycorreaja','rodney.correaja@amigo.edu.co','Colombia','2023-02-17 13:20:02','2023-02-27 19:40:06',1),
  ('d7e2b501-ffa0-4c31-8c6a-6ed83f620418','camilochb04','camilochb10@gmail.com','Colombia','2023-02-19 21:42:19','2023-02-19 21:42:19',1),
  ('75013a9b-9ecd-451d-9740-ece33b42bd51','juan-cardona2912','juan.cardona000@endeporte.edu.co','Colombia','2023-02-20 09:03:23','2023-02-20 09:04:13',1),
  ('813394fa-b400-4192-b323-993775e6265d','crgarcia','cristhovillalba18@gmail.com','Colombia','2023-02-21 08:42:54','2025-04-02 18:23:21',0),
  ('a907139b-ed99-4681-bfda-8d94838ceb91','maricellygomezva','maricelly.gomez@udea.edu.co','Colombia','2023-02-27 08:46:08','2023-03-26 12:47:07',1),
  ('860e9e40-2a51-4202-b8a5-53e8ef04af61','sandymilenap','sandymilenap@hotmail.com','Colombia','2023-03-01 12:28:10','2023-03-12 10:47:17',1),
  ('0f4abc52-6a5c-4672-9b1b-d696d29d8f16','hernanarias','hernanarias@elpoli.edu.co','Colombia','2023-03-08 09:03:09','2024-11-25 11:19:38',1),
  ('61a8aa2a-1dbc-4927-b0dd-0ff8bb426fd4','ladisfrias','ladisfrias@elpoli.edu.co','Colombia','2023-03-08 09:04:33','2024-07-08 10:37:02',1),
  ('cf236e76-23ab-46a1-80aa-b639b4b6d3dd','yamarin','yamarin@elpoli.edu.co','Colombia','2023-03-08 09:11:57','2025-10-01 15:36:09',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c6dc5eea-6432-483d-9a87-641a73a6def2','mafegil','mariam_gil90121@elpoli.edu.co','Colombia','2023-03-08 09:15:36','2025-10-01 13:53:48',1),
  ('4c4f07e1-45da-4895-a10b-3cdc1bbd5ef3','sandramunoz','sandramunoz@elpoli.edu.co','Colombia','2023-03-08 09:17:01','2025-09-16 20:41:24',1),
  ('9c564f15-de9d-475a-95f0-67c1ed0baab7','clarauribe','ciuribeb@libertadores.edu.co','Colombia','2023-03-08 10:52:23','2023-07-06 19:08:14',1),
  ('e625f21b-e294-4744-a98b-bdd7c29257c5','laura20','laura_jurado20191@elpoli.edu.co','Colombia','2023-03-10 09:25:00','2025-06-23 17:56:16',1),
  ('6bc8fe93-f658-433e-835d-d0a4f63d1126','oecmascali','oec77@hotmail.com','Argentina','2023-03-14 08:05:32','2023-10-19 09:48:55',1),
  ('e70180fd-0ffe-4d83-8e34-4dcb4ae1bbea','jfosorio','jhonfosorio@elpoli.edu.co','Colombia','2023-03-14 16:14:24','2024-11-24 10:39:32',1),
  ('4a5f7bf4-6f72-42b2-a674-7bd0d2af8cde','cpinedam','cpinedam@ces.edu.co','Colombia','2023-03-22 07:12:39','2024-02-15 21:52:36',1),
  ('973aa318-1a89-4676-bb1a-5ff64660c461','yeifer_londono65211','yeifer_londono65211@elpoli.edu.co','Colombia','2023-03-22 12:01:29','2023-03-27 19:55:31',1),
  ('af7beb52-0bfe-4019-911f-8c18900938b1','melisamartinez2007','melisamartinez2007@hotmail.com','Colombia','2023-03-29 22:05:48','2023-04-11 15:22:45',1),
  ('6fa50ecf-771e-466e-87db-607c73ccc108','urcunina','urcunina@hotmail.com','Colombia','2023-03-29 22:09:07','2023-05-28 13:35:01',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e52407dd-5b63-4068-b673-d2cb57d6b589','andreamoreno28','andremonto96@gmail.com','Colombia','2023-04-03 12:21:59','2023-04-03 12:22:43',1),
  ('b4317d2c-5271-4aea-a7a5-6b8b4abcf84f','escribastv','escribastv@gmail.com','Colombia','2023-04-04 14:15:19','2024-01-24 04:42:39',1),
  ('86b37d60-4247-4086-85fb-60b12c81c3d0','martaluciacardonaochoa','martatletic@gmail.com','Colombia','2023-04-08 18:21:32','2023-06-02 20:10:46',1),
  ('14a14c72-2989-4b8c-8cc2-673f4e832545','jopellegrini','jorgepellegrini@yahoo.com.ar','Argentina','2023-04-11 22:23:21','2023-08-30 14:44:32',1),
  ('94b00f18-40ea-46ad-88bb-655f869c6ed9','valentinaescobedo','joescobedo@umariana.edu.co','Colombia','2023-04-11 22:25:11','2023-06-20 13:29:56',1),
  ('35dce7d3-b2af-4718-8078-62d7d76fb73a','kioshi-cy','alejandrocastillejos12@gmail.com','Mexico','2023-04-12 09:59:33','2023-10-09 09:08:51',1),
  ('acf4620a-d879-4158-b971-716e44f8e4ab','paulamendoza10','paulamero10@hotmail.com','Colombia','2023-04-12 10:24:34','2023-05-24 11:04:23',1),
  ('abffcf3d-c640-4630-9485-f70940b3935a','rociojeda1','rojeda@umariana.edu.co','Colombia','2023-04-12 10:45:43','2024-06-19 08:38:54',1),
  ('6dfad582-172e-4a75-98eb-f257b1ae423a','m-alejandra_oliverosc','maria2218108@correo.uis.edu.co','Colombia','2023-04-12 11:04:09','2024-04-28 16:02:32',1),
  ('b57908b1-ce62-4484-9d03-6d43e8068c57','glopezangel','mixteca_migration@hotmail.com',NULL,'2023-04-12 11:45:02','2024-01-22 13:41:40',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5c82aa5d-1151-4068-9c31-5d694a56009a','lmarchena','laguila@pucp.pe','Peru','2023-04-12 12:05:48','2023-04-27 15:35:59',1),
  ('ea609fff-5b4e-4cda-bd76-b2c74c7aa066','jennyfer_oliva','stefania21021998oliva@udenar.edu.co','Colombia','2023-04-12 13:03:10','2023-10-02 18:49:39',1),
  ('dedfc34a-202c-4219-9600-4fe4629784ad','prometeus','mercyjulieth@gmail.com','Colombia','2023-04-12 20:29:07','2023-09-29 09:52:46',1),
  ('99be74f0-3363-4abe-b812-c44add77760a','diegovalencia82','diegovalencia5@gmail.com','Colombia','2023-04-12 21:29:23','2023-11-14 09:47:21',1),
  ('e43003bf-4893-4101-8359-43a36f693c71','jcjaramillo','jcjaramillo@udemedellin.edu.co','Colombia','2023-04-13 22:00:38','2023-06-26 09:49:56',1),
  ('10c28ab1-beed-433c-89f6-52217a164fdb','angie25','angied.ortega@hotmail.com','Colombia','2023-04-14 11:19:51','2023-04-14 11:20:15',1),
  ('2f8aa371-5fe9-4827-aa5d-e451c34e3f58','leidyzuleta16','leidyzuleta16@gmail.com','Colombia','2023-04-16 14:15:47','2025-06-17 16:46:23',1),
  ('4a32b750-cdca-4ebb-a871-7f6efabb61c5','mzangaro','mzangaro@campus.ungs.edu.ar',NULL,'2023-04-17 12:10:45','2023-11-27 14:26:58',1),
  ('0f4c8a9c-05b9-402c-ab96-da665e18eaa6','fmonsalveospina','hfelipemo@gmail.com',NULL,'2023-04-17 12:16:03','2023-05-25 20:32:27',1),
  ('ea76ddcc-14a9-4d14-8b05-8d39241d8db1','luisgalvan','luisgalvan@elpoli.edu.co','Colombia','2023-04-19 16:08:46','2023-05-29 23:58:53',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b1dcfde8-1965-4345-abda-5c37ba09806e','luisdiaz','luisdiaz@unicesar.edu.co','Colombia','2023-04-19 21:24:46','2023-04-23 18:10:05',1),
  ('590f01cb-84f6-4979-90f1-dfe540569f83','cecilia_ines24','cecilia_ines24@hotmail.com','Colombia','2023-04-19 21:27:46','2025-06-18 16:45:37',1),
  ('b17a44c2-30a1-4882-9302-f94c53e08c32','brahiantuberquia','brahian.tuberquia@uniremington.edu.co','Colombia','2023-04-19 21:32:33','2025-04-30 11:33:57',1),
  ('ec0b1a39-b065-4dd0-a4ce-8f4b3f9285c8','edgaragudelol','edgaragudelol@yahoo.com','Colombia','2023-04-19 21:35:21','2023-05-04 11:50:46',1),
  ('43baa518-3093-41a8-b939-365dd4755dca','luciaver6','luciaver6@gmail.com','Spain','2023-04-20 21:15:44','2023-06-08 06:52:02',1),
  ('6d4a0b3f-471d-4204-8a23-703fefe6ed8e','angelalasso1','angelalasso1@yahoo.com','Colombia','2023-04-20 21:19:29','2023-05-04 19:26:37',1),
  ('5c512018-64cb-42fd-b083-aa311b0678dd','fredyangarita','fredy.angarita@campusucc.edu.co','Colombia','2023-04-20 21:23:02','2023-05-14 07:11:15',1),
  ('753ed232-7d04-435a-b25b-3d3d5e21642a','hrecaman','hrecaman@elpoli.edu.co','Colombia','2023-04-20 21:37:28','2023-05-15 07:43:33',1),
  ('378de333-c118-4188-966e-558832fe9fb2','alezuleta','alezuleta@umariana.edu.co','Colombia','2023-04-20 21:40:30','2023-05-05 11:24:46',1),
  ('68bd0563-adc6-40f5-881a-ca150da273d7','soleydatorres','soleydatorres@outlook.com','Colombia','2023-04-20 21:44:37','2023-05-04 08:00:49',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e412e8da-ecbe-4f07-840b-b4c9c79cadbe','tmanuel','tmanuel@umariana.edu.co','Colombia','2023-04-20 21:58:43','2023-05-04 08:50:54',1),
  ('3908e27a-0ed7-47b6-9764-e90c4b3c185d','aobando','aobando@umariana.edu.co','Colombia','2023-04-20 22:08:35','2023-04-24 14:26:47',1),
  ('4e424117-a7f7-4a64-a08b-f7ffc09f2f2d','jmachalec','jmachalec@fra.utn.edu.ar','Argentina','2023-04-20 22:13:28','2023-05-18 09:35:10',1),
  ('f33f8812-0ca3-4a0b-9cec-6a40227ee1ec','mariavaleab','mariavale24nov@gmail.com','Colombia','2023-04-21 19:41:30','2023-04-21 19:42:52',1),
  ('2fd3c0f8-2d81-44ab-a893-8da9b4513890','brisalborada','brisalborada@gmail.com','Colombia','2023-04-24 17:25:04','2023-05-15 17:11:29',1),
  ('974621a0-5523-45cd-81ca-16e33cba7551','miriamrios','myriamrios800@gmail.com',NULL,'2023-04-25 12:42:51','2023-04-25 12:42:51',1),
  ('4c3f8a78-b14c-47fc-aadc-32bf2652c9be','josecorrea','josecorrea@elpoli.edu.co','Colombia','2023-04-26 09:45:01','2023-04-26 09:45:01',1),
  ('e4b487b9-58aa-48a0-97e5-d46e9e5c27d6','carlosriveros','carlos.riveros@udea.edu.co','Colombia','2023-04-27 08:00:00','2023-05-13 08:44:28',1),
  ('9cedcab7-75f9-4515-8cb8-35cc076547a2','andressantos','andres.santos@escuelaing.edu.co','Colombia','2023-04-27 08:06:21','2023-05-12 11:09:02',1),
  ('abfa05ea-197c-41cb-8279-c4150777b583','orlandoarroyo','orlando.arroyo@unisabana.edu.co','Colombia','2023-04-27 08:30:44','2023-04-27 08:49:44',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8db29a00-0726-431b-b383-b6ac3d8a9a73','dmurillohernandez','denismurillo@elpoli.edu.co','Colombia','2023-04-27 12:28:55','2023-05-12 14:59:08',1),
  ('83935d73-963f-47c7-a3e7-37fb1a378141','wvalencia','wvalencia@uniquindio.edu.co','Colombia','2023-04-27 21:11:34','2023-05-15 22:00:54',1),
  ('68d03a6e-a588-4262-8a46-dfbe872bb38a','ptorosierra','paulatorosierra@gmail.com',NULL,'2023-04-28 17:31:38','2023-07-01 10:15:08',1),
  ('49847274-53e7-4091-ae1e-723a6c468087','1m2a3r4y5','maricelaortiz@uadec.edu.mx','Mexico','2023-04-29 20:20:21','2023-08-15 13:11:37',1),
  ('e8849757-97c4-4bd1-ac18-0c298e321d58','pruiz','pabloruiz.info@gmail.com',NULL,'2023-05-02 16:49:39','2023-05-12 10:47:04',1),
  ('19bc7cbb-7444-45c5-83dd-bdf70feaf1d4','pedro90','campospoveda.pedro@gmail.com','Bolivia','2023-05-03 20:47:06','2023-05-03 20:47:57',1),
  ('324421ba-5bef-4630-b5f6-38028bfa3dee','19404944','edgarurrego@elpoli.edu.co','Colombia','2023-05-04 16:07:30','2023-05-04 16:10:35',1),
  ('3e63d105-db68-4cb3-bd9c-ef1810e8da2d','jvelasquezcastrillon','jovelasq@poligran.edu.co',NULL,'2023-05-06 10:24:18','2023-07-14 11:41:39',1),
  ('c9d7c2ef-2707-440c-95ea-4e991795cc97','andrealj4','andrea.lopezj@udea.edu.co','Colombia','2023-05-06 19:14:36','2023-06-08 16:43:44',1),
  ('9f73d24b-467c-438e-9c25-63e57437d25d','elotero','eliana_lotero90211@elpoli.edu.co','Colombia','2023-05-11 12:32:59','2023-05-25 17:42:41',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('df3db250-6bb9-4a79-b0a1-460580223a3d','colivafer','colivafer@ucvvirtual.edu.pe','Peru','2023-05-19 18:22:23','2023-05-19 18:23:34',1),
  ('b21d1dd9-3ffe-4bdc-a3f5-eabc24ad53af','marvynmo','marvynmo@alumni.uv.es','Spain','2023-05-21 12:14:01','2023-12-07 06:33:28',1),
  ('10af90c4-fe56-48a3-86c8-c39ae5acdb7b','dylan_llano82181','dylan_llano82181@elpoli.edu.co','Colombia','2023-05-23 12:02:49','2023-05-23 12:41:52',1),
  ('405ac8f8-70bb-41a4-a351-bcda9a8b5c72','nestoraguirre','nestor.aguirre@udea.edu.co','Colombia','2023-05-24 09:01:07','2023-05-24 09:40:14',1),
  ('fb32423c-08bd-42d9-be8b-e8ee5e6b53bf','sergioquendo','sergio.oquendo@udea.edu.co','Colombia','2023-05-26 17:19:34','2023-05-29 08:00:41',1),
  ('df479976-146e-4582-8d8e-b75c6faad843','ingridesperanza','ingridesperanzatamayogonzalez@fumc.edu.co','Colombia','2023-05-29 21:47:37','2024-03-11 09:36:05',1),
  ('9602ae46-a54b-4cbb-aace-4eb7de2480dd','lfgalvango','lfgalvango@gmail.com','Colombia','2023-05-30 21:08:39','2023-05-30 21:08:39',1),
  ('74016dbd-2b91-4917-aab8-d663da03b6ba','claudiavelez1','claudia.velezochoa@upb.edu.co','Colombia','2023-05-31 10:14:42','2023-05-31 13:07:28',1),
  ('383861ed-e751-4f0a-b296-35ba00224413','crisdega','cris.dega@hotmail.com','Mexico','2023-06-01 09:50:30','2023-08-14 19:03:41',1),
  ('47c928ef-4572-4149-84cf-cdf87be20ae0','ibetbustamantec','ibetbustamantec@gmail.com','Colombia','2023-06-01 09:53:14','2023-06-01 09:53:14',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5c0caa99-3906-4278-84d2-83a676950f1c','lopezfernandezruly','lopezfernandezruly@gmail.com','Colombia','2023-06-03 08:41:41','2023-06-03 08:41:41',1),
  ('b5b3841e-5d64-4608-8bdb-f14505d5fe46','isabel68291195','icedenop@ibero.edu.co','Colombia','2023-06-03 19:51:27','2023-06-04 08:52:52',1),
  ('0a565871-79bc-461d-bf05-50f59a62eb99','karenmora','kamoram1882@hotmail.com','Colombia','2023-06-04 13:13:28','2023-06-04 13:14:06',1),
  ('da604540-bdc3-4ca4-bf37-f8e0f070f890','vvallejo','victor.vallejo@correo.buap.mx','Mexico','2023-06-08 21:39:08','2024-05-13 09:56:24',1),
  ('d4944832-fe95-410e-97bf-9fa3ac51c88c','lulilago','lulilago@unipamplona.edu.co','Colombia','2023-06-16 12:02:20','2023-06-26 19:36:16',1),
  ('42dcb5de-f233-4800-9a2d-a877d6e5f7f2','pmontielboido','pmontiel@ucu.edu.uy','Uruguay','2023-06-20 11:45:04','2024-01-31 16:44:24',1),
  ('683d432e-b268-4a23-8c6e-789be58e5958','kuten','kuten@ucf.edu.cu','Cuba','2023-06-20 12:47:09','2023-06-27 13:57:28',1),
  ('4ce93113-c4ec-4ca0-84fd-1a386be03e6f','ecolino1','evelyn.dv.colino@gmail.com',NULL,'2023-06-20 13:44:53','2023-08-02 06:32:08',1),
  ('4b0d62e8-683d-42ed-8145-45b190ee4936','nolivaperez','nicolasolivap@gmail.com',NULL,'2023-06-20 13:50:50','2023-06-20 13:50:50',1),
  ('da121c10-a833-4218-aca2-8f54279f6061','hmaciascardona','hmacias@udem.edu.co',NULL,'2023-06-20 13:55:36','2023-06-20 13:55:36',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('29969574-e64e-4c21-990d-43dd91448d56','aleamar264','alejandro_amar54182@elpoli.edu.co','Colombia','2023-06-21 17:06:21','2023-07-17 11:39:30',1),
  ('8342ce7d-9f0c-48bd-ad14-3bc3ff5a6a8c','yugandhar077','yugandhar077@gmail.com','India','2023-06-23 04:10:03','2023-11-18 06:44:12',1),
  ('076151d1-ddbc-4171-b2e5-f04f39a7ed84','carmin','chernandez@itesa.edu.mx','Mexico','2023-06-23 17:38:05','2023-06-23 17:38:50',1),
  ('7df98371-a209-4c61-8ecf-410f8505e046','juvenal','juvenal@uaq.edu.mx','Mexico','2023-06-26 21:58:10','2023-06-27 09:55:31',1),
  ('573d585c-5692-4365-b9e3-97ddbcb2464a','scardona1','scardona@ces.edu.co','Colombia','2023-06-27 15:49:27','2023-06-27 15:49:27',1),
  ('4490df09-6322-4121-a9e3-116c7e69f0fe','poloandres','polo.andres@uniagraria.edu.co','Colombia','2023-06-27 15:57:12','2023-07-11 16:04:34',1),
  ('b7ccebaa-2710-421c-a8fd-c8db23a4b080','torressandra','torres.sandra@uniagraria.edu.co','Colombia','2023-06-27 15:59:31','2023-07-11 16:34:23',1),
  ('3fc8a87d-f844-4170-9925-57deec9f396a','dvmsebastian','dvmsebastian@hotmail.com','Colombia','2023-06-27 16:12:50','2023-12-06 15:59:24',1),
  ('e17ede4f-4ad2-4cfd-8143-38bf3c8c58e2','dmunozceballos','revista_interseccion@elpoli.edu.co','Colombia','2023-06-29 16:03:01','2023-07-07 08:17:34',1),
  ('83e5658b-b673-448e-b840-eb7bea0d56a2','claudiaramos','claudia.ramos@udea.edu.co','Colombia','2023-07-03 12:13:30','2023-07-17 15:55:45',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('af70d864-39f9-4eed-9356-b74b72f81c2f','qqqe','johnz20201@gmail.com','Germany','2023-07-05 13:13:07','2023-07-05 13:34:05',1),
  ('40372f47-a136-4c3e-8158-4b92bf110f54','karenvasquez','karenvasquez@elpoli.edu.co','Colombia','2023-07-07 16:54:46','2023-07-07 16:55:58',1),
  ('d3cee272-4826-4b08-bc88-caff963a57f4','mariateresa_08011960','mmachadoduran@gmail.com','Mexico','2023-07-12 20:42:00','2024-02-03 12:07:46',1),
  ('1df1d8cb-578d-4d56-9c7e-512fd468d403','omarpino','omar.pinof@udea.edu.co','Colombia','2023-07-13 14:25:18','2023-07-13 14:26:08',1),
  ('de645e8f-1f01-48c2-8a91-4d633b6e7c6b','majomc','mjose.mercado@udea.edu.co','Colombia','2023-07-14 12:23:11','2023-12-12 13:34:34',1),
  ('4fd260be-3ec9-40bf-b9da-085f55aba698','pasbau','pasjuan50@gmail.com','Peru','2023-07-20 20:50:23','2023-07-20 20:52:28',1),
  ('9d188780-1d67-4c42-a81f-46e3dfc8acc7','carlos-guerrero','carlos.guerreros@uanl.mx','Mexico','2023-07-23 13:40:43','2023-09-04 12:58:55',1),
  ('af400b08-23bf-46eb-bf0c-d72088ddabad','alcarlop','alejandro.cardenas@ibero.mx','Mexico','2023-07-23 20:58:49','2023-07-23 21:00:45',1),
  ('48148735-3cdc-4317-ad70-6382a84b6094','kemuelevita','k131177@gmail.com','Colombia','2023-07-27 15:14:25','2024-05-10 09:05:34',1),
  ('e7cac556-e80e-4165-bc94-fd65c188edd4','1sebastiancardonab','sebastiancardona@nas.edu.co','Colombia','2023-07-29 13:26:30','2023-08-01 22:03:23',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b25e4cf2-0b80-4335-b83a-1412228be03a','mamope','mamope@hotmail.com','Colombia','2023-08-07 17:59:59','2024-03-11 15:19:52',1),
  ('e8f2dc40-11cd-467b-9107-1608b8b78825','mariavictoria','mvfernan@hotmail.com','Argentina','2023-08-10 10:21:22','2024-04-19 10:39:42',1),
  ('3a07aa4c-8c99-4c5c-9c51-5029fb2abb3b','ygomezzapata','ygomezza@tdea.edu.co',NULL,'2023-08-13 21:46:08','2023-08-13 21:46:08',1),
  ('4c4ff0a7-8e2a-44cb-8d17-02b6bacd6646','cbongianino','c.bongianino@gmail.com',NULL,'2023-08-13 21:50:38','2023-09-06 16:43:08',1),
  ('9ba145f4-2be9-44d7-aeb5-a08f5907037a','luisgarcia','legarcia47@gmail.com','Colombia','2023-08-15 20:40:17','2024-03-05 08:52:23',1),
  ('571615c0-93ac-4408-8426-743c2cbf0bd1','pmayor','mpmayor@elpoli.edu.co','Colombia','2023-08-23 13:11:16','2023-12-05 13:19:28',0),
  ('8769e24a-1c17-42f6-bafb-66a93ce43b75','dgranillohernandez','daakengh@gmail.com',NULL,'2023-08-25 15:40:09','2023-11-06 21:46:51',1),
  ('a91a4771-c327-4f7d-a85f-3ae498370ad0','rtorresrosales','rafaeltrosales@gmail.com',NULL,'2023-08-25 15:43:21','2023-09-08 09:42:59',1),
  ('e70bd1e1-3adc-42a7-a2fc-45fafaf2bed1','gquirosjaramillo','gloriaquiroz@elpoli.edu.co',NULL,'2023-08-25 15:47:24','2023-09-01 09:28:16',1),
  ('a79a3f30-4230-46e5-9ea6-3b761f146e88','hbermude','hectorl.bermudez@udea.edu.co','Colombia','2023-08-25 16:06:54','2023-08-25 16:07:31',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('6382d045-bf83-421c-9b5e-67ff3a0a53f8','sgarciajimenez','garcia.jimenez.s@gmail.com',NULL,'2023-08-26 14:48:02','2023-09-18 23:12:44',1),
  ('b3eed2e6-34c1-4d34-96aa-f6d1a819472f','rubiano','rubiano@unipamplona.edu.co','Colombia','2023-08-27 19:40:10','2023-09-01 06:50:42',1),
  ('48a45d42-7d1c-4c52-ae09-c596a228a5a7','npecorari','pecora88@hotmail.com',NULL,'2023-08-28 13:12:52','2023-08-30 11:26:40',1),
  ('119cdd2f-ef39-4cda-88b9-cc023474df8d','mcolavolpe','stellam278@gmail.com',NULL,'2023-08-28 13:18:42','2025-09-15 10:14:11',1),
  ('2d6d042f-e5a3-4316-b0fe-35109182e45f','jgomezsanchez','jandres260@hotmail.com',NULL,'2023-08-30 11:53:14','2023-08-30 11:53:14',1),
  ('23a782f9-282a-4605-adea-ae01792174c6','mdelarosaleal','maedelarosa@hotmail.com',NULL,'2023-08-30 12:09:47','2023-08-30 12:09:47',1),
  ('07d11e9f-7862-44e0-9074-54a2c5e7c6a3','lisset','lalva@docentes.uat.edu.mx','Mexico','2023-08-31 09:47:48','2023-08-31 09:48:55',1),
  ('e373afcc-9b1a-448b-a43f-6c39ac93bba9','djaramillovalencia','daniela_jaramillo90211@elpoli.edu.co','Colombia','2023-08-31 10:16:50','2025-03-02 17:32:27',1),
  ('a386d082-2839-440d-99f8-5986d5bff88c','20silviapadillaloredo23','spadillal@uaemex.mx','Mexico','2023-08-31 14:56:09','2023-09-05 12:51:17',1),
  ('f3e04c0c-be57-4a22-98c8-7908f0c49b87','rnavarretereynoso','ramon.navarrete@ugto.mx',NULL,'2023-09-01 16:55:13','2023-12-23 20:18:23',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('1791da15-530b-4899-90e6-cd6fc0e2c9d5','hparajon','hernanparajon@hotmail.com',NULL,'2023-09-01 16:58:26','2023-09-25 05:44:35',1),
  ('d3b1ecce-566c-409a-a3c3-c4817e77dac2','ltamayojaramillo','viceadministrativa@iudigital.edu.co','Colombia','2023-09-01 17:02:07','2023-09-04 08:30:45',1),
  ('ab3924ce-01a8-44cc-85d2-987b100f06e7','jhernandezmaza','julio_17habil@hotmail.com','Mexico','2023-09-01 19:23:26','2023-09-01 19:23:26',1),
  ('b08a7384-69e9-45d8-b2fe-dd01059b363f','evillegasgonzalez','eleazarv@uaeh.edu.mx','Mexico','2023-09-01 19:25:08','2023-09-01 19:25:08',1),
  ('95bb5cf8-0159-43e5-aa81-74391dfb434a','tvargasvega','tvargasv@gmail.com',NULL,'2023-09-01 19:26:30','2025-05-03 20:27:12',1),
  ('d4282edf-d344-4b54-9bc7-e8eb7fb611db','hmorenoislas','heriberto_moreno@uaeh.edu.mx',NULL,'2023-09-01 19:27:59','2023-09-01 19:27:59',1),
  ('bcdecd81-2952-4455-9ce6-dcaea2a9630b','ebenitez','benitez1986@gmail.com',NULL,'2023-09-01 19:54:26','2024-08-09 16:20:28',1),
  ('53afd8ba-8c7f-42df-a0ab-a5615ea0c945','hbandaortiz','humberto.banda@gmail.com',NULL,'2023-09-01 20:56:38','2023-09-01 20:56:38',1),
  ('7ee6f7f5-cee5-4320-a0c8-d071a02307e6','cficco','cficco@fce.unrc.edu.co',NULL,'2023-09-01 21:03:42','2023-09-01 21:03:42',1),
  ('3c1e3aab-d61b-424d-89e6-1c7552a06430','mgomezv','alejandra.gomez@upb.edu.co',NULL,'2023-09-04 10:27:12','2023-09-04 10:27:12',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('97fb4b47-ef38-4866-99d3-4e9ee86de52c','mziedebize','mziede@ucn.cl',NULL,'2023-09-04 11:40:07','2025-09-02 05:20:39',1),
  ('91e18bf8-cee5-4bf8-8740-4103eafb5779','gerardotunal','gtunal@correo.xoc.uam.mx','Mexico','2023-09-04 12:05:29','2023-09-04 12:05:29',1),
  ('afee24b1-15e2-4d1b-a5a1-fc81003af22b','gdornelascamara','guilherme.dornelas@ufrgs.br',NULL,'2023-09-04 12:09:53','2023-09-04 12:09:53',1),
  ('0211012f-897c-498c-b9b9-98812862774a','nsoto','nmsoto@udem.edu.co',NULL,'2023-09-04 12:51:07','2023-09-04 12:51:07',1),
  ('8f15f99c-96ba-4656-9ee0-9b1daff6b3e6','asotelo','cristinasotelofierro@gmail.com',NULL,'2023-09-04 12:55:04','2025-01-30 09:28:50',1),
  ('56527df3-85b2-4d7e-a245-9ecc630c8242','jose_mazo80191','jose_mazo80191@elpoli.edu.co','Colombia','2023-09-04 18:50:25','2023-09-06 10:14:46',1),
  ('ada838c5-ba05-4449-a203-6ebe15d8f71e','nhenriquez','nelsonjha17@gmail.com','Venezuela','2023-09-05 08:53:29','2023-09-08 14:20:48',1),
  ('701dbdc6-2324-4848-9466-96ff22b26a3e','jcardo','jcardo@yahoo.com','Colombia','2023-09-10 14:36:52','2025-09-24 09:57:54',1),
  ('a86904f2-05ff-4956-a872-28f39a83931f','dcorrea','diegoa.correa@udea.edu.co',NULL,'2023-09-11 13:39:04','2023-09-22 14:51:59',1),
  ('5167b67e-ddfb-44c1-98d2-e0a632f9bda6','aalvarez','andres_alvarez82132@elpoli.edu.co','Colombia','2023-09-11 14:29:11','2024-06-15 15:56:00',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3f7f70d7-e0bf-433b-895a-717fbe954843','mariam12fer','mariam12fergl@gmail.com','Colombia','2023-09-12 12:24:20','2023-09-12 16:36:38',1),
  ('757caf4a-74ef-4d86-b070-2b94de7ccd23','ggonzalez','gonzopiloto@gmail.com',NULL,'2023-09-13 17:30:05','2025-09-28 07:36:04',1),
  ('d667291f-4c43-495f-9c28-679361fc202d','ssandoval','se.sandoval.avila@gmail.com','Mexico','2023-09-15 09:36:39','2024-07-10 17:31:09',1),
  ('d3b886e1-6719-4b94-88af-e36d6ba9c5e4','rbarrera','rbya_rb@rbya.com.ar',NULL,'2023-09-15 14:21:52','2024-03-12 17:45:28',1),
  ('321bdd51-bd47-43a4-8fda-44ad60f878b8','nmartinezg','nicolasmartinez@unicesar.edu.co','Colombia','2023-09-16 13:24:14','2025-06-06 13:59:34',1),
  ('4ebfe694-18e0-4066-857c-44c890dc5a29','lbanolbetancurt','lauragbanolb@gmail.com',NULL,'2023-09-20 16:51:49','2023-09-20 16:51:49',1),
  ('d4977cc0-81d8-4e49-9435-24923737c1b6','dauwy','dauwysj@gmail.com','Spain','2023-09-23 13:56:22','2024-03-26 09:27:20',1),
  ('375a3d6a-305c-4497-8077-6142ec8574d7','lbanolbetancurt1','lfbanol@unal.edu.co',NULL,'2023-09-26 11:22:05','2023-09-26 11:22:05',1),
  ('e4c747ff-7f8a-416e-be55-bad38022fcde','jpeloche','jpeloche@psico.edu.uy',NULL,'2023-09-26 12:02:39','2023-10-01 09:55:19',1),
  ('99d00990-1037-44ce-b3af-f91b9f0bd286','jcardona','jairocardona@unaula.edu.co',NULL,'2023-09-26 12:14:30','2023-09-26 12:14:30',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('08fcd0f0-9ec1-4d49-869b-be06f6e97633','gaacosta','gaacosta@elpoli.edu.co','Colombia','2023-09-29 11:55:11','2023-12-13 08:09:14',1),
  ('485da0d0-65db-4a97-ac1e-b1afa80e4d17','sdacosta','sgeneralicosta@gmail.com',NULL,'2023-10-02 13:40:08','2024-06-26 15:02:41',1),
  ('5f36783e-9b1a-48ee-a387-a625d50ce9bc','ctorres','abgcorinatorres@gmail.com','Colombia','2023-10-03 09:50:16','2025-06-05 13:27:46',1),
  ('39a9b537-1a3d-45bb-be33-85c41b81b2e0','carmenhaydee29','carmenhaydee29@gmail.com','Colombia','2023-10-05 12:11:50','2023-10-20 16:33:47',1),
  ('8239f699-766a-4963-b47f-b9f5acb09a59','rmiguelbarrio','rmiguel@ubu.es',NULL,'2023-10-07 12:55:43','2023-10-21 14:57:48',1),
  ('d6ac2b22-39c1-42a7-ab8c-fd2726286036','davidruizgarcia','drumaturgia@gmail.com','Spain','2023-10-09 04:38:30','2024-03-13 03:03:58',1),
  ('143fd88b-2439-40b8-93a2-417fa2e0d9ce','raulrivera','raulalbertorivera@outlook.com','Argentina','2023-10-10 16:56:43','2023-10-10 16:57:21',1),
  ('f0802fc3-3d0f-4464-b9c0-5d1a4aa31fe7','jctorresalape','juan.torres@iudigital.edu.co','Colombia','2023-10-11 16:51:26','2025-01-21 11:29:28',1),
  ('c7aee8c3-709d-4dd1-8a50-12ed68f86327','ggrajaleslondono','ghersongrajales@gmail.com',NULL,'2023-10-17 08:48:45','2024-07-27 13:43:11',1),
  ('183d9708-8be5-40a7-9c85-ad4b0d8968da','ecorreagarcia','esteban.correa@libertadores.edu.co',NULL,'2023-10-17 08:52:51','2024-08-26 09:23:55',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('6e0195a8-dc3d-4907-9d83-0718f19bc236','lvangehuchten','lieve.vangehuchten@uantwerpen.be','Belgium','2023-10-17 10:19:36','2024-03-26 09:38:00',1),
  ('64f7e78f-8ff1-4926-8c2a-8a479a205fb0','amadrigalgil','ajmadrigal@elpoli.edu.co',NULL,'2023-10-20 10:55:44','2023-11-10 11:27:26',1),
  ('62889aa9-1179-4ec1-acd0-a437448367cd','andressilva','andressilva@elpoli.edu.co','Colombia','2023-10-23 13:39:40','2023-10-23 13:40:26',1),
  ('a25f46f8-7515-47b5-b59d-a693b0ae6676','ccuencagonzalez','ccuenca.gonzalezz@gmail.com',NULL,'2023-10-23 14:40:54','2023-11-30 10:31:20',1),
  ('7d471a09-5703-444a-9164-6571bc07a6d4','cchamorrogonzalez','candiilorena@gmail.com',NULL,'2023-10-23 19:52:41','2023-11-25 22:24:41',1),
  ('d92242e9-409e-4889-92c6-9fa77ed99251','floaizarobles','floaizar@gmail.com',NULL,'2023-10-23 20:01:39','2023-11-21 20:56:56',1),
  ('d4627c6b-2228-4d31-af7c-53a6ecc80ed5','odalismoralesmora','odalismoralesmora@gmail.com','Colombia','2023-10-23 20:08:28','2023-10-29 16:19:33',1),
  ('cef05b83-93e2-4745-a916-6a25991ef32f','egbertojose','egbertojose@gmail.com','Colombia','2023-10-23 20:11:53','2024-09-24 08:04:49',1),
  ('5c721f6d-0c7d-411f-879c-34fb53cb4f3d','cfvarela','cfvarela@asig.com.ec','Ecuador','2023-10-23 20:14:50','2023-11-01 14:47:08',1),
  ('53169928-a398-464b-868c-aa73febb9fad','jaduca_445','jaduca_445@hotmail.com','Colombia','2023-10-23 20:17:11','2023-10-24 07:26:34',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ba001af1-a647-45c1-b872-7f78b097f76d','ccuenca','ccuenca@cua.uam.mx','Mexico','2023-10-23 20:34:22','2023-10-23 20:35:18',1),
  ('551175ae-d325-40ff-8fa0-e06857fbc95f','vivirg13','evreyes@unbosque.edu.co','Colombia','2023-10-25 15:51:36','2024-07-25 20:41:47',1),
  ('871b87bd-ff65-401c-87a6-0fb6a1e9f85e','mrodrigueztriana','maria_rodriguez90101@elpoli.edu.co','Colombia','2023-10-29 17:11:25','2025-10-04 09:46:01',1),
  ('be2f8ad2-81ac-49d8-812b-2873b9152904','frussoarmada','frida@fcf.uh.cu',NULL,'2023-10-30 11:38:02','2023-10-30 11:38:02',1),
  ('b52eb20e-882d-4fce-b54a-2f6944d2b8d1','erodriguezquezada','erodrig@ubiobio.cl',NULL,'2023-10-30 11:39:31','2023-10-30 11:39:31',1),
  ('093aefa0-1f2b-4cab-9e4f-0a442ba3ca32','mdiazduran','maediaz@ucu.edu.uy',NULL,'2023-10-30 11:41:08','2023-10-30 11:41:08',1),
  ('ffef209f-f326-41d1-abd4-1a4e8f465e6c','sandra_medina88232','sandra_medina88232@elpoli.edu.co','Colombia','2023-10-30 12:46:06','2023-10-30 12:46:43',1),
  ('d2b5f548-6879-4d12-b30c-8c6af940aef5','prodriguezguiterrez','d22rogup@uco.es',NULL,'2023-10-30 17:35:34','2023-10-30 17:35:34',1),
  ('a4c861e3-d73d-474f-aca3-c652134053ea','gtrucco','gabrieltrucco@yahoo.com.ar',NULL,'2023-10-30 18:27:16','2024-06-15 15:00:00',1),
  ('60a4080a-96bf-4dfb-87b1-aec456665e74','cgiraldovelasquez','cgiraldo@colmayor.edu.co','Colombia','2023-10-30 18:30:33','2023-10-30 18:30:33',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('cafb6faf-0985-4598-9b14-8efdd0dbd4bc','plattuada','plattuada@gmail.com','Argentina','2023-10-30 18:32:54','2023-10-30 18:32:54',1),
  ('d7d4bb89-abcd-44f2-af32-d77f9e2aac32','jsalazarestrada','jsalazar43@gmail.com','Mexico','2023-10-30 18:38:24','2023-10-30 18:38:24',1),
  ('1eea97db-67ac-44ac-80d9-4135033f4a4d','jdenizmayor','josejuan.deniz@ulpgc.es','Spain','2023-10-30 18:41:44','2023-10-30 18:41:44',1),
  ('db4e0f79-35ea-45f5-b494-59ab86ec0501','gdabbracciokreutzer','gadabbracciok@unal.edu.co','Colombia','2023-10-30 18:44:26','2023-10-30 18:44:26',1),
  ('c14af2fe-c45a-4a2d-87a1-04b5db8869a1','muribe','meuribem@gmail.com','Colombia','2023-10-30 18:49:48','2023-10-30 18:49:48',1),
  ('1c5819db-7320-444d-99e8-acdf086063fa','lsanchezvasquez','lina.sanchezva@unaula.edu.co','Colombia','2023-10-30 18:53:18','2023-10-30 18:53:18',1),
  ('20576208-de9f-44fb-a987-a734bb51a60b','asalvia','agustin_salvia@uca.edu.ar','Argentina','2023-10-30 18:56:37','2023-10-30 18:56:37',1),
  ('757632e7-8956-4bae-a803-c0887030ea96','rhartleyballestero','rocio.hartley.ballestero@una.cr','Costa Rica','2023-10-30 18:59:09','2025-08-05 00:33:43',1),
  ('ec44c4d0-9dc2-4bbd-ae40-f4286c1525e0','ctorresoviedo','carlos.f.torres@correounivalle.edu.co','Colombia','2023-10-30 19:13:59','2023-10-30 19:13:59',1),
  ('4e503dd4-2a40-48fb-b924-68d299c82868','tguevara','tguevara@unrn.edu.ar','Argentina','2023-10-30 19:15:52','2023-10-30 19:15:52',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b4b008a6-98f8-4c12-8786-cf083f956921','dtaglezamora','datagle@yahoo.com.mx','Mexico','2023-10-30 19:18:11','2023-10-30 19:18:11',1),
  ('27052fd9-995a-4b79-bb32-3917423ce92d','mvargassaenz','mvargas@eafit.edu.co','Colombia','2023-10-30 19:24:51','2025-09-30 10:05:02',1),
  ('cb472464-cdf3-4737-841e-d9f74c91ecc8','ovelasquezarboleda','ohvelasquez@elpoli.edu.co','Colombia','2023-10-30 19:31:40','2023-10-30 19:31:40',1),
  ('db925d5e-e7dc-486c-907e-bf87ec92584a','lpereraaldama','lpa1002@alu.ubu.es','Uruguay','2023-10-30 19:35:27','2023-10-30 19:35:27',1),
  ('2b0a95ea-e456-4970-9ac1-c69731368f36','dhiguitalopez','dhiguitalo@unal.edu.co','Colombia','2023-10-30 19:37:29','2023-10-30 19:37:29',1),
  ('b3dcf1b8-f9f5-4be9-baa8-addbaad3355d','jrodriguezgomez','jrodri52@eafit.edu.co','Colombia','2023-10-30 19:40:21','2023-10-30 19:40:21',1),
  ('6026daf4-caa2-4823-91a2-9ce46bd43459','igonzalezv','gonzvidal@hotmail.com','Cuba','2023-10-30 19:50:04','2024-12-10 04:34:10',1),
  ('98577a44-e6e9-46ef-93fb-4ae54f86450b','cbuffa','cyntiabuffa4@gmail.com','Uruguay','2023-10-30 19:53:22','2024-01-03 07:35:15',1),
  ('98767e5d-1efa-411c-84b6-41ac27d4b079','ajimenezfigueroa','anjimenez@utalca.cl','Chile','2023-10-30 19:56:11','2025-09-15 09:38:41',1),
  ('699c4375-ca87-42be-93d8-0ee9797697fa','jjimenez1','juan.jimenezhu@unaula.edu.co','Colombia','2023-10-30 20:09:48','2023-10-30 20:09:48',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4e49837c-0c21-4c4a-87ae-e0f43a2c7338','cgarciadelatorre','cogarcia@itesm.mx','Mexico','2023-10-30 20:11:17','2023-10-30 20:11:17',1),
  ('0ab12835-123a-4903-9e7a-94c8c644bdae','jdiaz','julianadiaz345@gmail.com','Argentina','2023-10-30 20:13:29','2023-10-30 20:13:29',1),
  ('5377dff4-96a1-4a64-b46f-a1956b589de8','casuaga','carolinaasuaga@gmail.com','Uruguay','2023-10-30 20:15:25','2023-10-30 20:15:25',1),
  ('c0d9d9d7-e1eb-4ee2-9eb1-2e34f03b1ad2','equirozlizarazo','elkin.quirozli@unaula.edu.co','Colombia','2023-10-30 20:16:49','2025-02-22 11:41:01',1),
  ('6c1d01d2-22ce-47cf-96a6-53bab5dc75d1','ccastanorios','eduardo.castano@udea.edu.co','Colombia','2023-10-30 20:18:51','2023-10-30 20:18:51',1),
  ('1ba66c55-dcb1-4ebc-a2b4-f49dd83a7f37','jalzategiraldo','soranyalzate@gmail.com','Colombia','2023-10-30 20:21:22','2023-10-30 20:21:22',1),
  ('5640790c-e027-4279-af6e-c481089af773','jgilfabra','jorgemgil.gil@gmail.com','Argentina','2023-10-30 20:23:15','2023-10-30 20:23:15',1),
  ('8665faae-7f45-4dc2-b09f-f98325eeae12','dsantilli','dvsantilli@gmail.com','Argentina','2023-10-30 20:27:56','2023-10-30 20:27:56',1),
  ('025560c2-9cfa-4d1a-b450-4f81f446e7b3','ngonzalezsalazar','ngonza13@eafit.edu.co','Colombia','2023-10-30 20:30:02','2023-10-30 20:30:02',1),
  ('9731c4fd-eace-4460-a0e8-db61972f6c7f','ymesataborda','yesica.mesata@unaula.edu.co','Colombia','2023-10-30 20:32:33','2023-10-30 20:32:33',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('36b78986-0892-4209-aacd-a6e13d697e8d','scoti','santiago.conti@gmail.com','Argentina','2023-10-30 20:34:26','2024-07-10 10:27:41',1),
  ('430802b7-5b07-41db-8a06-2cb52429cdb4','sperezcastanos','spcastanos@ubu.es','Spain','2023-10-30 20:35:52','2023-10-30 20:35:52',1),
  ('717f6439-49bc-460b-b50b-d123537528a4','aarcosrivas','arleison.arcos@cali.edu.co','Colombia','2023-10-30 20:38:58','2023-10-30 20:38:58',1),
  ('cca29020-d2ff-43b1-902b-adeb694c1b9c','gruizrojas','gustavoruizrojas@gmail.com','Colombia','2023-10-30 20:41:21','2023-10-30 20:41:21',1),
  ('8b1da681-f16a-4627-9113-6bb663f402e6','htangarifeocampo','hugo.tangarife@unaula.edu.co','Colombia','2023-10-30 20:43:46','2023-10-30 20:43:46',1),
  ('b85c68da-0537-4c82-9cb4-f660574c14ad','earizaruiz','eariza10@areandina.edu.co','Colombia','2023-10-30 20:45:50','2024-08-05 09:05:55',1),
  ('4f116e29-1865-48d7-b9b5-230426fc880a','jmoraalvarez','josem.moraa@unilibre.edu.co','Colombia','2023-10-31 11:46:16','2023-10-31 11:46:16',1),
  ('3138fc24-bf10-45cc-85d7-da18a3ef821b','agarciagarnica','agg67@hotmail.com','Mexico','2023-10-31 11:49:01','2023-10-31 11:49:01',1),
  ('c7c5879c-50f7-4110-a8cf-77bfb8ef8ba8','jguevaraperez','jcarlosguevarap@gmail.com','Venezuela','2023-10-31 11:51:02','2023-10-31 11:51:02',1),
  ('8966302f-01ce-4f36-9dc0-d502a5a2eaa9','malvarezmedina','maria.alvarez@itson.edu.mx','Mexico','2023-10-31 11:52:49','2023-10-31 11:52:49',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8a441ec9-98c0-490e-b1e6-e39d0cfed2da','asierraurrego','alejosierrau@gmail.com','Colombia','2023-10-31 11:56:00','2023-10-31 11:56:00',1),
  ('a22d51e0-4eb1-4816-b539-5a0bab890617','schamorrogonzalez','sorenchamorro@gmail.com','Nicaragua','2023-10-31 11:58:17','2023-10-31 11:58:17',1),
  ('a07c7512-101c-4c10-a99e-de45620995e5','senriquezguzman','seg160@gmail.com','Colombia','2023-10-31 12:00:16','2023-10-31 12:00:16',1),
  ('281523cf-ff1e-4b18-8e51-9ebf73878e10','respinosamosqueda','asesorneg@yahoo.com.mx','Mexico','2023-10-31 12:02:09','2023-10-31 12:02:09',1),
  ('38443136-0c3a-4397-8067-01f6de307bff','lramirezdiaz','luisramirez@elpoli.edu.co','Colombia','2023-10-31 12:04:05','2023-10-31 12:04:05',1),
  ('28c0815e-0815-4c73-af85-5739ec3b1b0c','mzeronfelix','zfmariana@docentes.uat.edu.mx','Mexico','2023-10-31 12:05:45','2023-10-31 12:05:45',1),
  ('209760f2-433b-48e9-8128-4eb9865c5ef4','dsepulvedam','dlsepulveda@elpoli.edu.co','Colombia','2023-10-31 12:07:23','2023-10-31 12:07:23',1),
  ('315579c5-b788-4f19-8884-41c01f38591f','aacevedod','angelaceevdo1959@gamil.com','Chile','2023-10-31 12:58:13','2023-10-31 12:58:13',1),
  ('0d1f704b-af32-4388-bc42-b707ca33c6b0','operezbaxin','opbaxin@gmail.com','Mexico','2023-10-31 12:59:44','2023-10-31 12:59:44',1),
  ('57e02a02-fe6d-4e25-94c7-f904c678987a','lgalan','crila9@hotmail.com','Argentina','2023-10-31 13:01:52','2023-10-31 13:01:52',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ae01c4af-4b6c-4da9-999b-e7b6ac7d08b9','wguerrero','wguerrero@elpoli.edu.co','Colombia','2023-10-31 13:05:18','2023-10-31 13:05:18',1),
  ('76772e0f-78cf-448a-b43e-d5a329388261','mperezhernandez','mpperez@ipn.mx','Mexico','2023-10-31 13:07:02','2023-10-31 13:07:02',1),
  ('3677b96e-eb62-45f3-9b1f-68e1089f7e18','vzuluaga','violetazu@yahoo.com','Colombia','2023-10-31 13:08:33','2023-10-31 13:08:33',1),
  ('c96a8756-d8a4-4067-9fda-ee0b1cdc95ae','gacevedogonzalez','gaacevedo@elpoli.edu.c','Colombia','2023-10-31 13:09:55','2023-10-31 13:09:55',1),
  ('96ea69d8-6332-4043-9a51-e226a187ef1b','ssolorzanos','ssolorzano@utmachala.edu.ec','Ecuador','2023-10-31 13:11:44','2024-01-22 16:38:38',1),
  ('5e8e442a-45c5-4617-8df9-9c426f10b18c','jpayaresramirez','jmpayares@gmail.com','Colombia','2023-10-31 13:25:47','2023-10-31 13:25:47',1),
  ('b2a4fded-675c-4efb-8c6d-e40abe816dc7','jazuela','jazuelaflores@gmail.com','Mexico','2023-10-31 13:27:34','2023-10-31 13:27:34',1),
  ('c3c13937-cd7f-49f3-a33d-7972b2ac8abc','prodrigueztorrico','prtorrico@ubu.es','Spain','2023-10-31 13:29:17','2023-10-31 13:29:17',1),
  ('51135008-a752-4f94-afaf-a56bee758a43','jtellezg','cuauhtemoc.tellez@tec.mx','Mexico','2023-10-31 13:32:54','2023-10-31 13:32:54',1),
  ('3c7a94fd-4d9a-4c84-9963-15119e708658','sestradarodriguez','salvador.estrada@gmail.com','Mexico','2023-10-31 13:36:49','2023-10-31 13:36:49',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('49a95779-5c84-43ea-a34c-5682ae5a8f88','nsotobuiles','nmsoto@udemedellin.edu.co','Colombia','2023-10-31 13:44:43','2023-10-31 13:44:43',1),
  ('637b95f8-c5d2-4396-a3c8-3a44dbfa0eae','jhernandezzuluaga','josecarlos.hernandez@udg.edu','Colombia','2023-10-31 13:46:54','2023-10-31 13:46:54',1),
  ('90089846-da3f-4371-a194-7757ff2c3d1e','cdavilacruz','cadavilac@umanizales.edu.co','Colombia','2023-10-31 13:48:42','2023-10-31 13:48:42',1),
  ('f9f32568-51e2-48a3-897f-baf58bf8f69e','emma_2023','emma.aguilar@unach.mx','Mexico','2023-11-02 09:28:12','2023-11-02 09:28:12',1),
  ('700773b9-f181-43ab-82dc-4c03071cc70a','wjnaranjo','wjnaranjo@gmail.com','Colombia','2023-11-06 13:08:38','2023-11-20 09:45:51',1),
  ('4ffc5af5-7c95-4576-9622-03046323730f','veraprado','vera.pradomlrd@uanl.edu.mx','Mexico','2023-11-06 22:23:22','2024-06-04 11:37:48',1),
  ('e0958948-6c4f-4f3f-b154-4548c10449bc','vgarcia0721','vanessagarciap@itm.edu.co','Colombia','2023-11-07 09:10:03','2024-09-27 19:20:33',1),
  ('186cb064-1b49-4704-8a1b-56d83fa2bd90','tonynavarro1952','tonyjana1952@gmail.com','Cuba','2023-11-08 12:36:18','2023-11-08 12:44:01',1),
  ('54822137-1ef3-4964-8788-0c25d6ff941e','7duncandu64','carmen.peralta@uaem.mx','Mexico','2023-11-08 23:05:17','2023-11-16 15:16:58',1),
  ('7c7db931-0ea7-4ad4-a553-20bb3c89ce0a','raulma16','raulma2002@hotmail.com','Colombia','2023-11-12 23:21:16','2023-11-27 19:15:00',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7887793e-3771-4ed7-8a91-6ad2ab84b1aa','mgordillo','mgordillo@uao.edu.co','Colombia','2023-11-13 20:58:08','2025-07-07 10:15:34',1),
  ('f16f5c14-8253-42ec-894a-8a30e620036f','abdur917','arahman@uvas.edu.pk','Pakistan','2023-11-13 23:23:45','2025-06-02 05:04:26',1),
  ('5d8b1f61-7877-482f-9204-dc89852bed4f','clacruhy8','claudiac.le@loscabos.tecnm.mx','Mexico','2023-11-14 00:57:27','2024-05-21 11:01:04',1),
  ('eddc06c5-79c1-4b02-b33d-061bbf696a76','yamilejimenez01','yamile.jimenez@uptc.edu.co','Colombia','2023-11-16 11:29:06','2025-02-22 19:04:41',1),
  ('38b1b5d4-4169-4cc4-9cdf-11d435cdd7e5','mluquevilchez','mercedes.luque@uco.es',NULL,'2023-11-23 08:27:53','2023-12-22 05:03:05',1),
  ('46274738-a65c-4214-a86d-d75779ea9863','patriciachaparro','patricia.chaparro@uptc.edu.co','Colombia','2023-11-27 12:38:30','2023-11-30 05:05:47',1),
  ('b59fc0bd-430c-4ae6-a0b4-f4e93a25e75f','lilymonroy','lily.monroy@uptc.edu.co','Colombia','2023-11-27 12:41:16','2024-01-16 16:23:49',1),
  ('7fce8182-a1a9-4a09-aab9-abcba14621e2','dgarcia-arango','investigacion@administrativemc.com','Colombia','2023-11-27 12:52:15','2023-12-06 18:50:53',1),
  ('a350972d-d3e3-4be6-af55-a0c6cc9ec312','phuertazavala','phuerta@ubu.es',NULL,'2023-11-28 07:26:58','2023-12-22 10:23:18',1),
  ('9c3e1367-b3fd-4c70-bc1e-07e2ff0c80ae','43100213','andres_velasquez80191@elpoli.edu.co','Colombia','2023-11-29 19:01:30','2023-11-29 19:01:30',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('145500e8-a6b3-4b6c-9c1b-2d7fe3449e48','kynosarges','kynosarges@elpoli.edu.co','Colombia','2023-12-01 12:35:02','2025-08-20 07:57:12',1),
  ('efbd1a6a-e34d-427b-b1a4-83703488a445','haltamiranoperez','holguer_rodrigo@yahoo.com',NULL,'2023-12-02 08:18:00','2025-07-05 00:10:00',1),
  ('f2250222-3628-428b-bb6a-5d6d1ed02a6d','monicadu071','monica.duque@uniremington.edu.co','Colombia','2023-12-04 15:12:22','2024-10-02 13:21:15',1),
  ('5a61c281-5b84-4a35-aa31-18851a4fbea0','rcasaldealtuve','rosauracasal@gmail.com',NULL,'2023-12-04 15:36:39','2023-12-04 15:36:39',1),
  ('214c8330-a36f-4a6b-a405-fca0043a145b','mperezpinto','pinto1810@gmail.com','Mexico','2023-12-04 22:41:24','2025-03-05 17:11:24',1),
  ('dfcefd29-bb1f-4986-b5af-9201f40f20d3','ainda','alma.inda@uabc.edu.mx','Mexico','2023-12-04 23:00:00','2024-08-12 22:09:13',1),
  ('e4f33a2c-2ea1-41db-8c21-99a1456c1701','acedallinmartinezsanchez','alejandra.martinezsa@correo.buap.mx','Mexico','2023-12-04 23:55:30','2024-03-31 14:05:23',1),
  ('46d33356-92b8-4985-aca7-dbf57dbe8419','nbelcastro','nildaeb@gmail.com','Argentina','2023-12-05 19:34:12','2025-08-27 15:55:06',1),
  ('0f95d3c7-23a2-4edf-9723-9c32c30d09e4','jormarismartinezgo','jormaris.martinezgo@amigo.edu.co',NULL,'2023-12-07 17:37:51','2023-12-07 17:37:51',1),
  ('111e2770-575a-4cfd-92e5-35af7257d37a','kbustamantegonzalez','katherine.bustamantego@gmail.com',NULL,'2023-12-11 14:26:47','2023-12-11 14:26:47',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('1bba6f6a-c246-469b-a593-ea65d94c4200','etaboadaibarra','eunice_uam@hotmail.com',NULL,'2023-12-11 14:30:40','2023-12-13 22:25:34',1),
  ('f963c24f-03a4-4bbc-8fc5-50bbda021686','krestrepoquintero','katherine.restrepo@usachl.cl',NULL,'2023-12-11 14:34:04','2023-12-11 14:34:04',1),
  ('cf89a432-b08a-4b45-855d-c257a9d06cb4','katherinerestrepo','katherine.restrepo@usach.cl',NULL,'2023-12-11 18:30:37','2024-06-12 16:38:35',1),
  ('ee343c4a-b17f-4b38-9399-a4b82b8b8d0c','saquel','sanaquel@hotmail.com',NULL,'2023-12-13 10:49:04','2023-12-13 10:49:04',1),
  ('3f75decf-c3f3-41af-a089-98f67e7f524f','sjassovillazul','zipakyra@gmail.com',NULL,'2023-12-13 10:54:03','2023-12-13 10:54:03',1),
  ('a718f8a7-2fc1-48ed-baf1-be386ee3abc3','rpatinojacinto','rapatinoj@unal.edu.co',NULL,'2023-12-13 13:20:35','2024-03-19 19:40:50',1),
  ('a84c55ca-f00d-4270-98e1-c6853a4eedbd','frankangel-78','frankmarquez440@gmail.com','Venezuela','2023-12-13 16:07:45','2023-12-13 16:10:07',1),
  ('5579686c-07f6-4fce-ab1f-7cdb957339d2','jc1992','21250487@uagro.mx','Colombia','2023-12-13 21:22:34','2024-09-27 18:39:22',1),
  ('1395282d-36ac-47aa-80d7-de4b5ebf6ada','rhartley','rhartley@una.cr','Costa Rica','2023-12-13 23:45:47','2023-12-13 23:45:47',1),
  ('213bfe96-621c-4d58-8c9f-e88f7025d78b','lsanchezvasquez1','lina.sanchez42@tdea.edu.co',NULL,'2023-12-15 15:03:20','2025-07-15 14:10:56',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e45a60e0-1c6a-4989-b4ec-23e4bd2c2213','avaldesfernandez','adrianitalvf@unicauca.edu.co',NULL,'2023-12-15 15:28:26','2024-02-28 17:26:26',1),
  ('c7465930-a4a1-43ae-93bf-6dadc59c451e','pusquiano','paulausquiano@gmail.com','Colombia','2023-12-18 07:58:58','2023-12-18 07:58:58',1),
  ('5728003e-d091-4583-9bf4-835757f3570b','josemina','jose.mina@correounivalle.edu.co','Colombia','2023-12-18 20:03:06','2024-01-06 20:53:11',1),
  ('cabd5296-3db8-4dbe-818b-8777f8483921','ygaona','ygaona@unilasallista.edu.co','Colombia','2023-12-18 20:09:09','2023-12-30 06:31:26',1),
  ('8145e831-81e8-4235-8433-2de2ffaf536c','mflesia','mflesia@fce.unrc.edu.ar',NULL,'2023-12-18 21:22:53','2024-02-09 13:01:06',1),
  ('dd7df707-43e8-4351-ac37-51586442a391','gmartinsdeandrade','martins@usp.br',NULL,'2023-12-18 21:29:00','2023-12-18 21:29:00',1),
  ('fed76796-c657-4b87-86c7-4aff3e147c9b','msanchezlimon','msanchel@docentes.uat.edu.mx',NULL,'2023-12-19 09:28:20','2024-02-08 11:43:45',1),
  ('7f670177-c7b9-462d-b5ba-507f05db0bcc','jf70519260','jfgonzalez@elpoli.edu.co','Colombia','2023-12-21 18:23:41','2025-04-24 21:01:54',1),
  ('09ae2c71-c930-477e-8524-99de671f2f0b','hmendozadelacruz','heriberto@divisionempresarialbananera.com',NULL,'2023-12-26 15:59:24','2023-12-26 15:59:24',1),
  ('04da839b-5c14-496b-a884-34a90ba6f11c','rhernandezlopez','hernandezlopezruben369@gmail.com',NULL,'2023-12-27 07:36:52','2023-12-27 07:36:52',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('36fbdde1-7b67-488c-8651-33390d69a8d9','amachadotineo','amachadotineo@gmail.com',NULL,'2023-12-27 07:40:20','2023-12-27 07:40:20',1),
  ('79049b92-c7fb-4003-b0bf-71c8dace3ec9','ranglada','rosina.anglada@gmail.com',NULL,'2023-12-27 07:44:57','2025-07-24 20:40:05',1),
  ('1bd98ad9-e75e-439e-8ae9-0d3e9b87241f','emesaperez','emesa@uloyola.es',NULL,'2023-12-30 15:55:06','2023-12-30 15:55:06',1),
  ('04a87c24-fbbd-43f4-be87-69831ba37174','jvieirasalazar','javieiras@unal.edu.co',NULL,'2023-12-30 16:02:52','2025-08-21 17:19:20',1),
  ('5cd5a131-2400-46b8-82f5-1a46ed47182a','xvargas','xivargas@hotmail.com',NULL,'2023-12-30 16:34:48','2023-12-30 16:34:48',1),
  ('8a7bff5d-5240-459a-b510-d87a23b881e2','rguerra','mayelin@biomat.uh.cu',NULL,'2023-12-30 16:43:09','2023-12-30 16:43:09',1),
  ('14f90c7e-734a-4d39-a6c7-5a4fb154a653','mespinozasanteli','genoveva.espinoza@uasb.edu.ec',NULL,'2024-01-03 18:54:17','2024-01-03 18:54:17',1),
  ('2f89b044-64ec-4679-a6c9-a85197f73ee8','gmuoz16539','gloria.munoz@uabc.edu.mx','Mexico','2024-01-09 21:51:04','2025-08-16 15:24:12',1),
  ('a473a08f-d38e-4af4-8732-ae1e0e6bee2f','otorres','otorres@jdc.edu.co','Colombia','2024-01-12 09:02:43','2024-01-12 09:03:46',1),
  ('80977612-12a5-44de-93e5-ad93e3ff2d47','ebellomerlo','ebello@continental.edu.pe',NULL,'2024-01-16 12:05:40','2025-08-09 18:03:56',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2487178e-650c-4f75-9d7a-9c645e489c9b','itamaio','irineu.tamaio@gmail.com',NULL,'2024-01-16 12:22:14','2024-01-17 18:57:35',1),
  ('4c069b0e-85a2-4369-b2ba-747239491e69','ncaniguanvelarde','nataliakaniwan@gmail.com',NULL,'2024-01-17 11:05:32','2024-01-19 10:58:22',1),
  ('e95d5b6f-9bbc-4230-811d-3e6a73a1a7d4','pveramartinez','ps.vera@gmail.com',NULL,'2024-01-17 12:18:43','2024-02-16 21:53:13',1),
  ('adb31ec4-625c-4d27-87ff-073214304379','mnunezramirez','marco.nunez@itson.edu.mx',NULL,'2024-01-17 15:04:37','2024-01-26 11:27:12',1),
  ('b0b100b9-c845-49c2-a117-7fef2e528809','cgomezrodas','cgomezrodas@gmail.com','Colombia','2024-01-17 17:57:32','2024-01-24 09:05:37',1),
  ('71f59124-4641-49f0-a765-2649ae413ee1','hdazalondono','harrison.daza@estrategiasfractal.com',NULL,'2024-01-23 15:08:58','2024-03-06 23:56:15',1),
  ('24641adc-fd62-45e5-9c1e-3ec7bd30f032','kflorestuxpan','kftuxpa@gmail.com',NULL,'2024-01-24 14:55:37','2024-01-24 14:55:37',1),
  ('79e46d4d-6f20-40a6-bf64-492c119fff1b','avascoospina','amvasco@elpoli.edu.co',NULL,'2024-01-24 15:33:40','2024-01-24 15:45:34',1),
  ('72d7b1f7-b78a-46b9-9bb6-b54e0c87cc4d','lloaizavelez','luzeloaizav@gmail.com',NULL,'2024-01-24 15:39:15','2024-03-12 07:05:52',1),
  ('43d3c475-a176-4af7-9df4-72f3e597d0f1','gchavez','glenda.chavez@umich.mx',NULL,'2024-01-29 09:50:22','2024-02-10 10:26:34',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f441307e-e886-4bee-97e1-f99540217f05','lilia_salas83191','lilia_salas83191@elpoli.edu.co','Colombia','2024-01-29 13:36:32','2024-04-05 06:35:58',1),
  ('367066d1-30ea-476d-961d-eae76695dbc7','juan730','ingjuan730@gmail.com','Colombia','2024-01-29 16:38:09','2024-01-29 16:38:53',1),
  ('8e329995-c2b8-4cd5-86de-e61de93aeb19','leidytapias06111','leidycris1@gmail.com','Colombia','2024-02-04 14:55:11','2024-02-08 22:31:07',1),
  ('4e71e0c2-bf66-473c-a91f-d039ae3964d4','equiroslizarazo','elkin.quirosli@amigo.edu.co',NULL,'2024-02-04 18:59:57','2024-02-04 18:59:57',1),
  ('24d0a58d-cacf-485b-b344-1028be9d13f3','cpalaciogomez','capalacio@correo.iue.edu.co',NULL,'2024-02-07 16:42:15','2024-03-15 10:36:53',1),
  ('bed68d34-726f-4866-be87-41278ca94ee0','sjassovillazul1','javierv@comunidad.unam.mx',NULL,'2024-02-12 08:31:50','2024-02-13 20:04:31',1),
  ('809f1a5c-c940-440c-b721-d75082e64676','fcalabelli','francisco.carabelli@gmail.com','Argentina','2024-02-12 08:34:56','2024-02-14 08:11:25',1),
  ('b01eeb5b-6ef1-47af-b671-0f8a2d7b8306','mgtarosa','mgtarosa@gmail.com','Colombia','2024-02-14 23:16:24','2024-04-09 09:21:01',1),
  ('f4cc578a-7a19-4a54-b7c1-47ecd771d824','hrvtuzh','grierly@cmaill.xyz','Montserrat','2024-02-17 23:39:58','2024-02-17 23:39:58',1),
  ('eb3db41c-796c-4032-94c0-28ba9f9bd474','jgdoria','j.doriaan@pascualbravo.edu.co','Colombia','2024-02-19 08:20:22','2024-02-19 08:21:24',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3f5555c3-1369-4505-ae34-b89ad32d57ee','liaivetle','miviolf@lmaill.xyz','French Guiana','2024-02-22 14:35:58','2024-03-14 07:51:42',1),
  ('fceedb55-d5d8-4811-9e54-d20b9a5b4f75','juangsaldarriaga','juangsaldarriaga@elpoli.edu.co',NULL,'2024-02-23 17:32:33','2024-06-17 18:37:02',1),
  ('c3289271-83b5-46d1-973c-7962c7186b84','bepbeinc','catte@fmaill.xyz','Mexico','2024-02-26 14:28:03','2024-03-05 23:42:45',1),
  ('9a12c71f-d6b2-4868-a557-3f19bdb84a8d','yakiel24','yakielrodriguez@gmail.com','Cuba','2024-02-26 15:28:09','2024-02-26 15:30:21',1),
  ('ebdfdcc7-112a-4911-a372-4eaaae7ed187','nati','juliealzate@elpoli.edu.co',NULL,'2024-03-01 20:15:30','2025-05-14 10:13:20',1),
  ('b7d17e8f-aa1d-433f-b36c-18274e224a63','mari','advaenf@gmail.com',NULL,'2024-03-01 20:20:47','2024-03-08 11:59:19',1),
  ('90acccb6-d95f-4acc-bec3-2d1c92e6b851','macarena','masuabla@icloud.com',NULL,'2024-03-01 20:25:08','2024-03-01 20:25:08',1),
  ('e9e93485-71eb-4f62-8c80-453bf1507fe8','lpemberthy','lpemberthy@unicauca.edu.co','Colombia','2024-03-06 17:05:28','2024-11-19 18:30:06',1),
  ('e8f4751b-4856-454a-912f-badaaad6c136','jorge_mora','jorge.moraf@uniminuto.edu','Colombia','2024-03-07 11:47:28','2024-11-23 17:10:41',1),
  ('88510a21-f8f7-4932-a3de-9e4cefa40d5e','ltoromarulanda','luisc.toro@esap.edu.co',NULL,'2024-03-10 21:08:13','2024-03-10 21:08:13',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('57e1d4d9-f6a0-4b92-9c53-5ea22173000c','hmolinaruiz','hmolina@uaeh.edu.mx',NULL,'2024-03-10 21:13:43','2024-03-10 21:13:43',1),
  ('9d8af451-ef49-4518-9097-3d8c297fdfc6','ngallon','natalia.gallon@tdea.edu.co',NULL,'2024-03-11 15:18:26','2024-04-29 16:08:27',1),
  ('537ecc38-6997-4473-9517-29a7ff74b241','joanesmoreno19','jemoreno@correo.iue.edu.co','Colombia','2024-03-12 08:32:54','2024-11-07 16:49:23',1),
  ('bc901b59-d3be-4495-b186-7c8a4956ee2c','lsanchez','leonardosanchez@elpoli.edu.co','Colombia','2024-03-12 17:07:00','2024-05-31 08:42:25',1),
  ('e5feda64-75b1-4952-9471-8c89bae336f7','jrs','jrsaravi@gmail.com','Argentina','2024-03-14 19:54:04','2024-03-14 19:54:28',1),
  ('7e6a45c8-b410-4d32-97b9-cb76f6cf0ded','ehenandezrejon','mrejon@docentes.uat.edu.mx',NULL,'2024-03-18 16:55:43','2024-03-18 16:55:43',1),
  ('f2e491ae-4230-48ff-b76c-5c79e21efb67','daarcieniegasa','alejandroarciniegas@gmail.com','Colombia','2024-03-21 18:54:36','2025-04-03 10:11:26',1),
  ('3e729595-7495-49ad-a4ed-b84c8dcecaaf','jbarreto','jaimeconomics@gmail.com','Colombia','2024-03-21 19:58:03','2024-03-21 19:58:03',1),
  ('4f3d5150-2b19-4a75-b719-54012e6af724','jdbarreto','jdbarretoc@ut.edu.co','Colombia','2024-03-21 20:00:41','2024-03-21 20:04:19',1),
  ('29a49b55-846e-4381-b1f6-ac28cd269696','dulceph','dulperezh@gmail.com','Mexico','2024-03-22 13:58:53','2024-10-02 17:51:57',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('91425bf1-211d-4012-a2e6-88198e796e06','leison-mosquera1809','leisonmg1810@hotmail.com','Colombia','2024-03-29 12:41:43','2024-03-29 12:47:25',1),
  ('23e65777-4466-4fed-bf9c-7e086bd6bea3','psernaserna','pserna@uninorte.edu.co',NULL,'2024-04-05 16:59:06','2024-12-03 10:44:01',1),
  ('f3304613-98eb-425d-b8eb-c4a6408e1b52','valentina_gallego83171','valentina_gallego83171@elpoli.edu.co','Colombia','2024-04-07 15:47:20','2024-04-07 15:48:21',1),
  ('5e8e8c0e-53ed-4401-88c0-44b996c01654','maria_rodrigueztriana','maria.rtriana@gmail.com','Colombia','2024-04-09 09:10:43','2025-10-04 09:45:52',1),
  ('b854e036-ac98-4a59-809f-929acf2f3d0d','jlopez','ing.jrlopez@gmail.com',NULL,'2024-04-10 09:30:34','2024-04-10 09:30:34',1),
  ('3afb0d43-96cf-4416-9df4-54156d390a65','dotl25','linda.gr@mochis.tecnm.mx','Mexico','2024-04-11 13:52:04','2024-11-05 11:04:07',1),
  ('67ace31c-3460-41e8-acbd-c491befe01d1','lpantojaagreda','ljpantoja@elpoli.edu.co',NULL,'2024-04-12 08:22:21','2024-04-12 08:22:21',1),
  ('0152f1b4-00bf-425f-ba08-48b350b25ee6','jsierrasuarez','jorgesierra@elpoli.edu.co',NULL,'2024-04-12 15:24:30','2024-04-12 15:24:30',1),
  ('2a52aa6e-e1f6-488d-9286-c27f609cd973','bangulom','barniangulo.est@umecit.edu.pa','Colombia','2024-04-13 11:03:42','2024-04-13 11:04:24',1),
  ('84c90e6a-8a47-4d70-9205-fd48e53580f0','mgomezm','mgomez@elpoli.edu.co','Colombia','2024-04-14 21:52:06','2024-05-19 20:42:34',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('699ddd7d-dce4-441b-82d6-b4f7975549e0','miguelvargas','miguel.vargas@unad.edu.co','Colombia','2024-04-14 21:57:04','2024-04-15 09:01:15',1),
  ('007aeafb-8ae3-424a-8b5e-a36b1437caf0','luismi7508','lmlopez@umanizales.edu.co','Colombia','2024-04-16 15:40:16','2025-09-24 08:37:03',1),
  ('0a603f33-03e5-483d-baa3-00b8328df81b','camila-santos','camila.santos.2020@upb.edu.co','Colombia','2024-04-17 09:27:12','2024-04-17 09:37:32',1),
  ('cbb50018-42bc-4571-aa2e-90974d3bed25','juan-florez','juand.florez.2020@upb.edu.co','Colombia','2024-04-17 09:33:11','2024-04-17 09:40:15',1),
  ('5eec8021-83ab-4ed9-911b-0907bd038703','valle2024f','monicavallef@hotmail.com','Colombia','2024-04-18 13:46:12','2024-04-18 13:46:12',1),
  ('ed421036-9eb2-4390-bf88-e8b10bb3a169','tosa8992-2024azul','guadalupe.morales@correo.buap.mx','Mexico','2024-04-18 17:20:48','2024-04-18 17:22:29',1),
  ('de4524dd-da0f-4c6c-bd2d-d5347dfad429','eberlejuan24','jpatterson.chubut@gmail.com','Argentina','2024-04-23 08:06:29','2024-09-08 20:05:17',1),
  ('dfbbced1-130b-4e0a-8ee8-f22c4dcfe4c9','ale_cahua23','ale_cahua237@hotmail.com','Colombia','2024-04-25 10:10:28','2025-04-13 11:21:57',1),
  ('0194bbf9-be52-465f-ba22-e2d550922bac','fatimaccastro','mariacastro.castro8@gmail.com','Brazil','2024-04-27 16:30:32','2024-04-27 16:31:19',1),
  ('37ab1fc7-b9ed-4b64-bec6-14d618eb74e8','nataly_mendoza01','natalyvanesamendoza@gmail.com','Peru','2024-04-28 23:25:29','2024-04-28 23:25:29',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('732f439d-46c5-4ca1-ba8b-0b45c3bfee71','wpenacollazos','wilmar.pena@unimilitar.edu.co',NULL,'2024-04-29 12:05:54','2024-07-15 16:55:18',1),
  ('df0f6f8a-8a2b-4662-8af3-1770259bd040','juanflorez15','juan.diego.fc.50@gmail.com','Colombia','2024-04-30 10:43:31','2024-04-30 10:44:23',1),
  ('b4d4a63b-887a-42c3-8433-e72aa3fb55de','joseosa98','jlossac@eafit.edu.co','Colombia','2024-05-02 12:14:07','2025-09-23 23:15:38',1),
  ('5b21ed00-49e6-4fcf-b762-15792afe3fb6','71217720','juan.bedoya@colmayor.edu.co','Colombia','2024-05-03 12:58:27','2024-09-30 10:26:11',1),
  ('472df621-9a43-4ca2-8fca-bf3f0281fbb5','32322033','loperaadriana2033@americana.edu.co','Colombia','2024-05-05 09:52:19','2024-05-05 10:01:16',1),
  ('d3b80726-8c17-4e70-a5ea-9007c3def3a9','yovalle10','yovalle10@estudiantes.areandina.edu.co','Colombia','2024-05-09 10:21:07','2024-05-09 10:27:53',1),
  ('e99ad47e-f4b5-4620-a229-758814333502','aromero67','a.romero@aguaprieta.tecnm.mx','Mexico','2024-05-17 21:30:11','2024-12-16 18:03:47',1),
  ('084e1bd8-d828-472b-b282-47a0900776ff','wlegnani','walterlegnani@gmail.com',NULL,'2024-05-18 12:05:45','2024-05-18 12:05:45',1),
  ('11f472a9-0290-4991-906c-e3b247398cff','mgimenez','mgimenez@undav.edu.ar',NULL,'2024-05-18 12:28:43','2025-09-24 13:09:10',1),
  ('adffd111-e8a6-4641-8ca2-dc10ce9295a7','gerardosansa','gerardosansa@gmail.com','Mexico','2024-05-19 18:12:45','2024-05-26 14:37:15',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('6d317f3f-200e-465c-bb62-368bcc64681e','jhonisaza','jhonisaza@itm.edu.co','Colombia','2024-05-19 18:19:06','2024-05-19 18:24:25',1),
  ('f427e610-3434-420d-9726-b436b3ed0e3a','nunezdavid','nunez.david@correounivalle.edu.co','Colombia','2024-05-19 18:27:53','2024-07-07 12:14:02',1),
  ('a133991c-7e4b-4e3a-b65b-9f9c96aef56d','aelima','aelima@uqroo.edu.mx','Mexico','2024-05-19 18:32:22','2024-09-04 11:40:07',1),
  ('2dcd0829-a9de-4ee1-b8af-14f00e836cd6','dinomancojaraba','dinomancojaraba@gmail.com','Mexico','2024-05-19 18:35:21','2024-05-20 11:42:02',1),
  ('50715264-2e80-42d7-8943-84590030970f','asilvap','asilvap@unillanos.edu.co','Colombia','2024-05-19 18:40:12','2024-05-20 10:31:53',1),
  ('46bc9827-825f-4fdb-8cf2-fca831825020','oviedopereira1991','oviedo.pereira1991@gmail.com','Colombia','2024-05-19 18:42:20','2024-06-11 08:06:26',1),
  ('2571e86f-f642-43a0-8262-a0ce7ffdb6d1','norhaposada','norha.posada@upb.edu.co','Colombia','2024-05-21 08:26:48','2024-06-10 21:54:07',1),
  ('610137b6-b17c-46a8-b6e0-3c4e07c4c676','ldgonzalez','ldgonzalez@elpoli.edu.co','Colombia','2024-05-22 10:08:52','2024-05-22 10:12:54',1),
  ('db512328-5fcb-4670-b72a-93ac6f26f3d7','alexbib','alextroya@unicesar.edu.co','Colombia','2024-05-24 17:09:46','2024-05-24 18:42:07',1),
  ('c40796de-809c-4b24-9131-5ffc0ba3961f','scerqueiradasilva','sandracerqueira@usp.br',NULL,'2024-05-27 10:26:56','2024-08-15 13:48:21',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('fbc4735e-e3f6-4cd2-9b8d-b692700a3f7f','wilmar-pena61','pc.wilmar@gmail.com','Colombia','2024-05-27 10:49:53','2024-05-27 11:08:19',1),
  ('de19b55e-66dd-4a2b-a302-fdd683ea7008','sandramariasilva','sandraam@uefs.br','Brazil','2024-05-31 03:08:30','2024-05-31 03:14:31',1),
  ('9f52e968-0708-4fbb-ba36-40ee8a93f830','yesica_gonzalez87222','yesica_gonzalez87222@elpoli.edu.co','Colombia','2024-06-02 09:49:38','2024-06-02 09:50:53',1),
  ('998989c8-5aae-44ed-a0e7-0ce12f82f419','ncorreahincapie','nataliacorrea@itm.edu.co',NULL,'2024-06-04 10:04:42','2024-06-12 09:37:33',1),
  ('283da2b2-6261-4c71-b1e6-0ef51beb3ae0','luzsale','luz_eugenia_saldarriaga@hotmail.com','Colombia','2024-06-07 06:45:47','2024-06-30 05:35:55',1),
  ('232f7a86-d605-4e37-abac-37fa0e078b13','luisaleyton','luisaleyton9@gmail.com','Colombia','2024-06-09 19:46:49','2024-06-09 19:47:18',1),
  ('20b870c3-e4ef-48aa-a1fd-69dc59d656db','jacdbio','jacdbio@yahoo.com','Colombia','2024-06-10 15:51:05','2024-07-12 09:51:09',1),
  ('c6c2be8a-55a5-4da8-ad65-73155dfaf646','aniembro','andresniembro@gmail.com',NULL,'2024-06-11 07:45:03','2024-06-11 14:56:58',1),
  ('1652321a-83f1-451c-8a19-7b6a95e84015','mdondo','marianadondo@gmail.com',NULL,'2024-06-12 13:30:01','2024-07-01 07:24:24',1),
  ('15bc2a44-308c-4e98-99a9-ee3c42fb1b67','ltorres','ltorres@cta.org.co','Colombia','2024-06-13 16:58:37','2024-08-26 20:23:12',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('65827985-a093-4cb4-8528-7639352f0fd0','vmre','vm.reyesespino@ugto.mx','Mexico','2024-06-17 11:53:22','2024-06-17 11:54:04',1),
  ('4ad636f3-8ef5-46be-b4a9-5f453b4b2b83','fabiangupi23','fabianguiza0721@gmail.com','Colombia','2024-06-17 15:30:14','2024-10-07 16:12:55',1),
  ('3fb3fb6e-5491-4267-8c52-6b577115579a','vance37i84980898','vancenina@facebook.com','French Guiana','2024-07-01 10:55:41','2024-07-01 10:55:41',0),
  ('91b1e7d7-ab71-414f-8f52-62d195920980','evillegasg','eleazarvillegas@hotmail.com',NULL,'2024-07-04 12:36:00','2024-07-04 12:36:00',1),
  ('bd999f9f-a49c-4dfc-afd5-c782ba0d1126','jrodriguezgomez1','juan.rodriguezg@unaula.edu.co',NULL,'2024-07-04 12:37:17','2024-07-04 12:37:17',1),
  ('18eba701-44d7-40cf-9de7-7699a61326c3','juancarlos1982','juancarlos.espinoza@uaz.edu.mx','Mexico','2024-07-04 19:03:36','2024-07-07 19:06:42',1),
  ('2997ece6-274c-41d5-be1a-940cd2e23eef','vsieglin','veronika.sieglinst@uanl.edu.mx',NULL,'2024-07-08 09:43:21','2024-07-08 09:43:21',1),
  ('9acc312b-d261-4308-a2c6-b97fa1bcee78','diomerpalaciom','diomer.palacio@pascualbravo.edu.co','Colombia','2024-07-11 16:54:18','2025-07-06 19:47:49',1),
  ('bef3502d-bc8f-4d0b-9bc8-60c394823fcb','pipevalencia','lvalenciat@umanizales.edu.co','Colombia','2024-07-18 13:50:35','2024-07-18 14:26:23',1),
  ('d5198efa-c67d-45b3-9c3b-16297861c70c','liliambj','liliambj@gmail.com','Colombia','2024-07-25 15:53:57','2024-10-08 12:14:21',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('71f9731a-ba97-4a62-9cfc-48d6bfd5f2fb','alvaromejia1065644737','amejia47@estudiantes.areandina.edu.co','Colombia','2024-07-28 21:38:13','2025-07-22 10:33:50',1),
  ('ce98a925-4fb0-480c-8d38-4be386bb087e','marcelahdz','lhernandez@cdacuna.tecnm.mx','Mexico','2024-08-07 18:52:43','2024-08-07 18:53:39',1),
  ('d445519c-d373-4b89-8445-aa6cc90135c1','narie23','narie23@gmail.com','Colombia','2024-08-11 20:08:44','2024-09-03 03:36:29',1),
  ('3760d630-5453-45d7-b504-2a04dfaab196','teukenbidikay','teuken-bidikay@elpoli.edu.co','Colombia','2024-08-11 20:53:56','2024-08-11 20:53:56',1),
  ('c61c30b7-129c-4f27-b2d2-bc1fd19fc172','vnepumuceno','valerionepomuceno@terra.com.br',NULL,'2024-08-19 11:41:46','2024-09-23 06:45:28',1),
  ('409ead5c-09fc-4ad7-ac14-9143d1df757c','dduqueramirez','dfduquer@gmail.com',NULL,'2024-08-19 11:52:44','2025-04-19 09:03:43',1),
  ('1594baf5-4c8c-41ca-a53b-57520adb475e','palvarezcabrera','percyalvarez@santotomas.cl',NULL,'2024-08-22 15:08:26','2024-08-22 15:08:26',1),
  ('99257aa1-3dac-4f83-bfc8-6f446f3a8562','sarcosmoreno','sarcos@uaslp.mx',NULL,'2024-08-23 16:58:54','2024-08-23 16:58:54',1),
  ('7043cedd-dece-4e30-bdda-570091518646','kjenioarnez','kajemio@elpoli.edu.co',NULL,'2024-08-28 14:50:05','2024-08-28 14:50:05',1),
  ('a888ef6a-c34c-43d0-bab9-f1fa69551ba6','hfbermudez','hfbermudez@uniquindio.edu.co','Colombia','2024-09-01 21:37:37','2024-09-25 10:32:18',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d8fa5cf4-401e-4fbf-8acc-76df9dbbc7e9','cpinedaechavarria','carlospineda@elpoli.edu.co',NULL,'2024-09-03 11:41:07','2024-09-21 22:13:44',1),
  ('690bd206-850b-454a-b60f-65fe7e5a98db','yanella','yanella_martinez25232@elpoli.edu.co','Colombia','2024-09-09 23:09:28','2024-09-09 23:10:59',1),
  ('93540d38-444b-4823-b2b0-7be89491df7d','choscodiaz','cdiaz@campus.ungs.edu.ar','Argentina','2024-09-15 13:48:13','2025-04-22 16:42:43',1),
  ('c744a2d8-94e8-4e0d-9848-6cb8c0b99dac','fjaure','fjaure@campus.ungs.edu.ar','Argentina','2024-09-15 19:13:22','2024-09-15 19:17:06',1),
  ('477189f7-6d4b-4ff1-84e3-509b3e40af3d','llanesh','ernestollanesh@gmail.com','Cuba','2024-09-15 19:37:21','2024-12-10 23:07:58',1),
  ('2b10aa3e-e47d-4f59-bc7f-e816e314209b','yaqob2389','darmandopachon@ucundinamarca.edu.co','Colombia','2024-09-18 10:26:43','2025-04-08 10:56:08',1),
  ('1cfad67e-9807-4952-afa5-4fa713a5115f','odiazbecerra','odiaz@pucp.edu.pe',NULL,'2024-09-20 14:56:31','2024-09-28 20:58:53',1),
  ('9a16d62e-5b03-445a-ab24-7f07660dfc15','2024sandra-bonilla2024','sandra.bonilla@utp.edu.co','Colombia','2024-09-25 16:49:32','2024-12-12 08:03:54',1),
  ('12f2b012-95ac-4f6b-af0e-625f058565ea','lmyarce','luisa_yarce92131@elpoli.edu.co','Colombia','2024-09-26 15:06:59','2024-11-22 15:26:12',1),
  ('631621eb-39d0-42e9-bff0-cebb4e9db70d','eypacheco','eypacheco@unicesar.edu.co','Colombia','2024-09-29 13:27:20','2024-09-29 13:30:01',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('85a7045d-f194-4cf9-a77f-b27fc82c783a','ladycath906','ladycath906@gmail.com','Colombia','2024-10-01 13:43:55','2024-10-07 16:51:11',1),
  ('a24c2975-24cc-4853-b68f-275db6639daf','fsbrinne','fabrinne@protonmail.com','Brazil','2024-10-04 08:35:17','2025-02-11 13:42:47',1),
  ('3d8fe19d-33d8-4d5c-b742-a607e63c5587','lirodriguez28','lirodriguez28@estudiantes.areandina.edu.co','Colombia','2024-10-05 10:56:13','2024-10-05 10:58:05',1),
  ('be417310-4970-4175-9330-204c4616d12c','josessanchez','est.jose.sanchez19@unimilitar.edu.co','Colombia','2024-10-07 21:56:13','2024-11-13 13:29:02',1),
  ('43fa0744-e38e-4b25-9c14-a8febc66d637','mary_alvarez','talvarez@itson.edu.mx','Mexico','2024-10-09 16:30:44','2024-10-09 17:02:13',1),
  ('dae43286-1e12-45b7-8f2e-c3ca0e8fa8a7','07vivimovi-07','viviana.morenovi@amigo.edu.co','Colombia','2024-10-13 11:31:54','2025-07-09 14:21:42',1),
  ('beae7ac5-3298-45c9-8d8d-4ae57f3fb4eb','hassankinsela2','hassankinsela@gmail.com','British Indian Ocean Territory','2024-10-22 05:43:46','2024-10-22 05:43:47',0),
  ('5ceb988a-20c0-4149-a3a4-757b572e20d5','cdelgado','cdelgado@unicomfacauca.edu.co','Colombia','2024-10-22 17:12:45','2024-10-22 17:19:28',1),
  ('77a6407a-94f8-45dd-bcc0-05b7640ed438','ltamayojaramillo1','luztamayo@elpoli.edu.co','Colombia','2024-11-01 13:34:50','2025-10-01 16:38:25',1),
  ('0d7bb53d-692a-441f-9521-f3fc2d84de1d','rjimenoespadas','rjimeno@correo.xoc.uam.mx','Mexico','2024-11-01 13:49:08','2024-11-23 17:46:36',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8370b5e1-f05b-4564-87c5-51067516fe66','rjimeno','rjimeno01@gmail.com','Mexico','2024-11-01 15:33:58','2024-11-01 15:34:24',1),
  ('b2380ae1-fd83-40d0-850e-0d2948ff8f58','vnieblazatarain','virginiab.nz@loscabos.tecnm.mx',NULL,'2024-11-04 15:17:43','2025-03-03 22:58:42',1),
  ('a917a571-776a-4624-8864-a6b7bf00ad5e','drestrepoduque','diegorestrepo@elpoli.edu.co',NULL,'2024-11-05 09:43:56','2025-09-09 10:16:31',1),
  ('9e3e6087-480c-4c4b-8267-ce03f36aadd1','msaavedragarcia','mirisaga@hotmail.com',NULL,'2024-11-05 09:52:01','2024-11-05 09:52:01',1),
  ('1cc3becc-b7ab-4669-9a9f-73996bb0ddc0','kelmia07','isabelkelmia@gmail.com','Peru','2024-11-10 19:38:29','2024-11-10 20:31:28',1),
  ('e8ec9015-20e5-4acf-a5e7-9a94ee85002c','jaimeluisariza21','jaimeluisariza21@gmail.com','Colombia','2024-11-11 11:33:03','2024-11-16 12:22:32',1),
  ('910aacbe-5cc0-468d-aee1-f3c8465e30db','anasoto','ana.sh@cdmadero.tecnm.mx','Mexico','2024-11-11 15:19:12','2024-11-11 15:19:58',1),
  ('9aca51b1-5833-482f-aa6b-4e72472bda56','dr-benitez','jpbenitezg@uaemex.mx','Mexico','2024-11-20 21:43:30','2024-11-20 21:43:30',1),
  ('f73b9fa8-c874-45d1-a3c7-ae09b0925a35','saquinozuniga','saquinozuniga@gmail.com',NULL,'2024-11-22 10:49:09','2025-03-04 07:49:33',1),
  ('66c2e1da-9025-4ca0-a45c-37909421c1df','hugo407','vrojasch1@ucvvirtual.edu.pe','Peru','2024-11-23 09:08:30','2024-11-23 09:08:30',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3cf87076-ce2a-4573-9388-1290f0fe45d4','mjimenezmai','mjimenezmai@ucvvirtual.edu.pe','Peru','2024-11-23 19:14:55','2024-11-23 19:15:43',1),
  ('1f1255c5-4c60-4605-9aa9-863b6fca6ce3','jim_cano','jcanoco69@ucvvirtual.edu.pe','Peru','2024-11-23 19:15:22','2024-11-23 19:17:32',1),
  ('46ba630e-f5fc-4a1c-b087-47b647213da7','aleonard_2024','aleonard@ucvvirtual.edu.pe','Peru','2024-11-23 19:21:08','2024-11-23 19:23:35',1),
  ('e5bbc6e8-74fa-40d2-af56-f0c8b15aac9f','bbenito','bbenito@ucvvirtual.edu.pe','Peru','2024-11-23 19:22:34','2024-11-23 19:24:23',1),
  ('7068ac2a-9bdb-40b1-b537-45b8cecaa054','osilvasan22','osilvasan@ucvvirtual.edu.pe','Peru','2024-11-23 19:23:04','2024-11-23 19:23:04',1),
  ('1aa78a94-f30b-4027-9d33-979948edf368','ocruces','ocruces@ucvvirtual.edu.pe','Peru','2024-11-23 19:23:11','2024-11-23 19:23:49',1),
  ('c92d7c0c-3734-4d61-81cf-12ded4a48765','zapataa','zapata-a@javeriana.edu.co',NULL,'2024-11-23 20:36:15','2024-12-13 12:14:02',1),
  ('33ad929b-34c9-4c86-b32c-107a3fde783b','leony02','stevenle.tobar@umariana.edu.co','Colombia','2024-11-28 09:20:21','2024-11-28 09:21:31',1),
  ('09947f7d-7003-45b5-8086-2e67f9564d1c','crivera','crivera@javeriana.edu.co','Colombia','2024-12-03 21:07:40','2024-12-03 21:07:40',1),
  ('0a1c9f1a-fb4d-4c9d-83e3-a852f8a13f81','yasplad','yasplad@gmail.com','Colombia','2024-12-03 21:11:31','2024-12-30 09:12:03',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b7941089-98c8-462f-90aa-409fc29433d0','vcanomejia','vanessacanomejia@gmail.com','Colombia','2024-12-09 13:31:21','2025-08-14 16:10:22',1),
  ('f76f9d01-f067-4900-9622-65d10f893cd3','njochoar88','nilson.javier@hotmail.com','Colombia','2024-12-09 17:00:45','2025-03-24 12:32:59',1),
  ('4f5bc578-b340-4c51-a0ca-5fe60df66eff','jriverossudy','jriveros@uach.cl',NULL,'2024-12-09 18:35:43','2024-12-09 18:35:43',1),
  ('953d8b0a-77e1-4978-9028-55a9ba7e5169','rafael1950','investigar1@gmail.com','Colombia','2024-12-10 16:29:05','2024-12-10 16:32:06',1),
  ('d2348536-a7a0-4a1d-8898-cbb33d14247a','tchicaizavillalba','tchicaiza@ups.edu.ec',NULL,'2024-12-11 12:36:43','2025-02-06 20:16:54',1),
  ('c36c67e3-4f73-48d1-b3d8-7fb699c03597','gcurletto','guidocurletto@gmail.com','Argentina','2024-12-11 13:03:49','2025-01-21 07:40:34',1),
  ('8d2e0df9-ceed-4531-8820-958fcc20092d','csalazarconcha','cristiansalazar@uach.cl',NULL,'2024-12-16 10:56:05','2024-12-16 10:56:05',1),
  ('a6ded801-3023-4631-8447-e3e0ad193458','rlastrab','lastra60@infinitummail.com',NULL,'2024-12-16 11:09:08','2024-12-16 11:09:08',1),
  ('137d7d15-fc03-4048-b5f9-8f820afff303','dansalinas','a00600084@tec.mx','Mexico','2024-12-16 15:36:29','2024-12-16 15:37:39',1),
  ('09199d0f-130a-45cf-b543-a27290d8fa41','luzzavala77','arq_zv@hotmail.com','Mexico','2024-12-18 09:11:17','2025-09-29 15:11:52',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('769878e9-d2ab-4b44-b736-fd1a18bcf29f','germreyr-1209','greyes9@areandina.edu.co','Colombia','2024-12-19 08:34:38','2025-05-05 15:02:07',1),
  ('c102622a-bfb5-44c9-b4e5-b5de7afca57c','fjimenezfigueredo','felixestebanjf@gmail.com',NULL,'2024-12-23 07:49:33','2024-12-23 07:49:33',1),
  ('9a119799-a486-4332-96b7-39a17603eb4e','daron-92c','dairon920328@gmail.com','Cuba','2025-01-03 00:31:10','2025-01-03 00:31:10',1),
  ('bcef01fd-6d46-4cc5-8234-8da81f2d81a8','leo-93c','leoalejandroacosta1@gmail.com','Cuba','2025-01-03 00:33:17','2025-09-20 08:20:34',1),
  ('f49bd9b1-0389-4ca0-8a2f-602b5559f0dc','estefania_acevedo1','estefaniaacevedo71@gmail.com','Colombia','2025-01-03 12:27:29','2025-01-03 12:28:32',1),
  ('5e7e6d8f-74b7-4781-b5c8-c4ec2ab853dd','lbaltazar','lbaltazar@uteq.edu.mx','Mexico','2025-01-13 10:51:53','2025-01-14 13:10:52',1),
  ('5f81b1b6-e1ab-4971-9ddd-853e07ca1909','calabozo1967','audy.castaneda2@gmail.com','Venezuela','2025-01-26 22:00:29','2025-01-26 22:00:29',1),
  ('44122734-65b4-4b77-b40b-d44cae2ed1b8','cfranco','cfranco31@gmail.com',NULL,'2025-01-31 17:10:06','2025-01-31 17:10:06',1),
  ('bfe2eb92-d1df-4319-b6bc-fed9eb9d7179','spamaccount','juancardonab@elpoli.edu.co',NULL,'2025-02-02 20:30:03','2025-02-02 20:36:40',1),
  ('b8c198e6-2f1b-4fcd-a4da-b399534f9b0a','cbentivoglio','victoriabentivoglio04@gmail.com',NULL,'2025-02-05 15:25:26','2025-02-05 15:25:26',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d415db1f-6e9f-451d-b3a5-644ce487d067','1047449090','ronald_luna84171@elpoli.edu.co','Colombia','2025-02-17 19:29:57','2025-02-17 19:29:57',1),
  ('250002c1-b21e-43e5-9690-dc502c7a6f6a','1038820163','santiago_lagares84151@elpoli.edu.co','Colombia','2025-02-17 19:37:46','2025-05-07 12:45:42',1),
  ('95d1c850-af82-495b-bf62-78d0561d809b','mariaanavarro221','mariaa.navarro221@umariana.edu.co','Colombia','2025-02-22 12:18:51','2025-02-23 20:49:48',1),
  ('286c8581-8ecd-41f5-91d6-b127436afbc7','cgonzalezm','cgonzalezm@elpoli.edu.co','Colombia','2025-02-22 12:22:17','2025-03-24 16:19:53',1),
  ('ae69a17a-5ae8-4638-9d04-9d4e7bbe8791','msarduygonzalez','msarduy@fcf.uh.cu',NULL,'2025-02-28 15:32:34','2025-03-04 07:36:11',1),
  ('6ae33a16-00e8-43ed-938c-280b666ca790','jzamarralondono','julian.zamarra@udea.edu.co',NULL,'2025-02-28 15:36:29','2025-02-28 15:36:29',1),
  ('bfebdf9b-59c9-413f-9bd6-f8b3be6ee7a6','adry_royero','adry_royero@hotmail.com','Colombia','2025-03-02 22:01:40','2025-04-13 11:23:44',1),
  ('d103eb28-9a1f-4a01-9e8f-3e902e5e19a0','rafaelgarrido99','rafael_garrido99@hotmail.com','Peru','2025-03-04 11:33:13','2025-03-04 11:36:31',1),
  ('3520990c-d675-4cf8-96a6-c5ad787e7550','cbarraganm','c.barragan@unireformada.edu.co','Colombia','2025-03-07 09:10:11','2025-09-17 09:49:28',1),
  ('ba36ef62-23d3-4c40-aff8-8336c5c407d3','carynyuill395','caryn_yuill@verizon.net','Austria','2025-03-07 10:51:34','2025-03-07 10:51:34',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('76345b45-da10-4a3b-ae56-f738bc44e95b','rcardenaslondono','rcardenas@correo.iue.edu.co',NULL,'2025-03-10 13:59:15','2025-03-28 17:27:09',1),
  ('826fb1ae-051e-4896-836d-7ac5a839a4cb','vantunezsaiz','vivian@ceted.uh.cu',NULL,'2025-03-10 14:06:56','2025-03-10 14:06:56',1),
  ('6a81cab6-115e-44ef-9b65-a4e2ee0f427d','gruiz','gustavoruiz@elpoli.edu.co','Colombia','2025-03-10 15:10:23','2025-09-18 16:06:55',1),
  ('f6e5e762-6a8f-4774-8325-176ae55573ba','fm316','ferney_munoz58241@elpoli.edu.co','Colombia','2025-03-10 22:55:54','2025-03-10 22:56:40',1),
  ('9e6bd9da-0244-46d3-bd59-3f1d70ccc05f','gbelloalvarez','giovanny.bello@udea.edu.co',NULL,'2025-03-14 15:56:51','2025-08-13 11:24:02',1),
  ('c5819ea4-85e0-46ce-95f1-0ca184e69b27','daguiar','daguiar.arg@gmail.com',NULL,'2025-03-14 16:09:14','2025-03-14 16:09:14',1),
  ('f42d13fd-5de4-4d2a-abe7-eaaa75b94637','gloizaospina','guillermoloaiza47@gmail.com',NULL,'2025-03-17 10:23:34','2025-03-28 16:55:32',1),
  ('92debc3f-27e7-4819-a1ec-df510e941777','62enrique_aguirre','enriquexavier.aguirre@gmail.com','Colombia','2025-03-17 10:38:41','2025-07-21 11:25:58',1),
  ('abe902f3-be62-436b-a1d6-15ccddae008f','tirs096','tirs096@gmail.com','Colombia','2025-03-18 09:29:25','2025-04-13 11:22:58',1),
  ('6b7aa61c-541e-4fd7-a29f-da7c8c16ea43','kmanriquemaldonado','katia.manriquem@gmail.com',NULL,'2025-03-18 14:42:27','2025-04-01 23:13:05',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d4f57c43-258c-44e2-bcce-33e0719cb01e','icontaplus','aulanuevatutor@gmail.com','Colombia','2025-03-19 11:26:01','2025-03-19 11:28:32',1),
  ('cb95e9ed-d889-49ed-9bc8-a79e55147ea9','halvarezalvarez','haroldalvareza@gmail.com',NULL,'2025-03-19 19:44:55','2025-03-19 19:44:55',1),
  ('72bb1a4c-d130-42ed-af44-03a896f0962b','rjimenezaguirre','elaumanizales@gmail.com',NULL,'2025-03-19 19:48:43','2025-03-19 19:48:43',1),
  ('08ca9e52-4abd-4860-b3ee-3a78b1a3cb0c','cospinazapata','cmario.ospina@udea.edu.co',NULL,'2025-03-19 19:59:22','2025-03-19 19:59:22',1),
  ('7aa6f921-2f90-4d87-a77c-46d243f483f1','cbarriosalvarez','claudiabarrios@javerianacali.edu.co',NULL,'2025-03-19 20:02:51','2025-03-19 20:02:51',1),
  ('fd2afbc9-f3d2-42ce-9c33-e4cf19c8cf7d','rtrevinogonzalez','a00600233@tec.mx',NULL,'2025-03-21 08:21:25','2025-03-25 00:19:14',1),
  ('4a7e720c-a40e-4255-b5bd-63b2dd3c511e','sheenapalumbo','sheena.palumbo@gmail.com','Australia','2025-03-27 00:51:54','2025-03-27 00:51:55',0),
  ('d96249bb-376c-45a3-a1c8-723bfcb57246','lorriechirnside','lorriechirnside@sbcglobal.net','Benin','2025-03-27 01:18:01','2025-03-27 01:18:01',0),
  ('6d931491-00d3-40b3-975d-698ea07ea61b','lilychrist79','lilychrist@bol.com.br','Caribbean NL','2025-03-27 01:21:49','2025-03-27 01:21:49',0),
  ('a0542d6f-cad0-41bf-b393-9561e6af17ef','dottyoshea5','dottyoshea@bol.com.br','Turkey','2025-03-27 08:16:55','2025-03-27 08:16:55',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2c94d541-55b2-4d53-8987-7dd2c61c16bf','maca1411','maca.ingenieriayconstrucciones@gmail.com','Colombia','2025-03-27 12:16:05','2025-06-23 13:11:44',1),
  ('d106ed8c-e0a3-421f-b92e-b6a57558f4c7','sangbolick53650','sang.bolick@verizon.net','St Vincent','2025-03-27 14:32:28','2025-03-27 14:32:28',0),
  ('b53764ea-dc75-4656-90bb-797574da901c','erinwilhoite53','erin.wilhoite@yahoo.fr','Western Sahara','2025-03-27 18:05:36','2025-03-27 18:05:36',0),
  ('0e1d11b6-c18a-4c8f-9e7c-8b49c164d23f','jannneblett001','jannneblett@yahoo.fr','Trinidad & Tobago','2025-03-27 21:17:03','2025-03-27 21:17:03',0),
  ('62d0e487-ddc6-472b-bca0-9533f068f6d4','wadeguffey043','wadeguffey@terra.com.br','Austria','2025-03-27 21:46:59','2025-03-27 21:46:59',0),
  ('71645372-11b5-4a94-aec4-96273b6e318a','kaseybuntine8','kaseybuntine@gmail.com','Kenya','2025-03-28 01:39:24','2025-03-28 01:39:24',0),
  ('855da9f9-d772-41f7-bdcb-e547c457a2d5','etjmaxwell','maxwellgalvez@sbcglobal.net','Australia','2025-03-28 04:02:16','2025-03-28 04:02:16',0),
  ('4dc35d8d-cf0c-4677-90d1-a21580c07d50','richardhaddock6','richardhaddock@gmail.com','Greece','2025-03-28 06:13:37','2025-03-28 06:13:37',0),
  ('e43283c1-e03f-4c06-9bcd-bddf940ee921','loren50f57','lorencerutty@orange.fr','Macau','2025-03-28 07:28:22','2025-03-28 07:28:22',0),
  ('47182cb1-8bba-489c-bde7-a9c215f0dcb7','ucokbetuwc','concettaacevedo@gmail.com','Ukraine','2025-03-28 10:43:46','2025-03-28 10:43:47',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('cb5920bb-996a-4fae-b8a4-349da4dd6c70','whzkandis74139','kandis_forlonge@aol.com','Iran','2025-03-28 11:06:27','2025-03-28 11:06:27',0),
  ('781f969d-5b15-419f-a93d-961d0a7325ff','jaysonvisconti','jayson.visconti@hotmail.co.uk','Malta','2025-03-28 12:39:39','2025-03-28 12:39:39',0),
  ('838a7fa1-775c-4ff1-bee7-78517555d44e','ser','diazsert@gmail.com','Colombia','2025-03-28 13:21:47','2025-03-28 13:21:47',1),
  ('6426f1bd-23f9-4fc6-8a26-d496c4683b56','derekfairweather','derekfairweather@hotmail.com','Bahamas','2025-03-28 13:48:31','2025-03-28 13:48:31',0),
  ('f5234598-427e-43ec-a6f6-f4b34dcd2d07','sqksusanne','susanne.mansom@web.de','Lesotho','2025-03-28 22:18:36','2025-03-28 22:18:36',0),
  ('5bef2d6c-c3ce-4efb-a355-a793d0f9cf7a','lavernepruitt','lavernepruitt@yahoo.com','French Guiana','2025-03-28 22:41:42','2025-03-28 22:41:43',0),
  ('f656db7e-ec8b-4124-a11c-f594439b6e08','thqpaulina','paulinafoulds@live.com','Australia','2025-03-29 01:26:26','2025-03-29 01:26:26',0),
  ('33ebebd0-dea9-44ba-93dd-3e0ba3800446','jeanettc20','jeanett.sheridan@yahoo.com','French Guiana','2025-03-29 02:54:37','2025-03-29 02:54:37',0),
  ('9cd8af3c-db32-4308-8270-d97a7c0bcb92','mzsleonie87140','leonieshrader@hotmail.com','Australia','2025-03-29 03:24:38','2025-03-29 03:24:38',0),
  ('64bedf53-8d80-4f6e-b5f0-5ceffa466d1c','irwint8216059','irwin_courtney@hotmail.fr','French Guiana','2025-03-29 05:15:23','2025-03-29 05:15:23',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('965bbb98-4759-42bc-b560-5590964ae818','kennithochs0','kennithochs@hotmail.fr','Bouvet Island','2025-03-29 09:19:08','2025-03-29 09:19:08',0),
  ('81bbecd7-9741-416e-91a2-e4b0f63c1460','malcolmesmond60','malcolmesmond@gmail.com','Germany','2025-03-29 09:33:57','2025-03-29 09:33:57',0),
  ('5f8907ff-168e-4b3a-b343-e36abc53d781','madonnajustus24','madonna_justus@cox.net','Uruguay','2025-03-29 09:44:38','2025-03-29 09:44:38',0),
  ('7603b1db-7a93-4844-a545-c2d98e33ab23','allisonlabarbera','allisonlabarbera@ymail.com','St Maarten (Dutch)','2025-03-29 15:31:12','2025-03-29 15:31:13',0),
  ('834e6b29-2ac3-4e5c-ad8f-5ade0c2b012a','kelseysherman46','kelseysherman@verizon.net','South Georgia & the South Sandwich Islands','2025-03-29 16:21:11','2025-03-29 16:21:11',0),
  ('09ba4e22-318c-4bab-8576-eb7f0f6729ab','carolemcwilliam','carole.mcwilliam@neuf.fr','French Guiana','2025-03-29 16:33:52','2025-03-29 16:33:52',0),
  ('b44774df-4f56-4a88-9147-4b97a9551b41','caseystelzer475','casey_stelzer@yahoo.es','Uruguay','2025-03-29 17:39:56','2025-03-29 17:39:56',0),
  ('904825b2-3f63-42e0-a7da-95fd5c03a118','carriwan7612193','carri.wan@gmail.com','Indonesia','2025-03-29 18:15:42','2025-03-29 18:15:42',0),
  ('b8a52fe8-4d0d-4c2a-bf41-eeaa9d26c1f5','nolanjoy090123','nolan_joy@yahoo.com','Hong Kong','2025-03-29 18:31:27','2025-03-29 18:31:28',0),
  ('3df160e9-37f6-42b7-9acd-d195b46ee09d','jamilafrick381','jamilafrick@gmail.com','Haiti','2025-03-30 01:38:32','2025-03-30 01:38:33',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('65f7aa2f-43a3-43ea-9887-14cc91661787','jolenecenteno','jolenecenteno@verizon.net','Korea (North)','2025-03-30 06:24:45','2025-03-30 06:24:45',0),
  ('afd01f2c-44a3-4725-9c1d-fb0c89fd86b7','blanchesturgeon','blanche.sturgeon@yahoo.de','French Guiana','2025-03-30 11:50:13','2025-03-30 11:50:13',0),
  ('9625a7ef-4169-4c23-88ce-fd6052ed8941','porfiriotreat','porfirio.treat@aol.com','Australia','2025-03-30 12:33:04','2025-03-30 12:33:05',0),
  ('e0d4e519-2fcd-4224-b22c-f6a3bcee1a5c','winnieparadis','winnieparadis@gmail.com','Belarus','2025-03-30 14:04:14','2025-03-30 14:04:14',0),
  ('f263d74a-1d32-479d-814f-7981eb437376','kristinktu','kristinsimonetti@gmail.com','Caribbean NL','2025-03-30 16:48:50','2025-03-30 16:48:50',0),
  ('110a3f22-3515-4c9b-a972-04ba4e0884a4','krisshipp86918','krisshipp@yandex.ru','Mali','2025-03-30 18:44:55','2025-03-30 18:44:55',0),
  ('aa467277-c651-482f-9683-109f372edb36','heriberto72u','heribertosellheim@aol.com','Australia','2025-03-31 04:56:30','2025-03-31 04:56:30',0),
  ('b0664943-fac0-478f-b221-c10fd3172d07','edisonhutchings','edisonhutchings@yahoo.it','Syria','2025-03-31 08:05:23','2025-03-31 08:05:23',0),
  ('a85df8a8-52c1-4a83-b198-fa4c63845a83','gmartinezpino','gmartinez@unicauca.edu.co',NULL,'2025-03-31 09:56:05','2025-03-31 09:56:05',1),
  ('e50c029c-d252-4d6e-89d4-004ce26b1c8e','ralfhandt08452','ralfhandt@rocketmail.com','Bulgaria','2025-03-31 09:56:41','2025-03-31 09:56:41',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5514b251-e0b5-442b-839e-47b9437983cd','hbetancurlopez','hdbetancur@udemedellin.edu.co',NULL,'2025-03-31 09:59:33','2025-03-31 09:59:33',1),
  ('49941e00-8c26-451e-bf8e-87cd39975bf4','edisonsullivan','edison.sullivan@rambler.ru','Austria','2025-03-31 11:45:29','2025-03-31 11:45:29',0),
  ('c95ceece-54e5-40ee-aabb-247265d5a8ed','rloaizagarcia','rodrigo.loaiza@medellin.gov.co',NULL,'2025-03-31 12:05:22','2025-03-31 12:05:22',1),
  ('472a4004-a33d-4b8d-8157-5128165485c8','braindemole14','braindemole@gmail.com','French Guiana','2025-03-31 14:08:06','2025-03-31 14:08:06',0),
  ('bd3dc891-724c-4dc1-8c00-18b40f8e33a3','melvamccoy','melvamccoy@cox.net','Canada','2025-03-31 15:26:39','2025-03-31 15:26:39',0),
  ('41794b37-ebff-4933-9c25-e3d1798f6cf2','luzoxendine4041','luzoxendine@gmail.com','Austria','2025-03-31 20:00:32','2025-03-31 20:00:32',0),
  ('ba907e15-5676-4813-b257-1bd93a1d8898','ottocarstensen','ottocarstensen@libero.it','Austria','2025-03-31 20:42:13','2025-03-31 20:42:13',0),
  ('0a82f609-63b5-41a3-8436-4f64321dc510','bettyliony','haidalbertis@gmail.com','Venezuela','2025-03-31 21:13:04','2025-03-31 21:13:04',0),
  ('4feac345-0ebd-4eb7-96e7-dfd9df233551','maziemallory8','maziemallory@yahoo.com','French Guiana','2025-03-31 22:20:55','2025-03-31 22:20:55',0),
  ('78e7a9e7-28e2-4a37-b7b7-0d1ce5963dd6','traciedivine','traciedivine@bol.com.br','Åland Islands','2025-03-31 22:37:07','2025-03-31 22:37:07',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2ed1c3a8-6b19-498b-a84b-317488d27e50','gregcasteel3','gregcasteel@yahoo.com','Libya','2025-04-01 01:38:10','2025-04-01 01:38:10',0),
  ('4e4b51e8-5d55-4e8e-901a-3a53827250c2','vernitacambell1','vernitacambell@gmail.com','Falkland Islands','2025-04-01 09:20:25','2025-04-01 09:20:25',0),
  ('c3c9b166-4ad1-4235-b021-cb4722ea3c9d','veronicauwy','veronicamontes@gmail.com','United States','2025-04-01 14:00:17','2025-04-01 14:00:17',0),
  ('7c31b856-ab48-4194-af1c-a6fcccd1402a','adolfo03y35279','adolforide@gmail.com','Guernsey','2025-04-01 16:37:20','2025-04-01 16:37:20',0),
  ('0795fea7-a8e6-4d50-b9de-f00b83ebdc05','peggyebersbach1','peggy.ebersbach@gmail.com','Ethiopia','2025-04-01 17:57:26','2025-04-01 17:57:26',0),
  ('b33002d7-7d78-4a54-b2ef-061877bc9136','coreyhealy62','coreyhealy@gmail.com','Guinea-Bissau','2025-04-01 23:18:25','2025-04-01 23:18:25',0),
  ('a67e2edc-484e-4c45-a68e-eaaf9f48c29b','eveholley713','eveholley@yahoo.com','Eritrea','2025-04-02 01:39:17','2025-04-02 01:39:17',0),
  ('4e5dd368-3cf5-4916-8eec-57785c8b2520','valwhittle53','valwhittle@gmail.com','Vietnam','2025-04-02 08:30:59','2025-04-02 08:31:00',0),
  ('4b8fd2f9-f9e6-4cf0-b1b4-bbd4026c5ef8','chantebauer71','chantebauer@hotmail.com','Austria','2025-04-02 10:32:46','2025-04-02 10:32:46',0),
  ('21e698cd-7a44-45c7-a63b-30755da3619f','emilythpaola1','paovarpa@gmail.com','Colombia','2025-04-02 12:16:26','2025-04-02 12:17:26',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7043adf1-369b-4ed3-af90-85e3fd6fdd88','jamichisolm6','jami_chisolm@free.fr','Laos','2025-04-03 00:52:31','2025-04-03 00:52:31',0),
  ('fa0a0afd-db73-4611-8263-dc7a03e1fe69','rosswardell88','rosswardell@yahoo.com','Taiwan','2025-04-03 01:41:58','2025-04-03 01:41:58',0),
  ('13178040-85bf-445e-8eb9-4902d79b461c','sallypulleine73','sallypulleine@yahoo.com','Korea (North)','2025-04-03 01:53:17','2025-04-03 01:53:17',0),
  ('914375eb-d099-458d-a6e2-de1a18c2db87','merlinhedgepeth','merlinhedgepeth@hotmail.com','Finland','2025-04-03 03:35:18','2025-04-03 03:35:18',0),
  ('c0c1a180-f9f2-4eb3-a676-70a3a5444049','theresawilkinson','theresawilkinson@msn.com','Heard Island & McDonald Islands','2025-04-03 03:54:37','2025-04-03 03:54:37',0),
  ('112d59a2-a626-4382-9750-3536c5349651','toddbatson12932','toddbatson@gmail.com','Madagascar','2025-04-03 06:11:08','2025-04-03 06:11:08',0),
  ('9af14bee-8a43-4eea-a05a-1321b886e897','aleciahoolan','alecia.hoolan@wanadoo.fr','Lesotho','2025-04-03 18:16:10','2025-04-03 18:16:10',0),
  ('010aaf44-3416-4bcd-acff-a69d3df217f2','isiskaplan54706','isiskaplan@yahoo.com','Norway','2025-04-04 02:08:00','2025-04-04 02:08:00',0),
  ('01ab40ab-15c2-415e-af9e-4bca094db775','milfordkerferd','milford.kerferd@rediffmail.com','Kyrgyzstan','2025-04-04 04:56:05','2025-04-04 04:56:05',0),
  ('4c46df78-55bf-47c6-8635-a22b5c9df720','raeshaffer24','raeshaffer@hotmail.co.uk','Australia','2025-04-04 07:42:11','2025-04-04 07:42:11',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('acd1775b-757e-4881-9f69-a560894f2d53','paulobryancarval','paulobryancarvalho@hotmail.co.uk','Australia','2025-04-04 12:31:25','2025-04-04 12:31:25',0),
  ('060d7884-4547-42bb-a1d0-51347a416d25','sonjabnd393449','sonjadisney@msn.com','Ukraine','2025-04-04 13:52:37','2025-04-04 13:52:38',0),
  ('278e6c5e-175f-41ef-8277-358fbbe842ee','jmoraalvarez1','jmoraalvarez@mail.uniatlantico.edu.co',NULL,'2025-04-04 16:41:09','2025-04-04 16:41:09',1),
  ('bc42aa51-d1df-40ed-bc8a-8fb52f742e29','hymanmaudsley62','hymanmaudsley@yahoo.es','Equatorial Guinea','2025-04-04 17:11:53','2025-04-04 17:11:53',0),
  ('92249d1c-4daa-4e7d-9812-6f71e10ce51e','avisstone367','avis.stone@rambler.ru','Micronesia','2025-04-04 19:46:27','2025-04-04 19:46:27',0),
  ('0b8be1c2-0349-495e-b775-766fda965906','krislanglands','krislanglands@gmail.com','United States','2025-04-04 19:57:44','2025-04-04 19:57:44',0),
  ('5dfc3334-2962-4597-9138-fd30bec60149','nyfross1544205','rosswaddy@hotmail.fr','Austria','2025-04-05 08:38:13','2025-04-05 08:38:13',0),
  ('584a8f5a-0479-434e-8f2d-48a0201d2640','selenegrey5358','selene.grey@yahoo.com.au','Haiti','2025-04-05 10:44:41','2025-04-05 10:44:41',0),
  ('af9801e6-c2ac-4698-a10f-e7fc1bc88017','alexandramyres5','alexandramyres@yahoo.fr','Uzbekistan','2025-04-05 10:53:28','2025-04-05 10:53:29',0),
  ('d8e71143-c69a-4e01-a845-07c35831214e','twylamurdock','twyla.murdock@mail.ru','Zambia','2025-04-05 11:10:30','2025-04-05 11:10:30',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2a3b80df-f11c-46f6-b3cf-fc7933126e24','lashawndaseagle','lashawndaseagle@cox.net','Guam','2025-04-05 13:22:26','2025-04-05 13:22:26',0),
  ('89fc62e3-2257-4ead-8207-a2ef06069b14','leandramansour','leandra.mansour@msn.com','Nigeria','2025-04-05 22:17:11','2025-04-05 22:17:12',0),
  ('0cf425b4-a568-4961-926e-2a2fc1654b00','gloriarupert70','gloriarupert@yahoo.com','Singapore','2025-04-06 03:32:26','2025-04-06 03:32:26',0),
  ('03b1a986-2fa5-41cf-95af-4eb696be0041','kimhalcomb94012','kimhalcomb@hotmail.fr','Slovenia','2025-04-06 08:45:46','2025-04-06 08:45:46',0),
  ('2217a997-fa7f-4bbc-8828-d371eb7515dd','brittcoffill07','britt_coffill@yahoo.com','Australia','2025-04-06 12:05:00','2025-04-06 12:05:00',0),
  ('55ea13b4-bba0-45e0-b7dd-05c7ede89cf9','genet5303693380','genebettington@gmail.com','Malta','2025-04-06 21:05:56','2025-04-06 21:05:56',0),
  ('f3003f52-b8bc-4bd0-b5d1-a1eac1ffba6e','edgardosundberg','edgardosundberg@gmail.com','Liberia','2025-04-07 02:29:24','2025-04-07 02:29:24',0),
  ('81d3c624-b7d3-42ee-b409-88b5d85ac458','ryankrebs8927','ryankrebs@yahoo.com','Bahamas','2025-04-07 06:02:26','2025-04-07 06:02:26',0),
  ('7a6d47a0-14b8-40cb-aee1-9b191a44f579','tqjernesto','ernestolanders@live.co.uk','Turks & Caicos Is','2025-04-07 09:08:56','2025-04-07 09:08:56',0),
  ('9d5f1171-d29a-45a3-9751-3e944c1a0f41','charlimorrissey','charlimorrissey@yahoo.com','Turkey','2025-04-07 09:38:56','2025-04-07 09:38:56',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7b00817e-1aae-4bc4-8e4c-148112ac9e56','vickylandry09','vickylandry@hotmail.com','French Guiana','2025-04-07 09:45:18','2025-04-07 09:45:18',0),
  ('57a38861-4b70-4557-b0dd-8e70c337110b','rainaarroyo2','rainaarroyo@gmail.com','Australia','2025-04-07 13:02:29','2025-04-07 13:02:29',0),
  ('e82c24d1-c1ba-40bd-87fd-6e494e62b70d','florentinagonsal','florentina_gonsalves@gmail.com','Denmark','2025-04-07 15:54:09','2025-04-07 15:54:09',0),
  ('87951b92-56db-4892-a524-bf5946eb3fcc','edwinhuber72','edwinhuber@live.co.uk','French Guiana','2025-04-07 16:44:45','2025-04-07 16:44:45',0),
  ('c78622a6-8ed2-4424-84c2-584c9b392ae3','annettbraxton','annett.braxton@gmail.com','Madagascar','2025-04-07 23:22:38','2025-04-07 23:22:38',0),
  ('cc99973b-a111-4be2-93f6-ee8b17ee5cac','harriettulm','harriettkeck@yahoo.com','Austria','2025-04-08 19:18:42','2025-04-08 19:18:42',0),
  ('8c5af229-8a54-4bd3-84bc-63fab46da51c','jeffery04q','jeffery.buring@gmail.com','Comoros','2025-04-09 20:42:51','2025-04-09 20:42:51',0),
  ('0767ac02-9631-45d9-8a13-f86c5b19b283','suzette08v','suzette.weekes@msn.com','Burundi','2025-04-10 02:15:46','2025-04-10 02:15:46',0),
  ('50981c93-c67e-450b-89e3-920acb5a0c4c','charityfoland','charityfoland@yahoo.com','St Lucia','2025-04-10 12:15:48','2025-04-10 12:15:48',0),
  ('1105436d-d560-42fd-9e5f-d4d7ac55a2a1','samuel_quintero','samuel_quintero95251@elpoli.edu.co','Colombia','2025-04-10 13:00:13','2025-04-10 13:00:45',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('9c5297cc-df03-4935-96ea-43899ea5e57f','lenora35e886','lenora_kroll@aol.com','Christmas Island','2025-04-10 14:46:12','2025-04-10 14:46:13',0),
  ('eacfc5e0-ef5d-4f1b-9767-a50014b9faeb','valerielxl','valeriemakowski@cox.net','Australia','2025-04-11 10:53:18','2025-04-11 10:53:18',0),
  ('2e34e5b3-531b-4adc-8802-1799dba009f2','nuriadescalzor','ndescalzo@ubu.es',NULL,'2025-04-11 11:47:20','2025-09-23 02:38:05',1),
  ('a7d9bebd-5ddc-4189-85ee-bd264adac85a','brennachatfield','brenna.chatfield@hotmail.com','St Helena','2025-04-12 01:21:48','2025-04-12 01:21:48',0),
  ('f19c0f30-6d20-4fac-a6de-72e95f22e5bf','rosiea2363711981','rosieannunziata@alice.it','French Guiana','2025-04-12 07:46:06','2025-04-12 07:46:06',0),
  ('f27cab11-c037-4ce0-8a8e-705de7ae483f','klausfauver3','klaus.fauver@hotmail.es','Switzerland','2025-04-12 08:13:43','2025-04-12 08:13:43',0),
  ('221f5323-13b4-4ed7-8a80-0a92339e458b','melaineboles','melaine_boles@hotmail.co.uk','Congo (Rep.)','2025-04-12 09:08:43','2025-04-12 09:08:43',0),
  ('ad195e1e-4706-47dc-9a79-1238dcfdbd54','marylindonaghy7','marylindonaghy@gmail.com','Central African Rep.','2025-04-12 10:21:32','2025-04-12 10:21:32',0),
  ('d247f148-abde-4287-9f7e-f1a616a6738a','nampeeples54','nam_peeples@yandex.ru','Madagascar','2025-04-12 12:21:51','2025-04-12 12:21:51',0),
  ('2ded6955-6669-4924-8c06-f44a21a61c09','christalkyte10','christalkyte@yahoo.it','French Polynesia','2025-04-12 13:51:39','2025-04-12 13:51:39',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ebcfb0c7-5462-4ec1-a085-608e2f167234','patroby028605','patroby@yahoo.it','Australia','2025-04-12 17:50:55','2025-04-12 17:50:55',0),
  ('bd32beeb-5ec4-41ba-85a0-45700d47096a','jeannek70481470','jeannecanchola@bellsouth.net','Hong Kong','2025-04-12 18:44:15','2025-04-12 18:44:15',0),
  ('41da9810-54bb-4504-918c-8af82f795712','janniefernie729','janniefernie@yahoo.com.br','Bulgaria','2025-04-12 21:34:49','2025-04-12 21:34:49',0),
  ('392ce2ab-8bac-4ab3-b2f3-0a9bfc18b09a','kristina35d','kristinakortig@yahoo.com','Virgin Islands (UK)','2025-04-13 05:56:52','2025-04-13 05:56:52',0),
  ('2f229272-d614-4ead-9317-489869ac0144','marielchilde04','marielchilde@gmail.com','French Guiana','2025-04-13 06:58:36','2025-04-13 06:58:36',0),
  ('31f002ed-9181-4b3f-a1e6-a1c8f262feec','pablostruthers','pablostruthers@gmail.com','Niger','2025-04-13 09:32:40','2025-04-13 09:32:40',0),
  ('b90dd5ee-dc16-402e-8f72-e2414214e7c4','ckssilas5820782','silastellez@yahoo.com','United States','2025-04-13 12:48:42','2025-04-13 12:48:42',0),
  ('a8a323fa-4382-4bda-ade8-58283436de88','carriingalls42','carriingalls@gmail.com','Georgia','2025-04-13 13:55:34','2025-04-13 13:55:34',0),
  ('e24c6fdb-467b-4cfe-953c-c76d4b099492','elanebreland','elanebreland@gmail.com','Sri Lanka','2025-04-13 20:10:44','2025-04-13 20:10:44',0),
  ('f96c8c3f-eb42-4066-87a8-f38c605e1878','bevbosisto0490','bev_bosisto@orange.fr','Syria','2025-04-14 03:59:23','2025-04-14 03:59:23',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('0f800fe6-4eee-4275-b740-6ad52d2afe18','loishawkins2','loishawkins@uol.com.br','French Guiana','2025-04-14 13:00:18','2025-04-14 13:00:18',0),
  ('48a594c4-b01e-4dc3-80bd-278e88c895e2','holleytrost','holleytrost@gmail.com','Saudi Arabia','2025-04-15 04:30:16','2025-04-15 04:30:16',0),
  ('4c8c2987-bd78-4036-a5dc-dd5193bfbbc6','romeomcphillamy','romeomcphillamy@hotmail.fr','Macau','2025-04-15 15:54:11','2025-04-15 15:54:11',0),
  ('5f840514-a93e-491b-b55a-75127269378d','karissacvg','karissacardell@hotmail.com','Mexico','2025-04-15 18:12:27','2025-04-15 18:12:27',0),
  ('43814379-9c42-40c3-87c4-f4fa59c98be3','dessiedeasey700','dessiedeasey@hotmail.com','St Martin (French)','2025-04-15 20:45:01','2025-04-15 20:45:01',0),
  ('acd9357b-88e5-46ba-ab86-f3f2ce53a0e2','loreencaro125','loreencaro@gmail.com','Bangladesh','2025-04-15 23:12:25','2025-04-15 23:12:25',0),
  ('5fbd0bcf-b5db-4441-9e41-443c34fbc839','adolph1725','adolph.hodel@hotmail.com','Maldives','2025-04-16 04:34:37','2025-04-16 04:34:37',0),
  ('7871220d-8637-4197-803f-450b334f6ffd','beauglaser4604','beauglaser@uol.com.br','Eritrea','2025-04-17 01:31:37','2025-04-17 01:31:37',0),
  ('a16504fc-aa4b-4e2e-871c-486f6102d175','simaramirez','simaramirez@hotmail.fr','French Guiana','2025-04-17 05:25:31','2025-04-17 05:25:31',0),
  ('a7eaaa9a-2186-4f7e-9af0-4bc410589130','fuzlandon5570','landon.mcgruder@gmail.com','Montenegro','2025-04-17 08:32:15','2025-04-17 08:32:15',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4ef625cc-c33c-4df9-9d78-a18ab343980c','adriannagillette','adriannagillette@yahoo.fr','Netherlands','2025-04-17 10:44:17','2025-04-17 10:44:17',0),
  ('4ecdec64-daef-4147-8839-afb1d1370e6d','reneloche274506','reneloche@sfr.fr','Australia','2025-04-17 13:42:05','2025-04-17 13:42:05',0),
  ('bb7da927-eb8f-4f28-abc5-eb43bfdde110','christinemcarthu','christinemcarthur@gmail.com','Austria','2025-04-17 23:51:26','2025-04-17 23:51:26',0),
  ('5b589361-cbd2-40c2-a295-e3eb4dafd315','philipdobbie883','philip.dobbie@aol.com','Antigua & Barbuda','2025-04-18 04:19:52','2025-04-18 04:19:52',0),
  ('212e1572-138c-4f67-baaa-e4f115c546e9','ferdinandvandorn','ferdinandvandorn@hotmail.com','French Guiana','2025-04-18 09:07:10','2025-04-18 09:07:10',0),
  ('3a9b2787-3625-4aca-aaa9-7e43e206d877','sauldubin78506','sauldubin@ymail.com','St Maarten (Dutch)','2025-04-18 12:21:10','2025-04-18 12:21:10',0),
  ('5d890fcc-a2e3-4de5-92c5-0a6a58455500','joshuaconner87','joshuaconner@comcast.net','Austria','2025-04-18 13:29:01','2025-04-18 13:29:01',0),
  ('904485c2-7105-40b2-b4f7-afffc4861926','florentinapocock','florentinapocock@cox.net','Réunion','2025-04-18 17:05:24','2025-04-18 17:05:24',0),
  ('16a793c7-7414-43ab-bb16-719228561cac','ismaelg309409171','ismael.sabella@mail.ru','Lesotho','2025-04-18 18:57:30','2025-04-18 18:57:30',0),
  ('85b381af-5874-4f8c-884f-8f455fe1c502','norrisnestor3','norris_nestor@gmail.com','Australia','2025-04-18 19:31:15','2025-04-18 19:31:15',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d8517e7e-17d1-4474-9c1f-26372a705251','georginafitzsimo','georginafitzsimons@gmail.com','Samoa (American)','2025-04-19 01:51:06','2025-04-19 01:51:06',0),
  ('c40d00f4-f835-4098-be01-cbf36c043cd1','catherinebruntne','catherinebruntnell@gmail.com','French Guiana','2025-04-19 03:08:24','2025-04-19 03:08:24',0),
  ('5c2b5381-2ef5-4d01-8213-a017badeeda6','galebitner94','galebitner@gmx.de','Samoa (American)','2025-04-19 12:17:29','2025-04-19 12:17:29',0),
  ('14cf04d8-aa88-47e8-b12b-022372a9fbba','elvahatten846','elvahatten@mail.ru','Australia','2025-04-19 23:44:22','2025-04-19 23:44:22',0),
  ('a285f5c0-64a1-402e-b197-4d1a41974c26','layheike4244','heikemargolin@bellsouth.net','Bermuda','2025-04-20 05:07:10','2025-04-20 05:07:10',0),
  ('32e1965a-353a-4d63-92da-aa840203a11b','mitch3842304071','mitchsalier@free.fr','North Macedonia','2025-04-20 07:13:14','2025-04-20 07:13:14',0),
  ('c19bce16-aab6-4afa-af67-652d76638e03','gwenchaffey2715','gwen.chaffey@yahoo.de','Vatican City','2025-04-20 11:04:41','2025-04-20 11:04:41',0),
  ('9615447f-c792-4fd8-b4b1-b779b705c591','sherrye6641','sherrygreenham@yahoo.com','French Guiana','2025-04-20 21:15:31','2025-04-20 21:15:31',0),
  ('6668bd13-8d80-4ee5-a3c9-b0b094192142','edwinlongmore','edwinlongmore@aol.com','Austria','2025-04-21 03:56:20','2025-04-21 03:56:20',0),
  ('e3a7dd0d-708f-4001-9fcb-1e1e1af5bf49','madonnaweedon9','madonnaweedon@yahoo.com','French Guiana','2025-04-21 04:21:24','2025-04-21 04:21:24',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('199b9163-71b7-4ec8-be70-20f775f01958','landonbutcher','landonbutcher@gmail.com','Cyprus','2025-04-21 05:59:34','2025-04-21 05:59:34',0),
  ('4fdad4d3-7674-4527-9990-aef02a293483','joeannchumleigh','joeannchumleigh@mail.ru','Congo (Rep.)','2025-04-21 06:43:24','2025-04-21 06:43:24',0),
  ('fbaea2a1-0c2c-4e42-ae8d-f9e045461be8','merleclemmons1','merle_clemmons@yahoo.in','Colombia','2025-04-21 10:27:49','2025-04-21 10:27:49',0),
  ('9e7ad8a6-85c7-4c8f-a5bf-3bfd71361f85','karissapope9844','karissapope@yahoo.co.uk','Argentina','2025-04-21 12:20:44','2025-04-21 12:20:44',0),
  ('a05e09da-01f0-4fe0-88d4-5e0dd588afa4','broderick98u','broderickpither@yahoo.com','Central African Rep.','2025-04-21 15:43:12','2025-04-21 15:43:12',0),
  ('7a6c56b5-5570-463b-8dbf-63d3a8ffdc0c','gabrielbreton','gabrielbreton@gmail.com','Aruba','2025-04-21 16:56:45','2025-04-21 16:56:45',0),
  ('aaa72650-1572-4fd6-88b6-a39eaa4f0594','corineshears6','corineshears@yahoo.com','Virgin Islands (US)','2025-04-21 17:21:25','2025-04-21 17:21:25',0),
  ('dbe7b192-b13b-41b1-ab67-5e34aeac26a6','stanleygay43','stanley_gay@yahoo.com','Australia','2025-04-21 20:52:35','2025-04-21 20:52:35',0),
  ('3d6582c5-5a87-411f-936a-2d9df26471cd','genesisfpz','genesis_adams@gmx.de','Sierra Leone','2025-04-22 06:09:11','2025-04-22 06:09:11',0),
  ('751b2a3b-34a1-40c8-9232-563143d41a9f','sunggillespie','sunggillespie@cox.net','Sweden','2025-04-22 09:38:57','2025-04-22 09:38:57',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('9a8245b5-77e4-459f-9eca-b8fab89e2042','rafaeldortch9','rafaeldortch@yahoo.com','Tanzania','2025-04-22 22:09:41','2025-04-22 22:09:41',0),
  ('2b28301d-881e-4ba9-86db-be8411e5a832','ronaldzvd5171787','ronald_spellman@gmail.com','Argentina','2025-04-22 23:27:19','2025-04-22 23:27:19',0),
  ('22859712-d48c-4cfd-8053-18b535ac7833','corinnebarnhill','corinnebarnhill@mail.ru','Denmark','2025-04-23 00:00:07','2025-04-23 00:00:07',0),
  ('747190be-ed58-45ed-b41e-a3062cf98aa7','michealmacpherso','micheal.macpherson@gmail.com','Sudan','2025-04-23 06:41:44','2025-04-23 06:41:44',0),
  ('f231ae7a-c541-4b44-bbc8-a2b32538e113','theoconstant073','theoconstant@libero.it','Austria','2025-04-23 10:51:09','2025-04-23 10:51:09',0),
  ('e18bdc0d-a7f8-45ef-9d44-7469b83d514e','margueritejuarez','marguerite_juarez@facebook.com','Australia','2025-04-23 21:15:33','2025-04-23 21:15:33',0),
  ('c6e98a17-bf6b-40c2-90bf-c2d9df804eca','andersoncurtis2','andersoncurtis@gmail.com','Australia','2025-04-24 01:28:52','2025-04-24 01:28:52',0),
  ('02ad7885-f472-4af6-9a98-a1dcfbc3a2ce','robroger974','rob_roger@gmail.com','Tunisia','2025-04-24 03:32:49','2025-04-24 03:32:49',0),
  ('f139afd1-d0f1-4c10-92da-87454018583d','dwainbamford28','dwainbamford@aol.com','Philippines','2025-04-24 15:37:28','2025-04-24 15:37:28',0),
  ('59a28b44-6fcb-4697-ad0f-754cbd2d19a4','terrancefoskett','terrancefoskett@yahoo.it','Lesotho','2025-04-24 16:21:59','2025-04-24 16:21:59',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e0b9c8a7-76fd-4e96-a151-04699204edfe','wrvangelica','angelica.yoo@gmail.com','Madagascar','2025-04-24 17:55:21','2025-04-24 17:55:21',0),
  ('e0abcaac-2fc5-4267-9570-531ecb145ea8','juliannebrookfie','juliannebrookfield@gmail.com','Bulgaria','2025-04-24 23:11:40','2025-04-24 23:11:40',0),
  ('e9f5e628-aeba-4e8a-9b5c-12b5961f862d','florrieseely675','florrieseely@rediffmail.com','Netherlands','2025-04-25 04:32:35','2025-04-25 04:32:35',0),
  ('f6c1cc64-4a83-4ca2-8b36-0d098ec5df9d','claynegron','clay.negron@alice.it','Taiwan','2025-04-25 06:48:48','2025-04-25 06:48:48',0),
  ('4aaed72b-9fd0-4b55-9092-2d6d27c1a173','aidantripp812','aidantripp@gmail.com','New Zealand','2025-04-25 10:36:06','2025-04-25 10:36:06',0),
  ('605c5d7a-6220-473d-96f6-1864f00c1413','charlialicea650','charlialicea@yahoo.fr','Austria','2025-04-25 11:10:27','2025-04-25 11:10:27',0),
  ('60c48866-80a3-41b9-8c3b-5a7f6fd44441','elihandley9','elihandley@aol.com','Ecuador','2025-04-25 15:18:57','2025-04-25 15:18:57',0),
  ('bfea7328-253d-4217-acc6-bafe8eaca58d','selenarne016357','selena.hinkler@hotmail.co.uk','Ireland','2025-04-25 21:53:54','2025-04-25 21:53:54',0),
  ('db5b5b2a-88db-4f1d-805a-374128539b3f','tajfarncomb1','tajfarncomb@hotmail.com','Moldova','2025-04-26 01:39:46','2025-04-26 01:39:46',0),
  ('ccfd5525-5364-4619-b97f-dc08619ebb75','omargoldsbrough','omargoldsbrough@gmail.com','Austria','2025-04-26 04:02:39','2025-04-26 04:02:39',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8441d864-4ffd-40a8-a6e7-17c5fd13371e','salvatorefeetham','salvatorefeetham@gmx.de','Heard Island & McDonald Islands','2025-04-26 04:59:07','2025-04-26 04:59:07',0),
  ('662677ee-7174-4eec-923d-b49614f32e5b','mckenziehodges','mckenziehodges@facebook.com','Cook Islands','2025-04-26 05:50:29','2025-04-26 05:50:29',0),
  ('0946513e-8cf4-43b6-8ba4-6963097d4d15','marianoartis571','marianoartis@aol.com','Jamaica','2025-04-28 22:01:33','2025-04-28 22:01:33',0),
  ('1fea79ce-ff97-44c6-8d24-7d0dbce4a0a1','kskivory8438','ivoryaleman@comcast.net','Palau','2025-04-29 01:14:14','2025-04-29 01:14:14',0),
  ('3b3e383e-d1f2-45a0-96bd-f35783721dcb','sandraburris684','sandraburris@hotmail.es','Pitcairn','2025-04-29 18:27:16','2025-04-29 18:27:16',0),
  ('f5dd69d5-951d-4247-96e9-d84744099376','rosemarylizotte','rosemarylizotte@live.co.uk','Egypt','2025-04-29 23:28:34','2025-04-29 23:28:34',0),
  ('2e4a42bb-8b05-4412-9334-c0e87f98c1ee','laurenkimpton77','laurenkimpton@alice.it','Svalbard & Jan Mayen','2025-04-30 01:09:34','2025-04-30 01:09:34',0),
  ('97ebcf7e-08b4-4cf2-bf0f-6c0ba8ac6a8d','lucasaiz9116829','lucasaiz@gmail.com','Antarctica','2025-04-30 11:15:53','2025-04-30 11:15:53',0),
  ('5191b99b-1018-43f7-9a77-5339d959097f','javiersherrard','javiersherrard@live.nl','El Salvador','2025-04-30 11:21:23','2025-04-30 11:21:23',0),
  ('f1217a55-3683-41c8-ab47-aa037e478772','laynequinto7512','laynequinto@live.co.uk','French Guiana','2025-04-30 13:22:43','2025-04-30 13:22:44',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('55b18e5f-d235-4db0-ad7b-53a18aea5054','tawnyaschultz27','tawnya_schultz@aol.com','Portugal','2025-04-30 21:24:16','2025-04-30 21:24:16',0),
  ('03032cb4-fd02-4907-b33e-3aa55b541ec3','adriannewienholt','adrianne.wienholt@bigpond.com','Australia','2025-05-01 01:32:10','2025-05-01 01:32:10',0),
  ('14534a8e-53e8-43dc-9d5c-83950ce5d25c','judeoyl122','juderickett@yahoo.in','Curaçao','2025-05-01 11:03:43','2025-05-01 11:03:43',0),
  ('f54e21b6-5a09-43b9-945c-0114927d0b12','derickwagoner1','derick.wagoner@hotmail.co.uk','Tanzania','2025-05-01 17:09:24','2025-05-01 17:09:24',0),
  ('ba92dfd4-701f-4699-82cf-dcf51513b0ea','garlandh87','garlandregister@hotmail.com','Austria','2025-05-02 01:09:59','2025-05-02 01:09:59',0),
  ('93e6cc3d-af78-4bf4-95c4-957902d55dd7','brandybarak3804','brandy_barak@rediffmail.com','France','2025-05-02 01:13:07','2025-05-02 01:13:07',0),
  ('37f84dbe-73ea-467e-9ae8-ecd85c25c2ef','tonyaoswald','tonyaoswald@hotmail.com','Australia','2025-05-02 02:13:42','2025-05-02 02:13:42',0),
  ('011fb411-8d9a-4654-b170-91c126a23215','cedricurner','cedric_urner@cox.net','Oman','2025-05-02 05:24:06','2025-05-02 05:24:06',0),
  ('41817fa7-2d6d-4c8b-b43b-9d1106f3cfec','arthurd020','arthurgerste@hotmail.it','Luxembourg','2025-05-02 06:53:23','2025-05-02 06:53:23',0),
  ('e0f8d9e5-157a-4bb7-ae3f-125b49d1b67f','rosalinamilton','rosalinamilton@orange.fr','Moldova','2025-05-02 11:00:11','2025-05-02 11:00:11',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('deb95232-6889-49aa-8732-9f4372b80e2a','latonyakiel8','latonyakiel@yahoo.com','Mauritius','2025-05-02 19:54:03','2025-05-02 19:54:03',0),
  ('b375a27b-083e-40eb-b763-6ad33415834c','monserrate1699','monserrate_gallo@aol.com','Albania','2025-05-03 04:35:30','2025-05-03 04:35:30',0),
  ('070a22b6-83fd-4a84-872c-d20d808e4f92','desmondberlin14','desmond.berlin@gmail.com','Andorra','2025-05-03 04:47:56','2025-05-03 04:47:56',0),
  ('74dc20af-1566-4488-a3f9-7998e5280534','merryworthy1','merry.worthy@comcast.net','French Guiana','2025-05-03 07:11:15','2025-05-03 07:11:15',0),
  ('624cda81-4d19-431a-a5fe-673bc1e13bf5','bruce461298754','brucesymes@yahoo.it','El Salvador','2025-05-03 10:27:28','2025-05-03 10:27:28',0),
  ('cbeca6c2-b6a3-4542-bcc4-aebb9854f947','miachestnut5026','miachestnut@hotmail.co.uk','New Zealand','2025-05-03 11:24:54','2025-05-03 11:24:54',0),
  ('3d980feb-51b3-4f0b-9fa4-2892d05a076d','wilfordstinnett','wilfordstinnett@hotmail.fr','New Caledonia','2025-05-03 14:14:54','2025-05-03 14:14:54',0),
  ('ca1b883f-1d86-4f2f-bc5d-ca4e6916bd07','federicotruitt2','federicotruitt@yahoo.com','St Maarten (Dutch)','2025-05-03 23:13:29','2025-05-03 23:13:29',0),
  ('b81c2022-c4fe-4525-ad44-a9b4d62abc34','edisonrobert0','edisonrobert@yahoo.com','Kenya','2025-05-03 23:46:16','2025-05-03 23:46:16',0),
  ('1bffc41c-7d0b-4fa9-8082-e8ce8155dfcf','aracely8564','aracelykaufmann@hotmail.com','Zambia','2025-05-04 03:34:52','2025-05-04 03:34:52',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('1e7bf671-a208-49b1-8f84-a0a85349a926','kingplr2435','kingboake@gmail.com','New Caledonia','2025-05-04 05:36:23','2025-05-04 05:36:23',0),
  ('58eb0db9-b9d2-4400-b197-b6c6a2003df8','forestcintron','forestcintron@yahoo.it','Australia','2025-05-04 06:09:27','2025-05-04 06:09:27',0),
  ('a59fcf47-20af-445b-b69f-33c90c53f6a4','temekaforsythe','temekaforsythe@ymail.com','Russia','2025-05-04 06:40:48','2025-05-04 06:40:48',0),
  ('8cf0d43b-8536-45c4-90f4-8c7b98e57cf0','lashawnda15d','lashawndaburrow@hotmail.co.uk','Guinea','2025-05-04 07:37:52','2025-05-04 07:37:52',0),
  ('cca9bc70-fc08-47f9-b9cb-33ca9eff2259','richardxiong710','richardxiong@att.net','Laos','2025-05-04 09:09:53','2025-05-04 09:09:53',0),
  ('3621be73-dc50-414b-9f23-b43aa6a045df','kitty169716','kittyprettyman@yahoo.com','Estonia','2025-05-04 09:16:23','2025-05-04 09:16:23',0),
  ('157131c8-036f-4eba-9702-746cd95ae87d','leannahartmann1','leannahartmann@facebook.com','French Guiana','2025-05-04 12:49:11','2025-05-04 12:49:11',0),
  ('f3dbf886-ddae-4ca0-90ef-18dfbb3fb3e8','sheltonsolander','shelton_solander@yahoo.it','Nepal','2025-05-04 21:03:35','2025-05-04 21:03:35',0),
  ('404c6869-ff3c-4f69-8739-9d6dd15be191','maybelle2141','maybellesiggers@yahoo.com','French Guiana','2025-05-05 07:01:27','2025-05-05 07:01:27',0),
  ('7b897fcc-cfc4-4a64-a538-6ae87a4e9ba8','quyenweston2','quyenweston@hotmail.com','Barbados','2025-05-05 09:01:50','2025-05-05 09:01:50',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('23927343-6a4f-4f52-aab2-9ecdd942781f','vantunezsaiz1','vivianantunez26@gmail.com',NULL,'2025-05-05 11:52:35','2025-05-05 11:52:35',1),
  ('92fd5236-aaf8-4c06-ad08-b7f25181b415','sruiz','soniaruig@yahoo.com.ar',NULL,'2025-05-05 17:50:28','2025-05-05 17:50:28',1),
  ('2e11ac88-f62b-463c-aec2-136b01bb83d1','cmoracastillo','claudiocastilho44@gmail.com',NULL,'2025-05-05 17:51:56','2025-05-05 17:51:56',1),
  ('1abe6e44-f634-43a7-980d-54521080671e','hildegardeleal','hildegardeleal@rediffmail.com','Pakistan','2025-05-06 04:31:41','2025-05-06 04:31:41',0),
  ('699b1fff-bf09-4edc-8614-75ca573ea17c','elvinbrogan','elvinbrogan@rocketmail.com','Monaco','2025-05-06 07:42:43','2025-05-06 07:42:43',0),
  ('e388eb9e-2d35-46f6-9955-94642ec3c066','grant57z14723851','grant_christman@hotmail.co.uk','Tanzania','2025-05-06 08:25:35','2025-05-06 08:25:35',0),
  ('58b704d5-8076-4655-a8ef-5bf0b28c54c1','darcicarmichael','darcicarmichael@uol.com.br','French Guiana','2025-05-07 04:31:46','2025-05-07 04:31:47',0),
  ('b309f35c-98b8-4a09-8389-2db8f442abbd','danhargis9','danhargis@yahoo.fr','Colombia','2025-05-07 05:56:46','2025-05-07 05:56:46',0),
  ('3f7103ca-8066-4e12-9e52-c28791e43437','felicitasvfm','felicitasfinnis@gmail.com','French Guiana','2025-05-07 10:10:20','2025-05-07 10:10:20',0),
  ('12d8f8b9-f65c-4226-904f-4d560550b8b2','lashawngage334','lashawngage@aol.com','Australia','2025-05-07 15:08:53','2025-05-07 15:08:53',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('839070e9-f57b-494c-b959-e69c610d24a4','tamerawales5961','tamerawales@web.de','Romania','2025-05-07 15:29:30','2025-05-07 15:29:30',0),
  ('4f003c9c-cf29-49dd-93de-bc2314ab3b08','jeidymuriel2850','jmuriel@unbosque.edu.co','Colombia','2025-05-07 19:48:43','2025-05-07 19:48:43',0),
  ('12292a4e-bb22-4943-bd24-e4140286377c','jeidymuriel0035','jmuriela@unbosque.edu.co','Colombia','2025-05-07 19:52:47','2025-05-07 19:53:20',1),
  ('8fabd8d2-6ad9-4ec5-b8d5-9338172b3bac','mirtalangwell07','mirtalangwell@yandex.ru','Austria','2025-05-08 02:36:36','2025-05-08 02:36:36',0),
  ('efae2805-e398-42e5-b3e1-5afa8cd73f44','angiewithnell93','angiewithnell@yahoo.com','Morocco','2025-05-08 03:37:08','2025-05-08 03:37:08',0),
  ('91b9b205-df9e-40e0-a958-34b2b95ce306','matthewlux','matthewsisley@gmail.com','Congo (Rep.)','2025-05-08 21:46:40','2025-05-08 21:46:40',0),
  ('c8fe2396-1692-456c-93a8-262d76a47100','jestine1716','jestinechinn@yahoo.in','Haiti','2025-05-09 03:32:33','2025-05-09 03:32:33',0),
  ('a8ab2bed-2106-47bb-aa33-d592e8bdbe09','ellenduffy46','ellenduffy@yahoo.com','St Helena','2025-05-09 04:31:26','2025-05-09 04:31:26',0),
  ('61559cea-901a-48ae-919e-1835ea3c1b2e','sheryllindsay7','sheryllindsay@yahoo.es','Australia','2025-05-09 12:26:45','2025-05-09 12:26:45',0),
  ('46aa2ccc-56dd-47ed-9e0b-cfe60722fe09','shaunj9258026265','shaun_musgrove@hotmail.co.uk','Kyrgyzstan','2025-05-09 12:34:28','2025-05-09 12:34:28',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8e000ea8-7832-4e33-91d9-b36e2aa7ef44','alitolmer07091','alitolmer@gmail.com','Chile','2025-05-09 12:42:32','2025-05-09 12:42:32',0),
  ('7bded26c-fb66-4d23-b1ec-27db4612b7dd','cristine72g','cristinewingfield@yahoo.com','Albania','2025-05-09 15:24:55','2025-05-09 15:24:55',0),
  ('748775ff-c8bb-43d5-ae8a-bdf147b901d2','reneg0574964','rene.reveley@gmail.com','Australia','2025-05-09 18:08:32','2025-05-09 18:08:33',0),
  ('88e48aa6-9a37-4482-acb2-2a2d9350a8c3','chasityschmid','chasity_schmid@att.net','French Guiana','2025-05-10 01:41:06','2025-05-10 01:41:06',0),
  ('410f8d24-4606-4533-ad62-ae065e03de58','derek22124901','derek.oshaughnessy@aol.com','Tunisia','2025-05-10 20:34:31','2025-05-10 20:34:31',0),
  ('9b63966a-b655-44fb-8ff1-746c47df8bed','kevinbirks62822','kevinbirks@hotmail.com','El Salvador','2025-05-11 00:06:38','2025-05-11 00:06:38',0),
  ('39c1bb64-4004-4f54-9573-1d48b2e44a93','stephencalvert6','stephencalvert@yahoo.co.uk','Myanmar (Burma)','2025-05-11 02:30:33','2025-05-11 02:30:33',0),
  ('be13f31a-827e-4459-ac86-48b7ce732478','enidwhitmore781','enidwhitmore@facebook.com','Nigeria','2025-05-11 04:03:06','2025-05-11 04:03:06',0),
  ('2115e275-767a-4c44-b8ec-b9ee0ec57564','eldenfair3015','eldenfair@free.fr','Morocco','2025-05-11 17:54:22','2025-05-11 17:54:22',0),
  ('883b15b6-f286-4345-ae19-7bcae136fad7','collettekkq','collettepadilla@yahoo.com','Nigeria','2025-05-11 23:04:05','2025-05-11 23:04:05',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7dfffc47-d298-449c-bc19-301ae64bfb15','romeo72m27344','romeocarmichael@gmail.com','Antigua & Barbuda','2025-05-12 01:56:36','2025-05-12 01:56:36',0),
  ('23606322-6476-4215-a15d-64f3e542e836','elissav1662','elissacoates@orange.fr','Iraq','2025-05-12 02:17:54','2025-05-12 02:17:54',0),
  ('66af81af-059e-4b84-bf62-1f5381c2197b','katharinaaranda','katharinaaranda@hotmail.co.uk','Réunion','2025-05-12 02:26:06','2025-05-12 02:26:06',0),
  ('4b7db3bd-4c1d-4313-91c3-4fc4ded7da1d','hiram02093623','hirammeagher@rambler.ru','Australia','2025-05-12 03:18:38','2025-05-12 03:18:38',0),
  ('c82c88e9-2a42-49c0-a1d4-b222c2a08811','kellyehooks4','kellyehooks@neuf.fr','Andorra','2025-05-12 08:14:19','2025-05-12 08:14:19',0),
  ('04de00e3-4813-436a-8064-e05fcedf0594','stormyparks43','stormy.parks@yahoo.co.uk','Morocco','2025-05-12 10:19:24','2025-05-12 10:19:24',0),
  ('616a0a52-d3b2-4247-8a95-f20be82bcc17','evelynequintero','evelynequintero@uol.com.br','Austria','2025-05-12 14:31:16','2025-05-12 14:31:16',0),
  ('8b7f82b1-8fc4-4f96-a2b5-53a13afdf7e5','brittanycoveny0','brittanycoveny@googlemail.com','Qatar','2025-05-12 23:35:16','2025-05-12 23:35:16',0),
  ('d8b9988b-bdbc-446a-b1c3-c8b5e9ddfc2c','milagrogrinder','milagrogrinder@gmail.com','Guam','2025-05-13 02:42:19','2025-05-13 02:42:19',0),
  ('ae0fb936-ae26-4865-adfb-903c769b6eb1','danellesilvestri','danellesilvestri@live.co.uk','New Caledonia','2025-05-13 07:04:37','2025-05-13 07:04:37',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d2a225f3-0688-4c89-9437-7636b8bc1d05','olav63681890','olapenman@yahoo.de','Turks & Caicos Is','2025-05-13 09:27:20','2025-05-13 09:27:20',0),
  ('abd6616e-f212-40c8-9147-204ff511f680','aimeeleeson9','aimeeleeson@ig.com.br','French Guiana','2025-05-13 11:44:35','2025-05-13 11:44:35',0),
  ('378d2f80-a6ce-4bb1-a47f-e6904fe4fa01','gloria0123','gloria_orozco83192@gmail.com','Colombia','2025-05-13 19:59:04','2025-05-13 19:59:04',0),
  ('fb0b5502-a9c4-484e-a788-5d31dcb7f9af','rolandokrischock','rolandokrischock@gmail.com','Australia','2025-05-14 06:13:25','2025-05-14 06:13:25',0),
  ('7d068e1a-499e-4bf0-bd61-32978114e1bc','stephenvlg','stephenkobayashi@libero.it','Bangladesh','2025-05-14 07:46:33','2025-05-14 07:46:33',0),
  ('dbecba1d-bca9-44e5-a9f7-e1703d5271e7','gmirandahiriart','gonzalo.miranda@ulagos.cl','Chile','2025-05-14 14:50:43','2025-09-15 17:54:23',1),
  ('ceefd910-92d5-4ae2-bf53-c8b27a6beee4','karissamallette','karissamallette@sfr.fr','Austria','2025-05-14 15:45:25','2025-05-14 15:45:25',0),
  ('703e5855-0572-4a19-ae78-237cfd42dc73','ferminmaruff3','fermin_maruff@yahoo.com.au','French Guiana','2025-05-15 10:08:47','2025-05-15 10:08:47',0),
  ('76da2b31-9e0b-497c-97cc-5bfb76674098','cindascales','cindascales@gmail.com','Micronesia','2025-05-15 12:25:13','2025-05-15 12:25:13',0),
  ('23f267fa-ad00-442d-9b66-990a75442c87','imogenhammonds6','imogenhammonds@hotmail.es','Cuba','2025-05-15 16:49:56','2025-05-15 16:49:56',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('763758ba-8e41-44e7-8bee-a16c262b19fd','zacheryakin1325','zacheryakin@aol.com','Virgin Islands (UK)','2025-05-15 17:49:27','2025-05-15 17:49:27',0),
  ('4500da4c-5f86-4c49-84e2-c3feb637f60d','robink4544','robinweinberg@yahoo.it','Virgin Islands (UK)','2025-05-15 19:07:11','2025-05-15 19:07:11',0),
  ('a7867a7f-4513-4861-b749-b1471f8bd76d','1234natacha1234','natachacoca27@gmail.com','Cuba','2025-05-15 23:55:26','2025-05-15 23:55:26',1),
  ('5d9af96c-2f5b-4eda-a304-831260b53fa3','jeanninebraun','jeannine_braun@gmail.com','Jersey','2025-05-16 00:08:24','2025-05-16 00:08:24',0),
  ('7a64e0c3-c2d9-4538-aa5b-9606878072ae','aleja','dradola1819@gmail.com','Colombia','2025-05-16 00:40:44','2025-07-28 22:15:59',1),
  ('bd438c5e-8662-4263-a591-ea7ec77245da','linneahose60525','linneahose@gmail.com','Korea (North)','2025-05-16 03:51:56','2025-05-16 03:51:56',0),
  ('5baa9548-48f6-49df-8a90-49f77b608011','cgomezcano','carlos_gomezca@cun.edu.co',NULL,'2025-05-16 06:36:32','2025-05-16 06:36:32',1),
  ('3ab5dde4-49bd-49c9-a2dc-43c493106dc8','svenhorn3207655','sven.horn@hotmail.co.uk','Caribbean NL','2025-05-16 10:31:22','2025-05-16 10:31:23',0),
  ('8716f6bf-ce0f-44ce-a2e0-ba8e6180aa8d','irvingv056145','irvingcarrasco@rediffmail.com','Turkey','2025-05-16 10:58:07','2025-05-16 10:58:07',0),
  ('95f636ea-1c3b-4ff5-926c-fbf51ea666ac','carrollgreenham','carrollgreenham@gmail.com','Caribbean NL','2025-05-16 14:21:55','2025-05-16 14:21:55',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('69635c64-ce4a-4db8-bac5-4ee39bf47cd4','patricia1972','patricia.jarap@gmail.com','Chile','2025-05-16 20:13:25','2025-06-14 16:35:59',1),
  ('fe3b69f5-31ca-405b-9cbd-4cb9ef6d6ee9','jasperalford69','jasperalford@ymail.com','Iceland','2025-05-17 01:27:43','2025-05-17 01:27:43',0),
  ('73cd4482-5bcd-423b-b6f9-4d3277127e67','franklynwalsh5','franklynwalsh@neuf.fr','Zambia','2025-05-17 08:09:49','2025-05-17 08:09:49',0),
  ('e5e51009-0ac2-4ac7-bee3-c3e63e0b046d','sharyl3066','sharylmcchesney@comcast.net','Sao Tome & Principe','2025-05-17 08:46:31','2025-05-17 08:46:31',0),
  ('965f9f56-d935-4a0a-9d74-c1dc19a4b36b','tracy59p59394266','tracysherman@rediffmail.com','Austria','2025-05-17 12:34:25','2025-05-17 12:34:25',0),
  ('6e407fe6-bcbc-4c1c-bdaf-b3a2862a1d47','katherinadunlea','katherinadunlea@gmail.com','French Guiana','2025-05-17 16:17:35','2025-05-17 16:17:35',0),
  ('9a37fd4f-1aa0-4905-be03-967d370a9ad6','fredericlewers7','fredericlewers@gmail.com','Cuba','2025-05-17 22:16:16','2025-05-17 22:16:16',0),
  ('646185e1-df84-496b-97a9-e220653f8493','clarkltb169825','clarkfredrickson@sbcglobal.net','Comoros','2025-05-18 00:19:56','2025-05-18 00:19:56',0),
  ('4066030a-4618-4dae-83f6-820094259c64','glendagqv5725','glendahobler@bellsouth.net','Colombia','2025-05-18 03:08:01','2025-05-18 03:08:01',0),
  ('d4ca3b50-311a-467c-95ac-4d867cd173c9','geoffreycolbert','geoffreycolbert@yahoo.com','Seychelles','2025-05-18 06:50:02','2025-05-18 06:50:02',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a52970d5-6b2a-43f0-ac30-24626bb78e80','zacherycatts','zachery.catts@laposte.net','French Guiana','2025-05-18 18:09:14','2025-05-18 18:09:14',0),
  ('511953bb-6b28-44a2-8e4e-c694bd8104f1','chasityw03','chasitynarelle@gmail.com','Austria','2025-05-18 20:03:10','2025-05-18 20:03:10',0),
  ('890239c8-367a-4ab2-841f-b2312e125f9f','vanessabenitez0','vanessabenitez@sfr.fr','Mozambique','2025-05-18 20:25:20','2025-05-18 20:25:20',0),
  ('88e2f92c-f485-4038-9ff3-7ce5ad685537','idascarberry55','idascarberry@yahoo.es','Australia','2025-05-18 21:08:05','2025-05-18 21:08:05',0),
  ('2c3950e3-f012-4388-94b7-442b6d2d905f','ferminjefferson','fermin.jefferson@yahoo.ca','Montserrat','2025-05-18 21:12:38','2025-05-18 21:12:38',0),
  ('2231395c-b055-45f1-9402-f987cab89db7','leonorpelensky','leonor.pelensky@sfr.fr','Palau','2025-05-18 22:53:50','2025-05-18 22:53:50',0),
  ('14cc2b49-ecde-434f-b187-1888a511c637','patsykahn35','patsykahn@gmail.com','Austria','2025-05-19 00:30:05','2025-05-19 00:30:05',0),
  ('dd6f941e-c08f-40da-bcfc-818ad87fdeff','christenpuckett','christenpuckett@aol.com','Greenland','2025-05-19 13:42:59','2025-05-19 13:42:59',0),
  ('834bc1df-f83b-484c-a3d5-2f6afe04c0f4','taylahkalb328','taylah.kalb@yahoo.es','Austria','2025-05-19 13:45:35','2025-05-19 13:45:36',0),
  ('8e888863-b8da-4c6a-91ae-c87aede424a9','msepulvedalopez','monica.sepulveda@colmayor.edu.co',NULL,'2025-05-19 18:08:15','2025-06-04 14:37:16',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('23ebf73f-0865-433d-a99c-571dd64bab9e','margaretabetche','margaretabetche@yahoo.com.au','Anguilla','2025-05-19 22:36:50','2025-05-19 22:36:50',0),
  ('658c17e3-cf71-43fe-8a12-139aacc22cfb','elaine2381','elaine_elsberry@hotmail.com','Slovenia','2025-05-19 23:28:34','2025-05-19 23:28:34',0),
  ('80382696-907e-4097-840a-a0dbcd5a7185','elisa94s78979','elisa_seay@hotmail.co.uk','Angola','2025-05-20 00:19:23','2025-05-20 00:19:23',0),
  ('918dbde5-9b96-4ee9-bb7d-89909d7e8dff','gena96488042299','genachristmas@gmail.com','Austria','2025-05-20 02:44:49','2025-05-20 02:44:49',0),
  ('1d7edee2-c78f-4390-afec-d014df08a662','senaidaharmon71','senaidaharmon@neuf.fr','Mexico','2025-05-20 08:26:04','2025-05-20 08:26:04',0),
  ('4717dfc3-71a3-4805-8f05-00e8cc859ab0','mosheyabsley91','mosheyabsley@web.de','Philippines','2025-05-21 05:25:24','2025-05-21 05:25:24',0),
  ('cac4c366-b6e3-4429-ba53-3685a213dcae','domingofitzsimmo','domingofitzsimmons@libero.it','Austria','2025-05-21 16:42:37','2025-05-21 16:42:37',0),
  ('86eae27d-094d-4d12-aabd-79f374560e47','georginamacdermo','georgina_macdermott@cox.net','Iceland','2025-05-21 18:09:12','2025-05-21 18:09:12',0),
  ('83e0c130-ed7f-45f7-b4dd-5734f5653e59','lasonyah36','lasonyagillon@yahoo.es','Sudan','2025-05-22 10:25:45','2025-05-22 10:25:45',0),
  ('65535b7c-9f80-4889-9898-d130daf0146f','erickroxon2138','erickroxon@aol.com','Austria','2025-05-23 19:39:59','2025-05-23 19:39:59',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('deb9a8ce-d180-4adf-8b45-9f78e7bbf086','charmainmacqueen','charmainmacqueen@hotmail.co.uk','Australia','2025-05-23 21:23:47','2025-05-23 21:23:47',0),
  ('451058bc-c84d-413f-b7b8-9b8810723ce8','brianneb06','brianneaquino@hotmail.co.uk','Bhutan','2025-05-24 01:57:24','2025-05-24 01:57:24',0),
  ('fd1ccd8b-6e78-4744-86ea-6ec98737c51c','martigentry485','marti.gentry@hotmail.co.uk','Trinidad & Tobago','2025-05-24 06:27:26','2025-05-24 06:27:26',0),
  ('f6ad278c-3b13-4836-a8a1-0de1c78b6af9','andreavick1931','andreavick@gmail.com','United Arab Emirates','2025-05-24 06:51:18','2025-05-24 06:51:18',0),
  ('2ad581fc-752f-4a4b-9cab-0e531d0c8a05','jacquescockerill','jacquescockerill@yahoo.com','French Guiana','2025-05-24 13:31:24','2025-05-24 13:31:24',0),
  ('56d61909-f3a6-4d7c-8f97-fd75dc168b09','octavia37p','octaviablalock@hotmail.co.uk','Australia','2025-05-24 18:20:44','2025-05-24 18:20:44',0),
  ('82a3d71f-586d-4e03-b55a-3789726a6b0e','kirknielsen33','kirknielsen@gmail.com','Seychelles','2025-05-24 19:06:31','2025-05-24 19:06:31',0),
  ('ef45d4ca-50b6-449b-ac96-d9ad76bc97c2','karinehatcher','karinehatcher@orange.fr','Austria','2025-05-25 08:02:52','2025-05-25 08:02:52',0),
  ('75fce94e-90a6-4c4f-9641-aef41c7d6087','arielg69105','arielthrasher@yahoo.com','Angola','2025-05-25 08:39:38','2025-05-25 08:39:38',0),
  ('9f7c67b7-5a12-46d1-91c8-3e6198993325','rhodaamess9694','rhodaamess@gmail.com','Virgin Islands (US)','2025-05-25 12:11:37','2025-05-25 12:11:37',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('11e4ae93-b4ec-410b-a03b-cfacd034b5e2','leona924202','leona.nesmith@yahoo.com','Australia','2025-05-25 12:25:10','2025-05-25 12:25:10',0),
  ('86af3c70-15f1-4c40-a435-9a0926bbcdfd','cleomilne1','cleomilne@yahoo.com','Turks & Caicos Is','2025-05-25 13:52:55','2025-05-25 13:52:55',0),
  ('0f5db2df-2a66-4d09-bec7-be8e78338b54','anderson3251','andersonmuscio@hotmail.com','Bolivia','2025-05-26 02:14:57','2025-05-26 02:14:57',0),
  ('e4961e5c-0f3f-49bb-bf06-6362a68fbb57','briannakirwan64','brianna_kirwan@ymail.com','Burkina Faso','2025-05-26 03:00:13','2025-05-26 03:00:13',0),
  ('4170bac7-7b86-476b-a39c-9a6937732302','glopezdiaz','tavolodi@hotmail.com',NULL,'2025-05-26 06:15:41','2025-05-26 06:15:41',1),
  ('6cb93943-27fd-4831-b049-85a599bb0307','jrodriguezotalora','jorgea-rodriguezo@unilibre.edu.co',NULL,'2025-05-26 07:01:31','2025-05-26 07:01:31',1),
  ('97527382-f1e7-4452-ae4d-c62da11f8be4','mikevroland4','mikevroland@yahoo.es','Svalbard & Jan Mayen','2025-05-26 07:36:58','2025-05-26 07:36:58',0),
  ('e009d771-9e8a-483d-82e5-4937f9bf2771','gmruiz','gloriaruiz@elpoli.edu.co','Colombia','2025-05-26 10:30:04','2025-10-02 09:54:20',1),
  ('51ab6018-d104-47b8-bdaf-7128f63ec2ce','yfagita6941325','gita.asche@gmail.com','Svalbard & Jan Mayen','2025-05-26 23:16:10','2025-05-26 23:16:10',0),
  ('ea2cc6c7-e12d-4829-84d9-e59f156202bd','karinapowell','karinapowell@rocketmail.com','French Guiana','2025-05-27 00:19:35','2025-05-27 00:19:35',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('97f6d2e5-cc9e-4f2e-8725-8f07def58b09','hubertlogue','hubertlogue@aol.com','Jersey','2025-05-27 08:17:43','2025-05-27 08:17:43',0),
  ('d69e4f03-6f56-4a0b-bc86-e4bfc4482784','myrtleirish4','myrtleirish@gmail.com','Russia','2025-05-27 09:48:53','2025-05-27 09:48:53',0),
  ('73baaabb-018f-4b15-8dc4-0ffedaf4de21','rleitaoazevedo','renatoflazevedo@gmail.com',NULL,'2025-05-27 10:57:08','2025-05-27 10:57:08',1),
  ('a6675c46-63e2-43c6-98a6-ff31e29c57ac','saralenehan8','saralenehan@yahoo.com','Austria','2025-05-27 18:48:48','2025-05-27 18:48:48',0),
  ('bef10e63-6811-4054-8489-e624b8719a54','ibcsung9622','sungcastleberry@gmail.com','Burkina Faso','2025-05-27 22:34:00','2025-05-27 22:34:00',0),
  ('b76bdc6d-115e-42cf-bf55-0c67005b76ce','franciscachf','francisca.hennessey@hotmail.com','Palau','2025-05-27 23:32:38','2025-05-27 23:32:38',0),
  ('58b7bae6-5817-4d92-95a7-aef5c18e0354','danilowhitehead','danilowhitehead@ig.com.br','Austria','2025-05-28 08:25:02','2025-05-28 08:25:02',0),
  ('959f3324-870d-446b-878f-addcfbfad4dc','israelharriet0','israel.harriet@verizon.net','Venezuela','2025-05-28 11:00:46','2025-05-28 11:00:46',0),
  ('4cdd7976-0339-46ab-a16c-b1cdad39334b','camillaguardado','camillaguardado@gmail.com','Australia','2025-05-28 12:22:44','2025-05-28 12:22:44',0),
  ('2ecbbca3-aed6-4ed8-8848-fb7ad7483046','jaclynmaggard3','jaclyn_maggard@yahoo.co.in','Lesotho','2025-05-28 12:27:12','2025-05-28 12:27:12',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d2ad9afb-9c28-40c2-a65f-6704e415c58d','linabatson3','linabatson@comcast.net','Lithuania','2025-05-28 12:34:32','2025-05-28 12:34:32',0),
  ('0fc83a76-1e63-46ae-8c67-34fd38e7f3f5','donnymirams','donnymirams@bol.com.br','French Guiana','2025-05-28 13:58:09','2025-05-28 13:58:09',0),
  ('c1641c49-165a-411c-ae5e-3d15f2f5900c','philbeaumont50','phil_beaumont@aol.com','Côte d''Ivoire','2025-05-28 15:07:41','2025-05-28 15:07:41',0),
  ('6f7ace6c-5f48-43c6-bc67-d611479e309d','shadlauer581','shadlauer@yahoo.com','Australia','2025-05-28 17:01:10','2025-05-28 17:01:10',0),
  ('533a8900-f550-49d1-9b8b-e50ddb1d7e2c','carolsrc770040','carol.skemp@yahoo.com','Dominican Republic','2025-05-28 20:15:58','2025-05-28 20:15:58',0),
  ('a241eb56-45d9-4d78-bd03-0a445455d714','valeriaulmer9','valeria_ulmer@terra.com.br','French Guiana','2025-05-29 09:17:44','2025-05-29 09:17:45',0),
  ('2774172a-8ed4-4674-9f6a-18ac7bc45452','alejandrosteed9','alejandrosteed@aol.com','Puerto Rico','2025-05-29 18:09:34','2025-05-29 18:09:34',0),
  ('36850120-5e09-4b57-b04d-448b4e0bc770','cpicobonilla','claudia.pico@unimilitar.edu.co',NULL,'2025-05-29 18:32:39','2025-09-18 15:46:57',1),
  ('2001cf9e-188d-470c-8671-2a1054e0248d','garfieldlinn5','garfieldlinn@yandex.ru','Mauritius','2025-05-30 00:48:42','2025-05-30 00:48:42',0),
  ('c8451244-5fee-4725-80dd-e780b6320614','lavonneceja2731','lavonneceja@neuf.fr','Afghanistan','2025-05-30 05:52:57','2025-05-30 05:52:57',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('603c1f06-7d44-4526-a70e-f6423bb6dd07','echalapudnarvaez','eduardo_chalapud@cun.edu.co',NULL,'2025-05-30 09:11:27','2025-09-10 10:58:36',1),
  ('6bb72cf4-478e-45e9-a246-27fd6721a981','renebrim357','renebrim@yahoo.com.br','Turkey','2025-05-30 09:49:49','2025-05-30 09:49:49',0),
  ('c0e46c8a-eb6d-4373-bd51-800e4d5339b3','edchalapud','ecpdavid@gmail.com','Colombia','2025-05-30 11:40:47','2025-09-22 12:48:15',1),
  ('24a12dd8-b017-4875-baf0-b46ecea2d49a','rob75855035','robtoothman@ig.com.br','Hungary','2025-05-30 13:12:08','2025-05-30 13:12:08',0),
  ('e1f84d83-cee3-4520-ba4d-af7ffa5f5ca0','rosalynvancouver','rosalynvancouver@cox.net','Bangladesh','2025-05-30 15:54:08','2025-05-30 15:54:08',0),
  ('999df702-4a8a-4c5c-a4b0-7235ccf2ff90','antwancorkill2','antwancorkill@hotmail.com','French Guiana','2025-05-31 11:30:09','2025-05-31 11:30:09',0),
  ('ab4dac9b-417e-4165-b34e-bf66db00bf71','dorcasmaher36','dorcas_maher@aol.com','Australia','2025-05-31 12:11:19','2025-05-31 12:11:19',0),
  ('a2f812d1-45c2-4952-8b3c-435e8245c114','srobledog','srobledog@unal.edu.co','Colombia','2025-05-31 12:28:21','2025-06-18 21:15:24',1),
  ('daf367ae-da1b-4d83-8c11-a2c6d4db7af2','basilbranch9369','basilbranch@hotmail.co.uk','French Guiana','2025-05-31 13:21:50','2025-05-31 13:21:50',0),
  ('77c04064-a408-4fa0-b7a7-3269192d5176','betseynicholls6','betseynicholls@libero.it','French Guiana','2025-05-31 17:45:09','2025-05-31 17:45:09',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('bea81973-d763-4303-bdf4-17335efc5758','celeste0162','celesteloos@gmail.com','United States','2025-05-31 18:48:17','2025-05-31 18:48:17',0),
  ('70523aac-dd96-418e-8963-30f03b91d9fb','toddmartinson','toddmartinson@hotmail.co.uk','Nicaragua','2025-05-31 18:50:27','2025-05-31 18:50:27',0),
  ('a8834acd-3f0f-4110-9ad4-928e2d5cec77','lynwoodmckeel7','lynwoodmckeel@yahoo.com','Nepal','2025-05-31 20:11:26','2025-05-31 20:11:26',0),
  ('ca40e768-1e11-40f3-8cbb-972c781c0204','genea02818147930','genechute@libero.it','French Guiana','2025-06-01 01:18:13','2025-06-01 01:18:13',0),
  ('ef3a65dc-258b-46a6-9939-4eec0d7a9b1e','silas79437083','silasfoveaux@gmail.com','Austria','2025-06-01 06:33:02','2025-06-01 06:33:02',0),
  ('228c6779-ee65-467a-b241-224cbd7104ff','urbvida61151','vidawinter@yahoo.com','Zambia','2025-06-01 07:09:08','2025-06-01 07:09:08',0),
  ('8e6abd29-c100-479f-933c-699c77da3cf2','tyree69850','tyreecrutchfield@live.co.uk','French Guiana','2025-06-01 13:18:24','2025-06-01 13:18:24',0),
  ('00ff1386-f548-4461-a3fc-4edc90d59748','ulrikeweston3','ulrikeweston@live.com','Netherlands','2025-06-01 13:59:21','2025-06-01 13:59:21',0),
  ('749b0177-40d1-48f8-8a3b-12435597f6dc','janniesatterwhit','janniesatterwhite@yahoo.com','Palau','2025-06-01 15:36:21','2025-06-01 15:36:21',0),
  ('0ca12f46-6715-4178-ab89-4e32538f320f','lazarohuffman74','lazarohuffman@gmail.com','Belgium','2025-06-01 16:28:37','2025-06-01 16:28:37',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('585509d2-fff3-4b3d-946a-09b62c6d4272','terischlenker5','terischlenker@hotmail.co.uk','Hungary','2025-06-01 20:35:58','2025-06-01 20:35:58',0),
  ('3f41131e-4b68-4a45-b20e-925fc85f42a6','jgmrichie62706','richie_diehl@googlemail.com','Australia','2025-06-02 00:04:37','2025-06-02 00:04:37',0),
  ('b1237c18-fc45-47dc-be58-c1a7be89e65d','brentangelo','brent.angelo@yahoo.fr','Cook Islands','2025-06-02 01:23:30','2025-06-02 01:23:30',0),
  ('3a6414a6-b0d2-4f4e-b2c1-687c65b240ad','mikeldrennan08','mikel.drennan@outlook.com','Austria','2025-06-04 20:17:37','2025-06-04 20:17:37',0),
  ('0003f327-a8e6-4fdf-b5c5-a2ea2a0b9e89','tanisha8476','tanisha.ramer@bigpond.com','Svalbard & Jan Mayen','2025-06-05 02:26:33','2025-06-05 02:26:33',0),
  ('b1c5cc47-9e63-4c7a-a659-065e8d25ef6d','soilarosenthal','soilarosenthal@gmail.com','Greece','2025-06-05 03:29:07','2025-06-05 03:29:07',0),
  ('acfcc003-088f-4df5-bce9-7fd0b0c2ce1f','hershelaranda25','hershelaranda@aol.com','Australia','2025-06-05 07:18:22','2025-06-05 07:18:22',0),
  ('37ce676e-34ce-4baf-9e7e-fc91efc55054','aecheverrirubio','aecheverri@umanizales.edu.co',NULL,'2025-06-05 15:33:58','2025-06-05 15:33:58',1),
  ('cf6243a2-48a0-40f5-9383-308ab78a4949','ezmtressa887','tressamacias@yahoo.com','Lebanon','2025-06-06 02:57:44','2025-06-06 02:57:44',0),
  ('8498a651-b1bf-4305-bbf1-ec8542f16075','lindsayvnl','lindsay.mccormick@yahoo.com','Côte d''Ivoire','2025-06-06 10:56:13','2025-06-06 10:56:13',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4238e6b6-eb67-4007-9612-1dae1b02273b','51w955421830911','lkbkecfngdeha_135@googlemail.com','Laos','2025-06-06 11:17:27','2025-06-06 11:17:27',0),
  ('29300afa-aa30-4dd4-bcb8-b2421d028603','dawnavos903','dawnavos@yahoo.com','Austria','2025-06-06 18:28:58','2025-06-06 18:28:58',0),
  ('bd723427-a5e8-4ef4-83c8-b70844d83fa7','taosoriol','taosoriol@unal.edu.co','Colombia','2025-06-06 19:11:06','2025-06-25 10:52:35',1),
  ('db1526f6-82f2-4f91-bafa-9f0d0dbdebae','hudson4146','hudsonmeston@yahoo.com','Australia','2025-06-06 19:50:28','2025-06-06 19:50:28',0),
  ('d549e9a4-144f-4d05-89eb-daaa6c1440f5','miich05','miich052005@gmail.com','Colombia','2025-06-06 22:08:15','2025-06-06 22:14:54',1),
  ('2b30ede6-5727-43b5-ba33-3253530d909b','seymourcavill4','seymourcavill@ig.com.br','Lithuania','2025-06-06 22:46:29','2025-06-06 22:46:29',0),
  ('bb0e70d8-dd56-432e-a323-0f855d216d07','adrienewoodson','adrienewoodson@yahoo.com','Norfolk Island','2025-06-07 00:22:31','2025-06-07 00:22:31',0),
  ('adba57b3-3065-4f22-a183-b7b228f2716c','reneehupp811713','reneehupp@yahoo.com','Niue','2025-06-07 10:41:27','2025-06-07 10:41:27',0),
  ('872957da-56d2-41db-b136-1168f248cf49','martinaconnor69','martinaconnor@wanadoo.fr','Nigeria','2025-06-07 11:45:37','2025-06-07 11:45:37',0),
  ('20bb7768-d229-4dd6-ae7b-591311f51231','mohammed61c','mohammedcarrillo@hotmail.fr','Christmas Island','2025-06-07 19:22:30','2025-06-07 19:22:30',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('6028939b-bba2-49ab-9085-9183531ac5c4','yvonnem04954165','yvonnemccloskey@googlemail.com','Palau','2025-06-07 19:30:07','2025-06-07 19:30:07',0),
  ('fc03d6cf-4ec8-4004-a927-9e47d4526ec0','mohammadpremo32','mohammadpremo@yahoo.com.au','Venezuela','2025-06-07 21:02:05','2025-06-07 21:02:05',0),
  ('78dc6b4c-bce6-4b3f-a10a-656d8ebedd06','jannettedellit','jannette.dellit@hotmail.com','Austria','2025-06-08 00:27:47','2025-06-08 00:27:47',0),
  ('60cdef35-6f44-42ff-bc9a-c31eb338420f','rudolfhawken13','rudolfhawken@hotmail.it','Botswana','2025-06-08 02:13:12','2025-06-08 02:13:12',0),
  ('3731ed4a-05e1-4bfa-b7d1-bd78fc081fbb','laran346654','lara_higinbotham@cox.net','Guadeloupe','2025-06-08 02:40:21','2025-06-08 02:40:21',0),
  ('6cc9697e-7128-441c-b1d1-7ea0499c3fcf','nusach','nataliausach@gmail.com',NULL,'2025-06-08 15:39:07','2025-06-08 15:39:07',1),
  ('658845d6-1510-4f98-9465-ae9143cea343','mirtamackennal','mirta.mackennal@verizon.net','Slovenia','2025-06-08 23:27:08','2025-06-08 23:27:08',0),
  ('cd18bf37-d312-4b18-9c59-363719bc3942','rebrubye25710353','rubyecato@live.nl','Russia','2025-06-08 23:34:51','2025-06-08 23:34:51',0),
  ('f1ba0f2e-60d6-4669-ac6c-d83a98dd8051','arnulfo9354','arnulfo_lain@yahoo.com','Egypt','2025-06-09 09:14:07','2025-06-09 09:14:07',0),
  ('98de2caf-0528-46b8-b398-116da1295d80','jestine28g','jestinevinci@charter.net','French S. Terr.','2025-06-09 14:21:09','2025-06-09 14:21:09',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d48dedf1-ecbb-4528-ac8e-f8f9754f680e','mpanza','mrpanza@eco.unsa.edu.ar',NULL,'2025-06-09 20:10:56','2025-06-09 20:10:56',1),
  ('35bce6b5-4f8c-416c-bd55-61f203752ed8','jpinto','jorgelpintom@gmail.com',NULL,'2025-06-09 20:14:33','2025-06-09 20:14:33',1),
  ('2fac243c-0833-499b-a905-63be030518a4','jcanogomez','jhonnycano@elpoli.edu.co',NULL,'2025-06-09 20:17:43','2025-07-15 14:28:53',1),
  ('2164b0a6-5dac-4458-b6fb-67a9116502dd','jaimiebuddicom8','jaimie_buddicom@yahoo.com','Singapore','2025-06-10 02:44:06','2025-06-10 02:44:06',0),
  ('06dabb54-389e-4a2b-8401-a0321f2b6066','latishatudawali','latisha_tudawali@yahoo.com','Falkland Islands','2025-06-10 05:20:31','2025-06-10 05:20:31',0),
  ('ef8bfad2-aa64-498c-9da8-daf0a2daae64','taylahyuy30065','taylahboelter@yahoo.com','Sao Tome & Principe','2025-06-10 08:16:41','2025-06-10 08:16:41',0),
  ('ce77a362-1238-42d1-aa0e-9516748d4a0a','sxsmitzi347672','mitziedmond@gmail.com','Sao Tome & Principe','2025-06-10 08:27:17','2025-06-10 08:27:17',0),
  ('af2d33f6-9034-455a-9fcf-ec58fb43fd8a','bookerjaques08','bookerjaques@hotmail.com','Australia','2025-06-10 18:36:11','2025-06-10 18:36:11',0),
  ('96ffd672-ba8c-4cb7-a4b0-01ec4a2ac9b3','claritahemmant','claritahemmant@bol.com.br','Montenegro','2025-06-10 20:05:58','2025-06-10 20:05:58',0),
  ('4b879e40-eab3-4d1d-b06c-7af655a109c0','delmarshirk42','delmarshirk@mail.ru','Australia','2025-06-10 22:15:53','2025-06-10 22:15:53',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e90d5e60-2edc-4c45-9e9b-ccb9e85d71de','lincolnkruse664','lincolnkruse@yahoo.com','Guadeloupe','2025-06-11 05:00:27','2025-06-11 05:00:27',0),
  ('9d161a57-9c39-4e92-bfc2-b59e4869be7c','violarhea57492','violarhea@yahoo.de','Australia','2025-06-12 01:44:25','2025-06-12 01:44:25',0),
  ('e86533ca-3c3e-4955-99f8-4b5b5502726b','leonardwill0669','leonardwill@yahoo.co.in','Sudan','2025-06-12 02:38:54','2025-06-12 02:38:54',0),
  ('e8ac7657-21be-41ad-b050-16e4c50367f6','paulinaups','paulina_kincheloe@yahoo.com','New Zealand','2025-06-12 19:42:28','2025-06-12 19:42:28',0),
  ('1b767d89-358f-4bc7-b42a-3e06d488f7e0','reda1362880785','redarhea@sfr.fr','Tuvalu','2025-06-13 04:30:29','2025-06-13 04:30:29',0),
  ('be4dddbe-fcb6-4734-af4e-1c5270ee81e3','brigitte_fca','brigitte.fca@gmail.com','Mexico','2025-06-13 19:54:33','2025-09-26 22:37:13',1),
  ('4cd8e59f-40b8-45e6-a02d-29b4e5dbdf7e','filomena65c','filomenahuggins@yahoo.in','Austria','2025-06-14 04:55:09','2025-06-14 04:55:09',0),
  ('f883b3b5-87a9-417f-96bf-109c383669da','lydiatmy5117052','lydiabledsoe@facebook.com','Bosnia & Herzegovina','2025-06-14 08:19:02','2025-06-14 08:19:02',0),
  ('a85241de-7077-470a-b43c-6db8019ff835','glenna4764','glenna_rizzo@hotmail.com','Lesotho','2025-06-15 05:25:53','2025-06-15 05:25:54',0),
  ('49bdbdd9-28e8-4ff1-8836-fa59a1d4ca08','mikaylahandt42','mikayla_handt@outlook.com','Korea (South)','2025-06-17 06:02:51','2025-06-17 06:02:51',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('596d58c6-3b8c-4077-97ff-358301265bd9','oqqberry5966539','berrycorso@yahoo.in','French Guiana','2025-06-17 07:15:24','2025-06-17 07:15:24',0),
  ('e911c3f8-c4a2-4a38-a7db-15611f7d6d24','lillygreaves169','lillygreaves@live.fr','Haiti','2025-06-17 13:29:45','2025-06-17 13:29:45',0),
  ('a6d5f6b8-ce2e-4e67-a68f-8ccc6faf1121','abbeyeade20942','abbeyeade@gmail.com','Dominica','2025-06-17 14:04:09','2025-06-17 14:04:09',0),
  ('a2b78dca-c2a3-4491-a58e-17a233181f62','julissablock','julissablock@gmail.com','Tajikistan','2025-06-17 20:03:08','2025-06-17 20:03:08',0),
  ('07fb2935-2bce-4d03-b42c-68084dc64919','felipajmm79022','feliparobillard@wanadoo.fr','Kiribati','2025-06-18 04:37:51','2025-06-18 04:37:51',0),
  ('38dafb46-e78a-4016-bbc4-6b7a28148f12','sherlynheard876','sherlynheard@cox.net','Northern Mariana Islands','2025-06-18 09:35:15','2025-06-18 09:35:15',0),
  ('2da6f4b9-55fe-4f82-aed0-b38987a26c2e','kattief5972','kattiecarolan@gmx.de','Bahamas','2025-06-18 15:30:53','2025-06-18 15:30:53',0),
  ('d2039619-b305-4453-94f7-49be8e437ea0','adelaidegoll','adelaidegoll@bellsouth.net','Mongolia','2025-06-21 01:32:09','2025-06-21 01:32:09',0),
  ('c1c97561-ab93-49ac-9687-555206009ee5','tysongrimshaw','tysongrimshaw@yahoo.com','Iran','2025-06-21 10:40:10','2025-06-21 10:40:10',0),
  ('bbc0b617-b57c-4de0-a795-b85c1bf672d2','hlxmohammad','mohammad.leake@gmx.de','French Guiana','2025-06-21 17:59:05','2025-06-21 17:59:05',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('93a96028-9a89-4355-8c04-2d15597275f3','krystynavanhoose','krystyna.vanhoose@terra.com.br','East Timor','2025-06-21 21:30:58','2025-06-21 21:30:59',0),
  ('28458adc-76ea-49e7-856e-dfa786dc9b7f','hazelmenkens589','hazelmenkens@bigpond.com','Guyana','2025-06-22 14:36:49','2025-06-22 14:36:49',0),
  ('be55975e-4d0c-4e79-b7e2-b63ea1db3ad4','vonniehinkle295','vonniehinkle@yahoo.es','Guinea-Bissau','2025-06-23 00:33:43','2025-06-23 00:33:43',0),
  ('dd1c173e-6dc7-4115-9b36-45064e6ed336','tajholeman3','tajholeman@gmail.com','Bulgaria','2025-06-23 11:42:46','2025-06-23 11:42:46',0),
  ('ed4a6f96-c103-4496-828d-b645b67b4a0c','seopemula24681a3','celestejohnstone@libero.it','Luxembourg','2025-06-23 14:13:18','2025-06-23 14:13:18',0),
  ('db5dfca2-4420-4a1e-8fd0-eb03617da93d','fallon6923','fallon.barna@yahoo.de','Myanmar (Burma)','2025-06-24 05:53:52','2025-06-24 05:53:52',0),
  ('cc96928c-329a-4dc3-85a7-f4e5a475f62b','jewellbirkbeck3','jewellbirkbeck@yahoo.com','Estonia','2025-06-24 06:31:58','2025-06-24 06:31:58',0),
  ('77d42e84-c3b2-474e-99fa-1453e9c42f8e','emilialeibius','emilialeibius@mail.ru','Iceland','2025-06-24 10:54:21','2025-06-24 10:54:21',0),
  ('5ab1fc80-cae3-4a4e-9c64-269bc7d437a2','cindalahr8','cindalahr@yahoo.de','Austria','2025-06-24 15:50:19','2025-06-24 15:50:19',0),
  ('b97e462c-53b2-45db-98ce-83926c8995d1','jaunita92j','jaunitamenge@alice.it','British Indian Ocean Territory','2025-06-24 21:38:23','2025-06-24 21:38:23',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5e4c431e-c5e8-4d01-8d45-3168bbcc793b','deannapruitt61','deannapruitt@gmail.com','Austria','2025-06-25 18:13:10','2025-06-25 18:13:10',0),
  ('354b807a-5793-4e75-afc3-018626e13d4b','teena53w178','teenaisbell@alice.it','French Polynesia','2025-06-25 21:01:37','2025-06-25 21:01:37',0),
  ('d1862f8f-be0c-4f83-b679-fcf3d8933d8a','brock69q281081','brockpigdon@yahoo.de','Austria','2025-06-26 05:38:36','2025-06-26 05:38:36',0),
  ('c3156f57-46b4-40a3-9258-4d89b548f50f','cortney96s','cortneysilver@yahoo.ca','Samoa (western)','2025-06-26 08:39:33','2025-06-26 08:39:33',0),
  ('f82de180-52b4-4f2e-aafa-c7ca0803b590','karihatley49115','karihatley@orange.fr','Moldova','2025-06-27 02:34:42','2025-06-27 02:34:42',0),
  ('01ea6695-3d26-4ad9-bfe2-6e5f6eddffc1','ferdinandcoburn','ferdinandcoburn@yahoo.co.uk','Brunei','2025-06-27 03:29:05','2025-06-27 03:29:05',0),
  ('9ea67d86-e58a-47da-a735-75be76407aac','dorethahealy9','dorethahealy@hotmail.co.uk','Australia','2025-06-27 05:53:55','2025-06-27 05:53:55',0),
  ('cda86615-4abd-408e-b683-407238bf4857','chiquitastuart9','chiquitastuart@gmail.com','Singapore','2025-06-27 09:02:50','2025-06-27 09:02:50',0),
  ('3f135d7a-6e39-443f-92c0-d249caa2d61d','roryfairley901','rory_fairley@gmail.com','Korea (North)','2025-06-27 15:25:24','2025-06-27 15:25:24',0),
  ('b36833b9-5bde-426b-8ba0-5ffcc5e2d79c','allenhamlett4','allenhamlett@sbcglobal.net','French Guiana','2025-06-28 12:41:02','2025-06-28 12:41:02',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('74a6e1dc-5544-474d-95a5-fff5a58ccbad','elizabetlund265','elizabetlund@hotmail.fr','Myanmar (Burma)','2025-06-28 21:07:08','2025-06-28 21:07:08',0),
  ('22148301-88d9-48fa-9227-ed68890edc81','seopemula2468q','madisonroberge@bellsouth.net','Romania','2025-06-29 15:48:15','2025-06-29 15:48:15',0),
  ('07259bc7-6275-4802-a80f-ceccfc10c270','iangreig59','ian_greig@bol.com.br','St Lucia','2025-06-30 08:33:37','2025-06-30 08:33:37',0),
  ('eeac1fb4-4dc9-48f0-82f7-9bbdcc00c11e','bobbiepatton2','bobbiepatton@libero.it','French Guiana','2025-06-30 10:39:09','2025-06-30 10:39:09',0),
  ('f7465689-4fdb-4f70-ab65-cc3ec95275a2','hattiemacnaghten','hattiemacnaghten@uol.com.br','St Martin (French)','2025-06-30 11:18:41','2025-06-30 11:18:41',0),
  ('347321cd-e450-4841-8539-a1a0e1d51bd9','chiquitakuster','chiquita.kuster@att.net','Turkey','2025-06-30 12:49:35','2025-06-30 12:49:35',0),
  ('b0e2b1bb-2caf-4c5c-9036-b17d56119ae3','solomon1560','solomon.butters@yahoo.in','Turkey','2025-06-30 15:30:15','2025-06-30 15:30:15',0),
  ('a880c904-45f1-48a2-ba5b-d17c67936fba','norbertogentle','norbertogentle@rambler.ru','Australia','2025-07-01 07:18:33','2025-07-01 07:18:33',0),
  ('5ee03ba5-0654-49b5-9ac3-979e2d467f33','jtorresgrimaldo','atorres@docentes.uat.edu.mx',NULL,'2025-07-01 11:24:33','2025-09-29 13:32:51',1),
  ('e934523f-3fe5-48c4-bd7e-201922c6d749','aivanovaboncheva','aivanova@uabcs.mx',NULL,'2025-07-01 11:41:36','2025-10-02 23:14:20',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('be8a5014-cc0e-4aef-9eaf-e5ea642a23ed','marciatrammell','marciatrammell@hotmail.co.uk','Australia','2025-07-02 03:54:18','2025-07-02 03:54:18',0),
  ('badab22e-db95-4765-8ab0-dc0a48172aa9','maricelabills58','maricela.bills@live.fr','Côte d''Ivoire','2025-07-03 12:07:52','2025-07-03 12:07:52',0),
  ('0538f5e2-9820-4d27-a654-e6d0fed3f9d1','casiebushell094','casie_bushell@yahoo.com','Vietnam','2025-07-04 01:24:41','2025-07-04 01:24:41',0),
  ('768dcd9a-6234-4e3b-a810-2ef85a005981','josefazouch92','josefazouch@hotmail.fr','Austria','2025-07-04 14:46:58','2025-07-04 14:46:58',0),
  ('c04956bf-cef1-4b6b-88bf-07079ee02ac7','hugo-huamani2025','hugo.huamani@unas.edu.pe','Peru','2025-07-04 16:42:21','2025-07-04 21:13:47',1),
  ('f4732d6e-42e5-49ba-b595-c63bea5b77a9','daubert','denisseaubert@hotmail.com','Peru','2025-07-04 23:38:05','2025-10-02 19:29:23',1),
  ('6299d2ad-efdb-4a8a-b44f-d2091b5ca735','rodaen4719','rodlajoie@rambler.ru','Australia','2025-07-05 22:24:59','2025-07-05 22:24:59',0),
  ('20e9bb68-d7c3-44c6-869f-bfb44ed71193','hollisuzv04017','hollisparer@yahoo.com','Cyprus','2025-07-06 10:15:04','2025-07-06 10:15:04',0),
  ('ac9b95ad-d2cb-4a24-bce5-c8a9d61dfef8','raymonfli52748','raymonsummerlin@gmail.com','Venezuela','2025-07-06 16:20:43','2025-07-06 16:20:44',0),
  ('a57679d8-2c68-4159-a82b-cce1da305c42','mxspablo458252','pablobehrends@free.fr','Slovenia','2025-07-07 11:54:22','2025-07-07 11:54:22',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3a69a29f-873f-4397-bc88-cb8ccb0d8ced','camillahylton','camillahylton@aol.com','Australia','2025-07-07 13:09:36','2025-07-07 13:09:36',0),
  ('8bab0de7-b245-405c-b840-f8019ffb2db6','davishornick593','davishornick@yahoo.es','Fiji','2025-07-07 15:31:06','2025-07-07 15:31:06',0),
  ('e1171af4-cb0e-4409-839b-6479ebb2f454','cbetancurhurtado','cbetancu@eafit.edu.co',NULL,'2025-07-07 15:49:48','2025-07-07 15:49:48',1),
  ('5db8b4dc-e0c5-46df-8d4e-3ed3cd071cbf','haydencoles06','haydencoles@yahoo.fr','Norfolk Island','2025-07-07 20:24:58','2025-07-07 20:24:59',0),
  ('b665ac3c-80bc-4f34-8b83-6b529f7e2dd7','tonjabruns','tonjabruns@hotmail.it','Australia','2025-07-07 23:19:39','2025-07-07 23:19:39',0),
  ('22179ad1-6f90-4442-a08c-32392ee5430d','scarlettbrassard','scarlettbrassard@yahoo.com','Australia','2025-07-08 01:05:15','2025-07-08 01:05:15',0),
  ('001729dc-cdbb-4352-b86a-fbc96af57ecc','cheryljorgenson','cheryljorgenson@gmail.com','Somalia','2025-07-08 11:31:35','2025-07-08 11:31:35',0),
  ('a3f31221-950c-4d50-a5f3-c6268db71e56','dalefnn293','dalemagrath@cox.net','Australia','2025-07-08 13:36:49','2025-07-08 13:36:50',0),
  ('eeef1e65-5189-4999-b2c4-16fc4f3f989b','nealguay56548','neal.guay@rambler.ru','Cyprus','2025-07-10 02:25:47','2025-07-10 02:25:47',0),
  ('5b4046ab-5c1a-47c6-88e3-059e982616e8','anidoriv','anidoriv@ula.ve','Venezuela','2025-07-10 06:34:58','2025-09-09 04:38:19',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4142e72b-94ee-4594-8d1a-5623a797e7ef','evangeline86u','evangelineaylward@yahoo.com','Australia','2025-07-10 11:13:24','2025-07-10 11:13:24',0),
  ('1a7250fc-3f8e-43a0-88a6-cf462197dc01','ankeligon86','ankeligon@gmail.com','Spain','2025-07-10 13:07:50','2025-07-10 13:07:50',0),
  ('69dfc4c6-5062-4442-bf83-cf65846186c5','shawnamuecke79','shawnamuecke@yahoo.com','Antarctica','2025-07-10 15:29:13','2025-07-10 15:29:14',0),
  ('c846ab03-fd59-4e59-8d66-ee5697dee6d7','barbaraguffey34','barbara_guffey@rambler.ru','Malawi','2025-07-11 12:47:05','2025-07-11 12:47:05',0),
  ('ad0376bc-8683-4d2c-9d0f-f02742bceca4','jandeboos25731','jandeboos@yahoo.es','Austria','2025-07-11 23:12:27','2025-07-11 23:12:27',0),
  ('c4826bed-4321-4020-83a9-b4dc2f454ce7','mammiecarswell','mammie_carswell@yahoo.com','Australia','2025-07-12 22:26:49','2025-07-12 22:26:49',0),
  ('7b8299e3-ba34-4f54-96f1-b9082fc93de4','flopez1','flopez@eafit.edu.co',NULL,'2025-07-13 09:52:12','2025-07-15 10:32:09',1),
  ('8865b9ca-9d1b-4b96-ba1a-218ea114b4ac','mmunera','mauricio.munera1@udea.edu.co',NULL,'2025-07-13 09:55:42','2025-07-13 09:55:42',1),
  ('b0a916ec-4a89-41ee-9c7a-bab3651d0a9f','maybelleunaipon','maybelleunaipon@hotmail.co.uk','South Georgia & the South Sandwich Islands','2025-07-14 05:16:55','2025-07-14 05:16:55',0),
  ('da381574-0b9a-48d2-b50d-b0d3ce225cbf','isabelgwin836','isabelgwin@gmail.com','Australia','2025-07-15 10:39:27','2025-07-15 10:39:27',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4b6b760f-f428-4e5f-9710-b193ca018c1c','valliehxv73','valliepotts@yahoo.com','Trinidad & Tobago','2025-07-15 12:00:10','2025-07-15 12:00:10',0),
  ('8dd1a3c9-905b-4ff2-adb1-4238560f7b15','krystle1471','krystlewhite@hotmail.fr','Belgium','2025-07-15 13:17:10','2025-07-15 13:17:10',0),
  ('c4f29cb0-2167-4cc2-b96a-21a91839fd2d','ivyburrowes','ivyburrowes@hotmail.com','Australia','2025-07-15 14:17:46','2025-07-15 14:17:47',0),
  ('08a29455-9b81-468f-9673-6edcd949e8cf','fosterrincon670','fosterrincon@hotmail.com','Gabon','2025-07-16 04:32:05','2025-07-16 04:32:05',0),
  ('b7999776-5ce8-4e69-8fb0-a1cd82837416','davidgarciaw','david.garciaw@uanl.mx','Mexico','2025-07-16 08:11:28','2025-07-16 08:13:45',1),
  ('7001be18-d030-4eea-a4e2-ee6b6699036d','pmayaduque','pablo.maya@udea.edu.co','Colombia','2025-07-17 09:22:33','2025-09-01 13:10:09',1),
  ('41321a13-d538-42b3-846e-53e8104d64d9','dolly30l80','dollyhutcherson@yahoo.it','Qatar','2025-07-17 19:03:53','2025-07-17 19:03:53',0),
  ('aff920cc-f81d-4141-b321-3df091e2ace2','harrisandes2','harrisandes@gmail.com','Vatican City','2025-07-18 18:12:16','2025-07-18 18:12:16',0),
  ('d97ffb4a-d0b6-46f6-8e17-753ca03b6f9e','devon10v5225','devon_hibbard@uol.com.br','Turkey','2025-07-18 20:25:33','2025-07-18 20:25:33',0),
  ('3e91f5e5-18c4-4b63-9c15-16d273b7f401','77175211481321','fiecmiindkdmdh_205205@yahoo.com','Germany','2025-07-19 18:05:18','2025-07-19 18:05:18',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5c9e4a64-e858-4948-b80b-9e02c1aecc34','faustinostone4','faustino_stone@yahoo.com','Cyprus','2025-07-19 20:26:44','2025-07-19 20:26:44',0),
  ('1150b2a8-59e9-424a-a0fb-28b270305666','dontes361857','dontepiquet@yahoo.com','United Arab Emirates','2025-07-20 08:20:52','2025-07-20 08:20:52',0),
  ('6a3a8cee-61f4-4dd8-a986-4e63b0be17e3','ufjsandy78216','sandyregalado@yahoo.com','Australia','2025-07-20 16:22:18','2025-07-20 16:22:18',0),
  ('3ea0afba-f2f6-4003-b359-7e774eee1b77','almedamacias0','almedamacias@live.nl','Iraq','2025-07-21 17:19:49','2025-07-21 17:19:49',0),
  ('24928823-1904-46f9-94eb-1d43184efaf3','rwylouise228','louisedarvall@yahoo.in','Mongolia','2025-07-22 16:27:18','2025-07-22 16:27:18',0),
  ('6fdaa8fc-19b4-45d1-8072-71ab566dc94f','merihardey88','merihardey@yahoo.com','Panama','2025-07-23 23:59:32','2025-07-23 23:59:32',0),
  ('6575ed6e-f598-4225-bb32-1aa89b903461','franziskamcmicha','franziska.mcmichael@yahoo.com','Japan','2025-07-24 04:59:11','2025-07-24 04:59:11',0),
  ('e97cc1b4-93c4-414d-ba29-887f2facdd01','sheliajenyns','sheliajenyns@gmail.com','Afghanistan','2025-07-24 14:22:53','2025-07-24 14:22:53',0),
  ('a2842b07-45d4-492f-a38c-bf748a283f23','augustacheney','augusta.cheney@gmail.com','French Guiana','2025-07-24 14:45:14','2025-07-24 14:45:14',0),
  ('e002fa48-2add-4da2-8ff2-ab21db3119e0','davidrdelgadom','davidr-delgadom@unilibre.edu.co','Colombia','2025-07-24 16:10:52','2025-09-04 15:01:33',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('19cd708e-9f87-45a3-87ed-a24f90484582','annettecady','annettecady@facebook.com','Mexico','2025-07-24 18:47:56','2025-07-24 18:47:56',0),
  ('f7ed58db-ca20-41a8-93bd-d36aadaf3c49','theronraphael79','theronraphael@gmail.com','Guinea-Bissau','2025-07-26 03:53:15','2025-07-26 03:53:15',0),
  ('6169279c-4691-47c5-87e1-359e390f2a62','latanyap17','latanyagottschalk@hotmail.co.uk','French Guiana','2025-07-26 04:33:08','2025-07-26 04:33:08',0),
  ('412098fa-13cd-4624-a8dd-3bc83b2c0543','dozchasity','chasitykolb@rocketmail.com','Samoa (American)','2025-07-26 13:11:08','2025-07-26 13:11:08',0),
  ('327b06f5-4c96-4281-a306-5fab9eda5b57','elvawhitty4','elva_whitty@hotmail.com','Eswatini (Swaziland)','2025-07-26 20:27:40','2025-07-26 20:27:40',0),
  ('b9437420-2fb6-4556-995b-ed4570ce3f6e','graighowarth072','graighowarth@yahoo.it','Wallis & Futuna','2025-07-27 19:50:31','2025-07-27 19:50:32',0),
  ('6cf651d9-c669-4d24-b7fa-399197bbab78','kpaulogotine','katia.marisa@estudante.ufcg.edu.br',NULL,'2025-07-27 22:32:59','2025-08-15 16:20:09',1),
  ('688ce834-7131-474f-a3ec-f8525fff261f','christimcveigh2','christimcveigh@sfr.fr','Austria','2025-07-28 06:27:02','2025-07-28 06:27:02',0),
  ('7ecd7cc1-397b-4c6e-aa8f-6cef373f686a','hermelindao40','hermelinda.wilks@yahoo.com','Korea (South)','2025-07-28 08:27:33','2025-07-28 08:27:33',0),
  ('55e378b1-208a-458d-8bdd-c932e1a854f1','chloealston42','chloealston@msn.com','Niue','2025-07-28 11:29:14','2025-07-28 11:29:14',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('bfcb00be-2c5f-40e9-8e8a-7ffb80edfcb5','xavierbernays3','xavier_bernays@aol.com','Burundi','2025-07-28 18:05:00','2025-07-28 18:05:00',0),
  ('3a3293c6-d311-48c4-9c4b-cdc1a67c4e25','nataliabarfield','nataliabarfield@bigpond.com','Austria','2025-07-29 04:00:42','2025-07-29 04:00:42',0),
  ('2b4d6cca-2b58-47ee-b17f-1852fac83c8d','jaimetriggs9944','jaime_triggs@yahoo.com','Malawi','2025-07-29 10:27:21','2025-07-29 10:27:21',0),
  ('78b252d7-461f-4b2c-8afc-438d17dfd08a','saulfritzsche2','saul_fritzsche@outlook.com','Ethiopia','2025-07-29 11:19:40','2025-07-29 11:19:41',0),
  ('4938a23c-6b6c-4e24-ae21-59554fb186e0','vilmametzler0','vilmametzler@hotmail.com','Lebanon','2025-07-30 01:07:41','2025-07-30 01:07:41',0),
  ('78544f8b-8a9b-4782-9e8a-c487669d24aa','lanu41010876','lan.smithson@gmail.com','Burundi','2025-07-30 17:47:03','2025-07-30 17:47:03',0),
  ('3ce37861-5cab-4710-9bed-1a36f34352f5','benito1091','benito.dreher@googlemail.com','Australia','2025-07-30 20:23:39','2025-07-30 20:23:39',0),
  ('3319ee81-3dc6-4555-aeab-a0e91345924d','violette90a','violetteworthington@gmail.com','Madagascar','2025-07-31 01:45:22','2025-07-31 01:45:22',0),
  ('9667b893-b77e-455b-9b49-c3123e9c4051','adanparramore7','adanparramore@charter.net','Mozambique','2025-07-31 04:03:22','2025-07-31 04:03:22',0),
  ('18db10df-0728-4871-a990-bcdca118145c','raymundostarks','raymundostarks@googlemail.com','Ukraine','2025-07-31 14:54:45','2025-07-31 14:54:45',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b7c46b76-3851-4914-afd3-a55687e6869e','raeh106657524','raeweymouth@rocketmail.com','Singapore','2025-07-31 22:56:43','2025-07-31 22:56:43',0),
  ('ee9ba81c-94c5-44bf-9df0-244b55e3da3b','luciowilsmore08','luciowilsmore@yahoo.co.in','Central African Rep.','2025-08-01 13:59:00','2025-08-01 13:59:00',0),
  ('e4ef2c59-206a-409c-8108-f894ada853a9','3863749389454555','cc.phbgcdmdfdp@yahoo.com','Virgin Islands (UK)','2025-08-01 17:45:59','2025-08-01 17:45:59',0),
  ('a412e820-5f30-43de-a567-be904a4b0c04','elouiselegg379','elouiselegg@yahoo.com','Vietnam','2025-08-02 01:34:25','2025-08-02 01:34:25',0),
  ('e526ae2d-1144-4bf6-8db4-afaca0f8fb8c','stephanystuber','stephany.stuber@gmail.com','Belarus','2025-08-02 10:15:04','2025-08-02 10:15:04',0),
  ('cdf984f6-49c7-4867-ba45-4cbb1573c694','sheenafenstermac','sheena.fenstermacher@hotmail.com','Namibia','2025-08-02 19:16:07','2025-08-02 19:16:07',0),
  ('bc15fa16-757b-49e0-b813-1ce27a73ec08','alexhagan61649','alexhagan@uol.com.br','Austria','2025-08-03 10:41:53','2025-08-03 10:41:53',0),
  ('798c97be-7fdc-4780-921b-9c324a048b1a','mablesimonson42','mablesimonson@gmail.com','Nigeria','2025-08-03 13:12:23','2025-08-03 13:12:23',0),
  ('471bf684-b80a-4682-afb0-1c469dead3dd','minnasbv0555','minnatroedel@gmail.com','Austria','2025-08-03 18:13:45','2025-08-03 18:13:45',0),
  ('dc86f20e-f97c-4df8-9b3c-5d6c68d78d05','brooktrott8551','brooktrott@yahoo.co.in','Macau','2025-08-03 21:35:11','2025-08-03 21:35:11',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('a508febb-80e8-47f8-949a-cc5289cb53be','felicia95o','felicia_lynch@hotmail.com','French Guiana','2025-08-04 05:39:36','2025-08-04 05:39:36',0),
  ('5307ee48-6e76-41e6-b924-4f780d75e77e','gloriadurden','gloriadurden@rocketmail.com','Belize','2025-08-04 10:38:35','2025-08-04 10:38:35',0),
  ('6d4a06e5-550e-463f-b4a3-aa298be6ef1f','candramacneil8','candramacneil@ymail.com','Austria','2025-08-04 12:36:41','2025-08-04 12:36:41',0),
  ('e40923c2-bd59-4676-838f-599d1f80076b','lavernhills4177','lavernhills@hotmail.com','San Marino','2025-08-04 19:59:22','2025-08-04 19:59:22',0),
  ('74b35092-7d01-4c65-9231-0d7effae76a2','jesus30f79410','jesus_mcnair@gmail.com','Marshall Islands','2025-08-05 00:08:46','2025-08-05 00:08:46',0),
  ('25d87c1f-6867-47f3-ada5-87927856f31f','madeline2770','madelinecanales@web.de','Vanuatu','2025-08-05 12:22:32','2025-08-05 12:22:32',0),
  ('a177776a-c2ba-4883-8522-3dd0e45a57e6','charai8868','charaperrier@hotmail.com','Bosnia & Herzegovina','2025-08-05 13:26:12','2025-08-05 13:26:12',0),
  ('6f717183-1752-4794-87a8-5667e0c152cc','charissalithgow','charissalithgow@yahoo.com','Ukraine','2025-08-05 18:46:20','2025-08-05 18:46:20',0),
  ('eca9fac3-1474-4d44-b567-157af1d4174c','susiegoossens2','susiegoossens@yahoo.com.au','Tajikistan','2025-08-06 06:32:51','2025-08-06 06:32:51',0),
  ('b10a67f4-41c7-44c1-84ef-24d60a2bafd2','valoried40','valoriekruttschnitt@live.fr','French Guiana','2025-08-06 08:56:08','2025-08-06 08:56:08',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('00bb7121-6f55-44f3-a060-a39c2cdec6ea','crystleosburne','crystle.osburne@gmail.com','Burkina Faso','2025-08-06 12:17:08','2025-08-06 12:17:08',0),
  ('b2bb5718-8657-4367-8c2a-7b4d746772c6','ewansheahan30','ewansheahan@yahoo.com','Hong Kong','2025-08-06 18:55:54','2025-08-06 18:55:54',0),
  ('1b9699b7-f161-4121-99a4-294a262aa4ee','rosalinedelancey','rosalinedelancey@orange.fr','French S. Terr.','2025-08-06 21:50:29','2025-08-06 21:50:29',0),
  ('17a94d8c-ea09-4674-a94c-4e533ec7d01e','jeffrystephens','jeffry_stephens@live.com','Australia','2025-08-07 00:22:13','2025-08-07 00:22:13',0),
  ('1753ec02-9493-496e-be13-ebb229af285d','isabellchilders','isabellchilders@msn.com','French Guiana','2025-08-07 04:49:51','2025-08-07 04:49:51',0),
  ('800c7347-9e58-44b5-8dcb-cd335eda85c1','hoseaabney6925','hosea_abney@terra.com.br','Falkland Islands','2025-08-07 07:47:26','2025-08-07 07:47:27',0),
  ('be3b8a2b-b60e-4a83-af4b-b9f8e6247b3d','krystle9541','krystlehunley@rocketmail.com','Kiribati','2025-08-07 13:26:29','2025-08-07 13:26:30',0),
  ('62f99ea7-828a-4bed-b055-538c5dc7c73e','guyangelica','angelicademaio@sfr.fr','Togo','2025-08-07 16:27:01','2025-08-07 16:27:01',0),
  ('fc7907d9-324d-47e1-9a32-2116e6d44f20','dyanono94805108','dyan.ono@yahoo.com','Sweden','2025-08-07 16:56:32','2025-08-07 16:56:32',0),
  ('fbe5e746-2257-48f6-9f9d-2bb0245070ff','caseymcgrew7','caseymcgrew@gmail.com','Australia','2025-08-07 18:15:33','2025-08-07 18:15:33',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e7778516-2019-450e-bd40-ab9098b88073','joaquin200426','moralesjoaquin200426@gmail.com','Chile','2025-08-08 16:33:20','2025-08-19 11:01:51',1),
  ('4fa892b0-5737-42a5-9bb9-477b2c26e6da','irvinge71085','irving.beacham@live.fr','Azerbaijan','2025-08-08 17:42:22','2025-08-08 17:42:22',0),
  ('1ab7861e-344e-4229-904d-67982166711d','nanstandish3','nanstandish@aol.com','Netherlands','2025-08-08 23:10:40','2025-08-08 23:10:40',0),
  ('8d181e2c-e372-4410-9f3b-f16756b2316b','tarahspragg9','tarahspragg@hotmail.com','Mayotte','2025-08-09 01:59:04','2025-08-09 01:59:04',0),
  ('62f28df2-08cf-4274-982e-f798ed482a83','teddyirons4069','teddyirons@gmail.com','Uruguay','2025-08-09 03:20:36','2025-08-09 03:20:36',0),
  ('b11f3b53-247c-4379-affa-7801f32ff436','imaleworthy3044','imaleworthy@yahoo.com','Micronesia','2025-08-09 09:23:42','2025-08-09 09:23:42',0),
  ('b7ae7664-3b74-4b46-9bc3-e576551b3e74','jannettey91','jannettescaddan@wanadoo.fr','Eswatini (Swaziland)','2025-08-09 12:53:11','2025-08-09 12:53:12',0),
  ('638eed3d-c9bd-4e09-b96f-624e797aa22f','lucia82z1713067','lucia_simpkins@aol.com','Kyrgyzstan','2025-08-09 16:47:06','2025-08-09 16:47:07',0),
  ('5f22e0c7-d3fb-4dac-a3d3-f625c89b8e66','georgeloftis25','georgeloftis@gmail.com','Congo (Dem. Rep.)','2025-08-09 17:35:00','2025-08-09 17:35:00',0),
  ('ff73e707-068f-4481-a334-9b1a7e76f883','nichol5112','nichol_renwick@sbcglobal.net','Finland','2025-08-09 18:14:06','2025-08-09 18:14:06',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('97527b7e-ca37-4a79-a222-3f6540d4bf38','kerriepetty57','kerriepetty@yahoo.com','Morocco','2025-08-09 21:49:49','2025-08-09 21:49:49',0),
  ('c7d31a58-3281-443d-8269-3b0f88627a85','mosescrittenden','mosescrittenden@yahoo.com','Australia','2025-08-09 22:35:44','2025-08-09 22:35:44',0),
  ('c9777e9c-b741-4fdb-8a40-0d8be4e19fce','vedavitale972','vedavitale@yahoo.com','Brazil','2025-08-10 01:45:24','2025-08-10 01:45:24',0),
  ('a4088c47-70c1-4400-add2-8c4e10cb37c8','wilberthardey07','wilberthardey@charter.net','Niue','2025-08-10 01:59:19','2025-08-10 01:59:19',0),
  ('0990526a-9205-401a-a8e6-d25638e44551','markshirk8','markshirk@hotmail.co.uk','Chad','2025-08-10 03:22:13','2025-08-10 03:22:13',0),
  ('320b616b-e6c3-446f-b5b4-7a4869a9b97c','efrainjasprizza','efrainjasprizza@gmail.com','Cape Verde','2025-08-10 06:43:28','2025-08-10 06:43:28',0),
  ('56366b8a-b4ce-4a29-9957-7becc9994c39','britt98z62339090','britt_burrow@yandex.ru','Austria','2025-08-10 08:09:57','2025-08-10 08:09:57',0),
  ('fc19de60-5020-4452-8c01-6b29652de66d','chelseachelmsfor','chelseachelmsford@gmail.com','Syria','2025-08-10 15:21:05','2025-08-10 15:21:05',0),
  ('943795b1-94de-45d1-a4b5-a9d3032437e6','colin47j51644527','colinlefler@yahoo.com','Costa Rica','2025-08-10 21:53:51','2025-08-10 21:53:51',0),
  ('85b89963-dbc5-48ea-bb25-f968c7b4e131','hwwmariana','marianatost@bol.com.br','Vanuatu','2025-08-11 00:35:47','2025-08-11 00:35:47',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('67c922a6-95b6-477b-a427-85ffaa1a885a','valerielund0478','valerie_lund@terra.com.br','Latvia','2025-08-11 00:37:45','2025-08-11 00:37:46',0),
  ('85826a4f-a436-4fca-ba36-d8adf2b0194e','joseparra9057','joseparra9057@correo.itm.edu.co','Colombia','2025-08-11 11:46:42','2025-08-11 11:47:32',1),
  ('e9fcf50d-4100-4a36-9d1e-db3985896bb7','naomimortensen2','naomimortensen@aol.com','Kyrgyzstan','2025-08-11 21:42:06','2025-08-11 21:42:06',0),
  ('80c354e5-2552-4fb9-bf81-ff2cff18e34e','concettamullagh','concettamullagh@yahoo.ca','Latvia','2025-08-12 00:40:09','2025-08-12 00:40:09',0),
  ('ff3658be-194f-40c4-ac4d-67bb3d25c371','dsmnatalie','nataliehunger@bigpond.com','Virgin Islands (US)','2025-08-12 23:16:46','2025-08-12 23:16:46',0),
  ('e6a7de44-9bbc-4deb-a385-05895b09e49c','lashondasad','lashonda_wilfong@sbcglobal.net','French Guiana','2025-08-13 09:01:25','2025-08-13 09:01:25',0),
  ('5ebbcf82-0ac8-4c8a-8bd7-9907e4f82ad4','mariazapat','maria.zapata7@udea.edu.co','Colombia','2025-08-13 10:25:57','2025-08-13 10:26:22',1),
  ('fbbed42f-ec30-4f3d-a601-525a3222c476','gladisfulkerson','gladisfulkerson@gmail.com','Australia','2025-08-13 11:08:55','2025-08-13 11:08:55',0),
  ('b5181423-e225-4e5d-b308-253f7f459073','kurttinline','kurttinline@att.net','Korea (North)','2025-08-13 11:10:51','2025-08-13 11:10:51',0),
  ('b1342bb7-77e1-414f-9b77-f151b21156ea','barneypagan589','barney.pagan@hotmail.co.uk','Austria','2025-08-13 12:53:24','2025-08-13 12:53:24',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7fb0c4c0-4604-4659-a1ff-2c4ec03527f8','felicitaswoolner','felicitaswoolner@yahoo.com','French Guiana','2025-08-13 14:44:14','2025-08-13 14:44:14',0),
  ('d6657040-672e-4562-9cc2-19ccc7d1056f','emmanau849','emma.gholson@gmail.com','Rwanda','2025-08-13 19:27:41','2025-08-13 19:27:41',0),
  ('b9b03331-8ceb-4a0f-8dc5-624bc6db51a8','anneflemming9','anne_flemming@yahoo.com','Cuba','2025-08-13 23:42:16','2025-08-13 23:42:16',0),
  ('57daea05-d627-4abd-bae4-20fb8ddca2fe','dariosearle9','dariosearle@hotmail.com','French Guiana','2025-08-14 03:49:43','2025-08-14 03:49:43',0),
  ('7dcfd759-933a-40db-abdd-03fa622cf0f3','elviabatchelor','elviabatchelor@yahoo.es','Australia','2025-08-14 10:52:33','2025-08-14 10:52:33',0),
  ('ce0cbd5b-f81c-419c-b45e-ddfc34757c46','wilfordepstein1','wilfordepstein@facebook.com','French Guiana','2025-08-14 15:17:02','2025-08-14 15:17:03',0),
  ('e12ae51c-393c-49f5-a00f-adbe3caf2e02','luellakujawski','luellakujawski@charter.net','Tonga','2025-08-14 15:42:19','2025-08-14 15:42:19',0),
  ('8bc3f7c2-e902-44d6-ae40-f09c4ae66a0f','zenaidanowland8','zenaidanowland@gmail.com','Sierra Leone','2025-08-14 17:09:07','2025-08-14 17:09:07',0),
  ('8f228aa0-2dbd-42a6-9db7-3bee77535321','whcloreen4','loreen_dowdell@cox.net','French Polynesia','2025-08-14 17:12:25','2025-08-14 17:12:25',0),
  ('4ffec1df-9a13-4257-a89b-4fd7ef055756','jpablo','jprestrepob@correo.iue.edu.co','Colombia','2025-08-14 18:32:37','2025-08-15 12:40:56',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b814030f-0625-4b6e-84ed-874e1d123546','arleencourts','arleencourts@yahoo.co.in','French Guiana','2025-08-14 20:55:05','2025-08-14 20:55:05',0),
  ('3e58d7ae-9880-477b-a60f-764a0f053f73','carmeloslaton81','carmelo_slaton@hotmail.com','Grenada','2025-08-15 00:57:58','2025-08-15 00:57:58',0),
  ('655c47eb-b1b2-496b-ac92-377e0df55faf','herminefarias48','hermine_farias@hotmail.fr','Serbia','2025-08-15 02:51:50','2025-08-15 02:51:50',0),
  ('03c93d37-7cb1-4a8f-875b-fd20420f164d','onomichel6418','michel_greenleaf@outlook.com','French S. Terr.','2025-08-15 04:16:49','2025-08-15 04:16:49',0),
  ('aa86221f-2f05-416c-a127-11606bc42229','karrylindsey82','karrylindsey@yahoo.com.au','Montserrat','2025-08-15 06:16:57','2025-08-15 06:16:57',0),
  ('02154936-d3a0-4591-b0d5-680e98adabc3','cathystegall889','cathystegall@yahoo.ca','Australia','2025-08-15 07:37:34','2025-08-15 07:37:34',0),
  ('645a8071-d9d6-49c4-8938-7e2a95ed5b94','kristinavdz','kristinacopeland@gmail.com','Angola','2025-08-15 09:00:13','2025-08-15 09:00:13',0),
  ('c8be2e33-50b3-457a-a7ba-44e37ab2dac0','margheritadodson','margheritadodson@gmail.com','Finland','2025-08-15 22:53:55','2025-08-15 22:53:55',0),
  ('b3de90b2-e0c3-40ad-bdd3-a59b433ccf9b','allisonhoff6','allisonhoff@rocketmail.com','Benin','2025-08-15 23:16:41','2025-08-15 23:16:41',0),
  ('b03d072f-df67-445e-9cb9-4837e1b4abb1','emilymarkham276','emilymarkham@live.com','Guernsey','2025-08-16 01:16:08','2025-08-16 01:16:08',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('788d7bfb-76c6-4927-980b-a56b5c738347','ricoleibius4','rico.leibius@yahoo.com.au','French Guiana','2025-08-16 03:01:34','2025-08-16 03:01:34',0),
  ('961485cc-0e75-4d07-8f26-7c1da0c4d3f2','malcolm6505','malcolm.griffie@yahoo.it','Puerto Rico','2025-08-16 12:45:53','2025-08-16 12:45:53',0),
  ('723f3ecc-2165-4244-a8b0-3abd0d875e9c','samuelgomez1103','samuellgomezluna@gmail.com','Colombia','2025-08-16 16:46:25','2025-08-16 16:48:10',1),
  ('5464af5d-0668-4143-ba0e-83fb7b48b246','revafabro9','revafabro@live.fr','Austria','2025-08-17 11:46:45','2025-08-17 11:46:45',0),
  ('06c8e024-59f6-42ef-ac85-b103bde92df0','jbautista','abautistaj@unal.edu.co',NULL,'2025-08-17 13:31:31','2025-09-17 22:14:42',1),
  ('357012f8-843e-4693-be96-fd64db6fc1b5','maeritter2','maeritter@live.com','Colombia','2025-08-17 17:12:04','2025-08-17 17:12:04',0),
  ('a50aa0fe-e2e6-4cc0-8e7c-374386eb759a','jakesnell9','jakesnell@yahoo.com','Haiti','2025-08-18 07:07:43','2025-08-18 07:07:43',0),
  ('958ff162-f117-4de4-8013-6511709fc3c0','mitchellqd','mitchelwhitlock@aol.com','St Maarten (Dutch)','2025-08-18 10:36:27','2025-08-18 10:36:27',0),
  ('ca51f35c-49bd-4319-8f80-8b55e279b190','harris2342','harrisraymond@hotmail.fr','Australia','2025-08-18 11:37:42','2025-08-18 11:37:43',0),
  ('59593aa8-704f-4673-beed-115cb9bfd043','gloryblock75544','gloryblock@facebook.com','French Guiana','2025-08-18 17:05:55','2025-08-18 17:05:55',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('88a97154-8c8c-4df8-affc-cf06ff8844a5','dannyibarra','danny.ibarra@udea.edu.co','Colombia','2025-08-18 18:01:30','2025-08-19 14:28:03',1),
  ('aabc61da-538b-445c-88f7-0b956755e772','tyrellgregson0','tyrellgregson@yahoo.com','Austria','2025-08-19 03:14:39','2025-08-19 03:14:39',0),
  ('cabfcb6e-da87-4d67-ac66-c46fb0916340','mindahiggins7','mindahiggins@libero.it','French Guiana','2025-08-19 07:55:19','2025-08-19 07:55:19',0),
  ('6f7e8e2f-dadb-4ab4-9902-7ad87cf4cafc','geniabecerra6','genia.becerra@sbcglobal.net','Norway','2025-08-19 09:56:45','2025-08-19 09:56:45',0),
  ('591186fc-725e-44bc-84e8-6fc31da1de62','jewellanthony3','jewell.anthony@live.com','Togo','2025-08-19 17:47:20','2025-08-19 17:47:20',0),
  ('840cb204-41ea-4937-8a28-bfdaf935d1ba','bernicegriego6','bernice.griego@hotmail.co.uk','Botswana','2025-08-19 19:13:21','2025-08-19 19:13:21',0),
  ('739c6920-27e0-4602-92e8-79567b6c7eb9','curtisfosbrook5','curtisfosbrook@ig.com.br','Australia','2025-08-19 21:52:51','2025-08-19 21:52:51',0),
  ('fd26f040-3d44-4de0-b74d-116e26231f5a','suesiegel688','sue.siegel@yahoo.com','Liberia','2025-08-19 23:34:14','2025-08-19 23:34:14',0),
  ('75b356b9-0ecb-464e-9196-2acb7c715e4f','kathrinbravo332','kathrinbravo@comcast.net','Kenya','2025-08-20 08:50:40','2025-08-20 08:50:40',0),
  ('eeb8518d-1d35-49e8-bda3-890a62ccb27c','gia176505351','giaglover@yahoo.fr','Dominican Republic','2025-08-20 12:45:25','2025-08-20 12:45:25',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('91000177-91fc-480b-a7fb-5485cf565303','lucioleyva711','lucioleyva@yahoo.com','French Guiana','2025-08-20 16:34:42','2025-08-20 16:34:42',0),
  ('240da03a-fcb7-45b7-b49f-b0f1cea04fa0','oortizvelasquez','oscardarioo@gmail.com',NULL,'2025-08-20 16:50:32','2025-08-22 11:15:17',1),
  ('8d869f0a-1835-497f-b22c-a0b2b1cf3b4e','brianhammett31','brianhammett@gmail.com','Micronesia','2025-08-20 21:46:12','2025-08-20 21:46:12',0),
  ('0cb51653-2f69-4197-9d25-382c48dbf226','colleenclemente','colleenclemente@rediffmail.com','Latvia','2025-08-21 03:06:22','2025-08-21 03:06:22',0),
  ('5fc1e9c8-130e-4de2-9463-e56171cf46dc','hymanradcliffe','hyman_radcliffe@hotmail.com','Ecuador','2025-08-21 07:03:35','2025-08-21 07:03:35',0),
  ('15b94525-01ed-4c62-8c7f-4e07f33d5ce5','emeliaazk2757','emeliapoole@yahoo.com','Laos','2025-08-21 22:00:07','2025-08-21 22:00:07',0),
  ('f440f558-4b74-48c6-8727-2ab653dc5d8d','klaudiagoloubev','klaudia.goloubev@gmail.com','French Guiana','2025-08-22 00:57:30','2025-08-22 00:57:30',0),
  ('639348ed-4242-410d-a6dc-793c37968e9e','yanirapak098503','yanirapak@hotmail.com','Eswatini (Swaziland)','2025-08-22 01:30:04','2025-08-22 01:30:04',0),
  ('7eabce89-5a31-4d62-8951-a370da4d0ebc','andrewbleakley','andrewbleakley@att.net','Australia','2025-08-22 05:57:21','2025-08-22 05:57:21',0),
  ('5303dc8a-1453-4376-9e4b-8cfbe9febd0e','romann52984','romancambage@gmail.com','Moldova','2025-08-22 07:44:14','2025-08-22 07:44:14',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('fa3569e7-26d9-43bb-af9f-27852e35f989','abbeyrickett','abbeyrickett@laposte.net','Bosnia & Herzegovina','2025-08-22 08:20:53','2025-08-22 08:20:53',0),
  ('11ff13cb-5873-49c5-b6ca-6a204944dc86','emilehair686395','emilehair@laposte.net','Australia','2025-08-22 13:22:22','2025-08-22 13:22:22',0),
  ('a53f8b62-d5fe-4bf6-9e79-27afa65b03e1','cheriey0565','cherie_yabsley@yahoo.com','Central African Rep.','2025-08-22 13:34:49','2025-08-22 13:34:49',0),
  ('d1ab26e6-fa60-46f2-8a7b-149b6cea6122','jerilynsuter40','jerilyn.suter@hotmail.co.uk','Angola','2025-08-22 19:14:54','2025-08-22 19:14:54',0),
  ('f3c6680f-b3ea-4512-ba5b-9c8c16583c1b','woodrowconway','woodrowconway@outlook.com','Panama','2025-08-22 21:14:09','2025-08-22 21:14:10',0),
  ('b8d08d05-e10d-4739-86ec-0f74f3e5e5cf','carmenvlq512485','carmengowlland@sbcglobal.net','Lesotho','2025-08-23 02:33:28','2025-08-23 02:33:28',0),
  ('acb2c2a9-4e4d-4017-a6ee-ef3153ee6cc2','deweysanto139','dewey.santo@mail.ru','Mayotte','2025-08-23 08:32:17','2025-08-23 08:32:17',0),
  ('99dbf673-2fdf-4eb6-bfec-f95145ada525','freemanred','freeman_wiggins@gmail.com','Niger','2025-08-23 10:47:17','2025-08-23 10:47:17',0),
  ('bcb5dc2e-36ba-41a3-8020-675688328b68','wilhelminaclemmo','wilhelminaclemmons@yahoo.com.br','French Guiana','2025-08-23 16:00:47','2025-08-23 16:00:48',0),
  ('27f7fe94-c967-4798-8491-9fbf817aa959','augustinachampio','augustinachampion@alice.it','Austria','2025-08-23 20:35:19','2025-08-23 20:35:19',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('0b2e8145-e330-4ebb-97df-28473598e6b1','flossieleichhard','flossieleichhardt@bol.com.br','Gibraltar','2025-08-24 08:26:01','2025-08-24 08:26:01',0),
  ('c129835f-7734-4ccd-80d7-5bad5808d632','lidacranswick','lida.cranswick@rambler.ru','Syria','2025-08-25 05:26:03','2025-08-25 05:26:03',0),
  ('6b0ad82d-3396-4575-a560-1f299614675e','jenscollee','jenscollee@yahoo.com','French Guiana','2025-08-25 06:25:35','2025-08-25 06:25:35',0),
  ('a26792e7-c0d3-4ecd-b710-5f3e1afe9e07','kristallanglands','kristallanglands@att.net','Canada','2025-08-25 07:04:07','2025-08-25 07:04:07',0),
  ('f6e04dc2-686c-47cf-b7ed-c3dc853af0b7','christoperprosse','christoperprosser@terra.com.br','Cuba','2025-08-25 09:28:50','2025-08-25 09:28:50',0),
  ('5e4cc5fb-3a3e-45d0-a491-b9b9de2358dd','samirakarn03','samirakarn@live.com','Austria','2025-08-25 09:53:31','2025-08-25 09:53:31',0),
  ('c71a6652-1d78-4b80-ba1a-fa6c8ad67ad6','jeramy5248','jeramyeason@aol.com','French Guiana','2025-08-25 10:45:35','2025-08-25 10:45:35',0),
  ('effbf3c8-a69e-4842-a9c7-3bb7cca24f88','fquinchemartin','flquinchem@unal.edu.co',NULL,'2025-08-25 10:45:58','2025-09-08 12:36:45',1),
  ('68bcda05-8f92-41a6-97ab-d88897b3e903','melinabethune','melinabethune@free.fr','Falkland Islands','2025-08-25 10:47:32','2025-08-25 10:47:32',0),
  ('dfbbd624-a4ef-4daf-b4da-5f8e673df6b2','shantellquinn78','shantell.quinn@rocketmail.com','Australia','2025-08-25 11:17:32','2025-08-25 11:17:32',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('cb6a7ac0-d6e9-4ced-971c-a28df97557cc','dustinbermudez6','dustin.bermudez@yahoo.com','Sri Lanka','2025-08-25 13:41:28','2025-08-25 13:41:28',0),
  ('e38eaf6a-9edc-49ba-bbf0-29ab1a8b7431','royalbusby20','royalbusby@yahoo.com','Qatar','2025-08-25 14:49:43','2025-08-25 14:49:43',0),
  ('4e45bf68-65da-46ae-b0fd-a695ec54a439','dennyiyb84099777','dennyburing@yahoo.com','Germany','2025-08-25 23:05:27','2025-08-25 23:05:27',0),
  ('dc5ac4b7-0b35-427e-a6fc-e0c22e86d943','nevagholson4461','nevagholson@sfr.fr','Uruguay','2025-08-26 03:08:34','2025-08-26 03:08:34',0),
  ('6f94c068-d9c3-43c8-b6d2-bc9bf7334ec5','redazlb47807025','reda.froggatt@live.fr','Sierra Leone','2025-08-26 05:47:03','2025-08-26 05:47:03',0),
  ('a7a542df-e331-43a9-9cb8-b89c4f35235b','jaymefarthing52','jaymefarthing@gmail.com','Greenland','2025-08-26 09:31:53','2025-08-26 09:31:53',0),
  ('7bbd9c47-5e80-472d-b62a-1c6afb311749','birgitdick7','birgitdick@wanadoo.fr','Cambodia','2025-08-26 14:02:13','2025-08-26 14:02:13',0),
  ('e289d000-2557-406e-90d3-ae6d0b7c77dd','israelbeale08','israelbeale@rambler.ru','Gambia','2025-08-26 14:41:05','2025-08-26 14:41:05',0),
  ('c731c930-ccfd-4ace-af69-a3b660cc5a91','milesmartinez6','miles.martinez@gmail.com','Bermuda','2025-08-26 19:41:30','2025-08-26 19:41:30',0),
  ('d989ff41-cf46-4596-93c7-66b1c11fe441','tiffanixgb','tiffanislemp@yahoo.com','Belgium','2025-08-26 21:55:36','2025-08-26 21:55:36',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2e3eb32f-1ed2-43e2-9caf-7f1c64faf078','jademaxwell2874','jademaxwell@yahoo.com','Australia','2025-08-26 23:27:13','2025-08-26 23:27:13',0),
  ('d715868c-f9e4-4023-94d4-832b9d56b588','deboramatthes61','deboramatthes@hotmail.it','Syria','2025-08-27 00:17:25','2025-08-27 00:17:25',0),
  ('b61854cc-ba22-4ad0-aba3-bb490066529e','iupjewell8504404','jewelllovekin@aol.com','Australia','2025-08-27 02:55:37','2025-08-27 02:55:37',0),
  ('92c4d4d5-e360-4890-8823-b6a1e9eeec63','hermaneiffel62','herman.eiffel@yahoo.ca','Chile','2025-08-27 05:01:50','2025-08-27 05:01:50',0),
  ('be3837b6-8f4d-40a1-9570-7cab1ecf5ee5','minnahuggins1','minnahuggins@yahoo.com','Antigua & Barbuda','2025-08-27 07:18:53','2025-08-27 07:18:53',0),
  ('39b787af-de94-45de-b054-938fd9caed5a','adelaidajoslyn','adelaidajoslyn@verizon.net','Kazakhstan','2025-08-27 10:14:11','2025-08-27 10:14:11',0),
  ('7a6345cc-ead8-4149-8726-06702014d69d','archermulvany64','archermulvany@bellsouth.net','French Guiana','2025-08-27 10:28:06','2025-08-27 10:28:06',0),
  ('b994f139-221b-4d50-8b72-a6d24f6598a9','jeffersonvanotte','jeffersonvanotterloo@hotmail.com','Austria','2025-08-27 10:50:10','2025-08-27 10:50:10',0),
  ('2471a18f-7d3a-4c76-a1a2-9fd01be55d8e','seleneplu499','selenelarose@yahoo.es','Grenada','2025-08-27 10:59:48','2025-08-27 10:59:49',0),
  ('5ae38194-6b76-458f-a21a-ffedc48efac3','rubyezln44672','rubye.penrod@yahoo.com','Austria','2025-08-27 15:00:45','2025-08-27 15:00:45',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('b03769ea-b5e5-4003-a9c4-3a2795f9b4e8','gretawhittingham','gretawhittingham@aol.com','St Martin (French)','2025-08-27 17:03:38','2025-08-27 17:03:38',0),
  ('1c7c90be-41ce-4bb8-adc8-7c78df685986','miamcculloch','mia_mcculloch@laposte.net','Belize','2025-08-27 17:24:11','2025-08-27 17:24:11',0),
  ('186fe468-f092-4510-a595-8acc5b93ed64','kristalschwartz','kristalschwartz@bol.com.br','Kuwait','2025-08-27 21:00:29','2025-08-27 21:00:29',0),
  ('9f276eb7-d353-43ff-80a8-0cde53c434d2','tysonwilding','tyson.wilding@yahoo.com','Poland','2025-08-27 21:12:18','2025-08-27 21:12:18',0),
  ('71b6272a-abb6-4d51-a6f5-d83e96f46bf0','shavonne24t','shavonneosullivan@facebook.com','Belize','2025-08-27 22:51:24','2025-08-27 22:51:24',0),
  ('a6815f6c-c7f9-4bfe-b4fd-d2da7ceffca6','jeromecolvin','jeromecolvin@aol.com','French Guiana','2025-08-28 00:48:43','2025-08-28 00:48:43',0),
  ('5b769eff-14f6-425b-ab26-36f850924a63','arlettehartman0','arlette_hartman@yahoo.com','Guatemala','2025-08-28 00:53:41','2025-08-28 00:53:41',0),
  ('fc8de9de-fca2-4ecb-855f-8c990e31f14e','magaretm77','magaretsasaki@yahoo.de','Liechtenstein','2025-08-28 01:49:31','2025-08-28 01:49:31',0),
  ('b3a3ef42-c302-4190-9a44-0433b532600f','katricecalkins0','katricecalkins@outlook.com','Lithuania','2025-08-28 02:30:15','2025-08-28 02:30:16',0),
  ('eaf462d4-3eaf-4a90-991d-e1f2dae4a6eb','randellshowers9','randell.showers@att.net','Zimbabwe','2025-08-28 02:34:43','2025-08-28 02:34:43',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('de163ca9-4089-4eef-b773-463337e3cb38','leta61z791938','letavoyles@yahoo.com','Mexico','2025-08-28 04:11:02','2025-08-28 04:11:02',0),
  ('fa8c799c-9431-4d7f-a6bd-28f197486d11','ariellelassiter','ariellelassiter@hotmail.com','Denmark','2025-08-28 07:25:43','2025-08-28 07:25:43',0),
  ('3aecc734-04e6-4abf-b5d6-ebeb76ff2317','wsfdaniella','daniellakiley@yahoo.com','Palau','2025-08-28 08:15:45','2025-08-28 08:15:45',0),
  ('2c1e543d-295f-467b-811d-fe6d7ef3e01a','timothylamarr3','timothylamarr@gmail.com','Seychelles','2025-08-28 08:25:18','2025-08-28 08:25:19',0),
  ('bc9b8544-c280-4cb8-9d87-5020d270b0f7','rustyq0502079','rustyedmond@yahoo.in','Dominica','2025-08-28 08:45:36','2025-08-28 08:45:36',0),
  ('bb2d8470-7163-4796-8f31-ccf26c0bd8d8','louspiro481165','louspiro@hotmail.fr','Libya','2025-08-28 09:43:38','2025-08-28 09:43:38',0),
  ('fabb32ba-d824-4b6e-ac36-70462b383849','judsonloya68','judsonloya@hotmail.fr','Philippines','2025-08-28 11:15:45','2025-08-28 11:15:45',0),
  ('751e7121-84e2-45f7-aff3-7bc6e2c3c93d','michelinescarbro','michelinescarbrough@yahoo.com','Austria','2025-08-28 14:05:09','2025-08-28 14:05:09',0),
  ('8f73ac52-9caa-4b33-9f42-c13547799984','leagrady35','lea_grady@bellsouth.net','St Lucia','2025-08-28 14:42:43','2025-08-28 14:42:43',0),
  ('4f91b6ae-385b-4247-8d23-bef2fb9ba6eb','melodeei97','melodeethayer@gmail.com','Britain (UK)','2025-08-28 15:45:31','2025-08-28 15:45:31',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c76ad2bf-0205-441a-bd59-096edaaaf01d','angelinewoodfull','angelinewoodfull@gmail.com','Israel','2025-08-28 19:03:46','2025-08-28 19:03:46',0),
  ('d78b6120-f523-4831-a5cb-53661e6cb69e','lynnevalerio2','lynnevalerio@yahoo.com','Slovenia','2025-08-29 01:10:02','2025-08-29 01:10:02',0),
  ('e92c18f2-4923-4edf-8eaa-8b7045e0ae24','bryantbaine','bryantbaine@gmail.com','Isle of Man','2025-08-29 01:24:59','2025-08-29 01:24:59',0),
  ('15645e3d-7e84-4b47-9f71-b5c1e06ba5eb','hugotroedel','hugotroedel@gmail.com','Austria','2025-08-29 02:51:40','2025-08-29 02:51:40',0),
  ('e84d503d-c731-47ae-aab8-3ebf1da3dfd1','catherngates','cathern.gates@gmail.com','Liechtenstein','2025-08-29 03:42:32','2025-08-29 03:42:32',0),
  ('19a440a1-7857-4d84-84cc-40a4d8cacbb6','jinaotz264316525','jinakohn@verizon.net','French Guiana','2025-08-29 15:11:48','2025-08-29 15:11:48',0),
  ('46579558-15a0-4906-b481-32a3fc91cd36','christelstowe29','christel.stowe@alice.it','French Guiana','2025-08-29 21:59:46','2025-08-29 21:59:46',0),
  ('af35e674-d391-4d40-95f8-8f46d2429faa','lucienneskurrie','lucienneskurrie@gmail.com','Austria','2025-08-29 22:07:27','2025-08-29 22:07:27',0),
  ('cebad3f4-0132-4186-9841-3ab53438349e','danharp06310','danharp@hotmail.it','Georgia','2025-08-29 23:15:37','2025-08-29 23:15:37',0),
  ('df42f7fb-c901-452e-b51a-5ef6677a7079','lauraspaulding1','lauraspaulding@hotmail.co.uk','Tokelau','2025-08-30 01:34:19','2025-08-30 01:34:19',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5faa4e0f-6b66-4a60-a763-cd7dbf0007b6','yvonnearent7701','yvonne_arent@hotmail.co.uk','Tanzania','2025-08-30 03:47:05','2025-08-30 03:47:05',0),
  ('7424c5ff-57a4-40b9-bd73-4a0775e266d5','effie1776106735','effielymburner@sbcglobal.net','French Guiana','2025-08-30 10:50:21','2025-08-30 10:50:21',0),
  ('33b700bb-fc0c-4224-ab83-3cee27c23ad1','leopoldoburger','leopoldo_burger@live.com','Jamaica','2025-08-30 11:28:06','2025-08-30 11:28:06',0),
  ('b57d8eb1-8fdd-48f2-a986-9f3e05280a8d','jeannettesell21','jeannettesell@yahoo.com','Switzerland','2025-08-30 12:06:45','2025-08-30 12:06:46',0),
  ('1dfdd423-3284-4dbb-94d1-ef421fed9ea0','zoragatlin60','zoragatlin@hotmail.com','Austria','2025-08-30 14:04:05','2025-08-30 14:04:05',0),
  ('cd3ed0e4-9784-46cc-b2d4-a07afae9c3cf','genevafulmer','genevafulmer@hotmail.fr','French S. Terr.','2025-08-30 14:36:50','2025-08-30 14:36:50',0),
  ('c6393570-a1e8-44b0-baec-b4e9fe55a9db','ignacioruffin6','ignacioruffin@gmail.com','Tajikistan','2025-08-30 16:48:48','2025-08-30 16:48:48',0),
  ('7831d6be-4c3c-47e6-ab06-ba593c9a0bbe','julietsac8500','julietosborne@gmail.com','Kiribati','2025-08-30 20:24:40','2025-08-30 20:24:40',0),
  ('c70b08c8-cb5e-4530-971c-5b17a27c9162','rafaelwexler008','rafaelwexler@yahoo.com','Micronesia','2025-08-30 23:09:27','2025-08-30 23:09:27',0),
  ('955c9c4f-d395-4e15-8215-2ae031cfe5a6','joyces422784','joyceisabel@gmail.com','Rwanda','2025-08-30 23:15:59','2025-08-30 23:15:59',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('05a181b7-ef6b-4a24-a2e7-91a8b85ff9e3','geniecordell31','geniecordell@gmail.com','Sri Lanka','2025-08-31 01:32:09','2025-08-31 01:32:09',0),
  ('6733b1d5-ad02-486d-8974-f0ca499788c5','penneyneidig98','penneyneidig@rambler.ru','Canada','2025-08-31 05:33:07','2025-08-31 05:33:07',0),
  ('663d9e89-27ca-47ff-a57e-de2658ba18f6','uujandrea0336','andreabaker@googlemail.com','St Pierre & Miquelon','2025-08-31 10:02:44','2025-08-31 10:02:44',0),
  ('0f52f927-d2a0-4416-88a5-827cd32fa87a','moniquerigby7','moniquerigby@live.nl','Chile','2025-08-31 10:22:15','2025-08-31 10:22:15',0),
  ('33ad155e-7d6f-4324-941f-c7b7f0223442','francestrout688','france_strout@facebook.com','French Guiana','2025-08-31 16:48:59','2025-08-31 16:48:59',0),
  ('80f2e183-77b4-4ac2-a2b9-7138865dbec4','cliffslayton59','cliff_slayton@yahoo.in','Turkmenistan','2025-08-31 19:05:30','2025-08-31 19:05:31',0),
  ('e7d2ea45-d1c6-46c4-a73c-9b9a3c4eafdd','iandooley3','ian_dooley@comcast.net','New Zealand','2025-09-01 08:36:56','2025-09-01 08:36:56',0),
  ('258b08e0-c111-4e37-964c-b4592ab07249','virgiltunn33011','virgiltunn@gmail.com','Burundi','2025-09-01 08:41:45','2025-09-01 08:41:45',0),
  ('d8063a0d-da85-4bc7-a463-52332af783d4','georgiametzler','georgiametzler@hotmail.it','Dominican Republic','2025-09-01 08:50:08','2025-09-01 08:50:08',0),
  ('34fb0a5e-5844-49d4-86cc-7bba0bd619c2','franchescamarina','franchescamarina@live.co.uk','Austria','2025-09-01 09:50:22','2025-09-01 09:50:22',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('8a1e673c-1f5d-422a-966a-45cef8aaac7e','mamielowes50','mamie_lowes@hotmail.fr','Angola','2025-09-01 11:13:46','2025-09-01 11:13:46',0),
  ('a6eba844-8d02-40dc-88bc-da9ebf252943','toniyount72107','toni.yount@gmail.com','Austria','2025-09-01 11:24:07','2025-09-01 11:24:07',0),
  ('7e940c5f-0f36-45da-8bfa-2b160ae3d440','rileywinning54','rileywinning@hotmail.co.uk','Liechtenstein','2025-09-01 11:49:04','2025-09-01 11:49:04',0),
  ('bdcc0211-16b2-49a7-a293-922e197e220a','elmoluke2900611','elmoluke@hotmail.co.uk','Malaysia','2025-09-01 13:32:32','2025-09-01 13:32:32',0),
  ('a0691a04-813a-467e-8fc0-398593cc94a8','miraellsworth','mira_ellsworth@alice.it','Mauritania','2025-09-01 14:35:48','2025-09-01 14:35:48',0),
  ('86fc845e-5c49-4976-b139-2f29dd6bb851','kandace07i','kandacetroy@gmail.com','Gambia','2025-09-01 18:02:29','2025-09-01 18:02:29',0),
  ('43ebbb59-d931-4d30-a5fc-a511f0b17408','geraldrivers3','gerald_rivers@hotmail.fr','Finland','2025-09-01 20:12:07','2025-09-01 20:12:08',0),
  ('c869b1cc-9cff-48ce-8754-913ca9e5e735','mattie0233','mattiebridgeford@terra.com.br','Christmas Island','2025-09-01 20:38:51','2025-09-01 20:38:51',0),
  ('b7568c5d-2808-4d24-8c63-999734c072b0','gcydarren8','darren.grooms@gmail.com','Brazil','2025-09-01 22:50:18','2025-09-01 22:50:18',0),
  ('401faf83-5481-4b48-aff9-27e643d516cb','hesterlillico','hesterlillico@yahoo.com','Austria','2025-09-01 23:14:56','2025-09-01 23:14:56',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5c3f3d28-91e1-44b1-a5df-14e18d262d7b','stefanienewton','stefanie_newton@yahoo.com','St Barthelemy','2025-09-01 23:27:20','2025-09-01 23:27:20',0),
  ('3595d283-1527-46e6-9b21-5a113ca9939f','darylpatino3773','darylpatino@yahoo.com','Chad','2025-09-02 04:11:42','2025-09-02 04:11:42',0),
  ('afdf6475-2c4a-4c40-8443-3b0ea892971e','glindacleland72','glindacleland@charter.net','Australia','2025-09-02 07:53:23','2025-09-02 07:53:23',0),
  ('cc16623e-a47a-42ca-8109-abf6eaff4a98','issacmut97813','issacstaton@orange.fr','Portugal','2025-09-02 13:15:39','2025-09-02 13:15:39',0),
  ('6b965c8c-7ae1-4b42-b81d-8c61e8e39e6d','roycemattingly','roycemattingly@gmail.com','Libya','2025-09-02 13:30:06','2025-09-02 13:30:06',0),
  ('6a090d91-9e6e-4736-9ce6-d7b6cfc25860','jamilay9443333','jamilathrasher@gmail.com','Bosnia & Herzegovina','2025-09-02 14:06:29','2025-09-02 14:06:29',0),
  ('472684a2-e305-4cf1-b550-049aed26ce9e','gwendolynpalombo','gwendolynpalombo@live.nl','Iceland','2025-09-02 14:45:54','2025-09-02 14:45:54',0),
  ('da1ecbc3-ba25-4157-bef4-1f5b0aaf71a5','michalefranz0','michalefranz@web.de','Cambodia','2025-09-02 15:43:19','2025-09-02 15:43:19',0),
  ('3562c958-5e3d-468c-8ee3-55aa262c9578','jacquesparkman0','jacques_parkman@yahoo.com','Paraguay','2025-09-02 16:46:18','2025-09-02 16:46:18',0),
  ('3c3b047c-0db9-4caf-95b4-e07547b5e786','lucio23s414350','lucio.vangundy@yahoo.co.in','Malta','2025-09-02 16:52:42','2025-09-02 16:52:43',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2c15edf6-8045-48ce-a86c-b0d147f68358','vonalt8806744','vonalt@live.fr','Australia','2025-09-02 17:39:32','2025-09-02 17:39:33',0),
  ('5a937fcc-ce17-4659-8957-6c2af11d40d5','petradawes7','petradawes@hotmail.it','Israel','2025-09-02 19:32:50','2025-09-02 19:32:50',0),
  ('2ac68a21-6188-49c5-8840-97fff4a44895','aureliobischof','aureliobischof@hotmail.com','French Guiana','2025-09-02 20:20:22','2025-09-02 20:20:22',0),
  ('18e780ff-4374-4845-8c23-cb85aa90801b','latoshamoffit5','latoshamoffit@hotmail.com','Kenya','2025-09-02 21:18:12','2025-09-02 21:18:12',0),
  ('4e2edc82-981f-4443-a55a-03b10d3bdfc9','steviedechaineux','stevie_dechaineux@yahoo.com.au','Palau','2025-09-02 22:45:04','2025-09-02 22:45:04',0),
  ('07e1c9c0-557f-4238-ba55-f9cc53bf653d','ashleycage764','ashleycage@cox.net','Austria','2025-09-03 01:16:24','2025-09-03 01:16:24',0),
  ('2d7c9db9-ec55-4be2-a5a7-6d67855d3b2f','pearlineyrs','pearline.hensley@neuf.fr','Austria','2025-09-03 01:45:39','2025-09-03 01:45:39',0),
  ('625b1e65-6996-4327-819c-79f54ebb74c7','laceytuttle82','laceytuttle@yahoo.com','France','2025-09-03 02:14:23','2025-09-03 02:14:23',0),
  ('1dcf4b36-dff7-4bd9-a1fb-d9e61dce0a32','marquisgrasby0','marquisgrasby@libero.it','Australia','2025-09-03 02:21:53','2025-09-03 02:21:53',0),
  ('652ee617-182a-4d9f-8ea5-f4e72a9ec35a','stewarte73','stewartredmond@yahoo.co.in','Suriname','2025-09-03 03:37:09','2025-09-03 03:37:09',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('785d7fbf-c779-4a34-9a78-fd4e289136c1','zulma24a953','zulma.pardey@gmail.com','Ghana','2025-09-03 05:22:52','2025-09-03 05:22:52',0),
  ('c9bb9e64-ac8d-45b3-904a-b1bad92f8383','jill95q230','jill_vaude@att.net','Moldova','2025-09-03 12:37:29','2025-09-03 12:37:29',0),
  ('86837e8d-0070-411d-a345-66789dcbe3e8','etsukolaby68967','etsukolaby@mail.ru','Australia','2025-09-03 12:52:19','2025-09-03 12:52:19',0),
  ('898a32c2-1eae-45d0-b564-232b631f441d','donald2042','donaldhaining@hotmail.fr','French Guiana','2025-09-03 14:29:58','2025-09-03 14:29:58',0),
  ('51914601-7779-42dd-96df-6435026b9eb9','darrenedye07','darrenedye@aol.com','Yemen','2025-09-03 19:28:11','2025-09-03 19:28:11',0),
  ('8d8aa2f2-8935-45a1-9825-5cca948219a7','errollongford2','errollongford@gmail.com','South Africa','2025-09-03 19:35:24','2025-09-03 19:35:24',0),
  ('6129796c-bfa0-4e60-89d9-186d9f93e569','gastonstover4','gaston_stover@hotmail.co.uk','Denmark','2025-09-03 19:38:34','2025-09-03 19:38:34',0),
  ('8c12fce7-b0dd-4f26-8ff5-ec9b2406cf44','cecilaritter62','cecilaritter@gmail.com','Uzbekistan','2025-09-03 20:45:44','2025-09-03 20:45:44',0),
  ('9355ed7d-7482-480f-81eb-2414b06c15ff','aundreanfz','aundreaallen@bol.com.br','Pakistan','2025-09-03 21:01:12','2025-09-03 21:01:12',0),
  ('eebcd25c-dc29-492d-af54-7604ff83c364','randallbracker','randallbracker@hotmail.com','French Polynesia','2025-09-03 21:43:09','2025-09-03 21:43:09',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('127250ed-f22c-4cf0-901c-b815b92d7a2b','horacioburn6849','horacioburn@googlemail.com','French Guiana','2025-09-04 04:21:27','2025-09-04 04:21:28',0),
  ('c7fe2313-da64-4dee-a8f6-0362a6af757f','bernieglade8','bernie.glade@msn.com','Burkina Faso','2025-09-04 05:10:19','2025-09-04 05:10:19',0),
  ('220030b0-99c8-4fa1-b579-ca28e275737d','traceevelazquez','tracee_velazquez@alice.it','Congo (Rep.)','2025-09-04 07:57:58','2025-09-04 07:57:58',0),
  ('4574d79f-8016-4afe-8ad1-6fa69dc3311a','tammietremblay4','tammietremblay@gmail.com','Yemen','2025-09-04 08:42:48','2025-09-04 08:42:48',0),
  ('a37c3e82-3d30-4df2-b4b1-b3ea524f22f2','catalina_hincapie83192','catalina_hincapie83192@elpoli.edu.co','Colombia','2025-09-04 09:15:40','2025-09-04 09:16:37',1),
  ('18154368-7ea1-4e02-80f7-ee57f100cd72','christianedukes','christianedukes@hotmail.co.uk','French Guiana','2025-09-04 09:53:24','2025-09-04 09:53:24',0),
  ('fd18ef20-f6e9-476b-a117-6ccf7973a9a4','elijahdalbertis','elijah.dalbertis@yahoo.com','Spain','2025-09-04 11:14:58','2025-09-04 11:14:58',0),
  ('332c2a3c-66cd-46ba-bd8a-be595f57177d','freddesailly','freddesailly@cox.net','British Indian Ocean Territory','2025-09-04 11:22:20','2025-09-04 11:22:20',0),
  ('1fa728f7-6fbb-424f-8d0f-ebdb79a085e6','deloraslash521','deloraslash@comcast.net','Rwanda','2025-09-04 12:02:46','2025-09-04 12:02:46',0),
  ('0861a818-1b06-4a03-8f6d-8d93bb000ff3','leoniedominique','leoniedominique@gmail.com','French Guiana','2025-09-04 12:43:47','2025-09-04 12:43:47',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('46269ac0-a7a6-4774-a23c-6d55754551b6','autumnkaestner1','autumnkaestner@yahoo.com','French Guiana','2025-09-04 16:22:30','2025-09-04 16:22:30',0),
  ('114c1600-4c8a-4ba7-b441-5c0e58472e0c','keenanglaspie1','keenan_glaspie@yahoo.com','US minor outlying islands','2025-09-04 18:41:32','2025-09-04 18:41:32',0),
  ('bd62cbd6-f9a6-4ac1-b71c-f4be0ee6b537','angelicaalbarran','angelicaalbarran@gmail.com','Australia','2025-09-05 02:50:16','2025-09-05 02:50:16',0),
  ('66f060e9-2f4b-42bb-832b-2bfc76775118','rozellabobadilla','rozellabobadilla@hotmail.com','Algeria','2025-09-05 03:58:42','2025-09-05 03:58:42',0),
  ('01e9806b-47c8-4c67-88ad-b1f7f5a5219f','darinstegall4','darinstegall@hotmail.com','Kenya','2025-09-05 04:53:06','2025-09-05 04:53:06',0),
  ('197fadfb-1bc1-4e55-b41b-82b761db9be8','nildagrainger63','nildagrainger@sfr.fr','Slovenia','2025-09-05 05:30:18','2025-09-05 05:30:18',0),
  ('c2d58179-185e-44df-9e93-c2cc19e986fd','cliffkulakowski','cliffkulakowski@hotmail.co.uk','Iran','2025-09-05 06:35:07','2025-09-05 06:35:07',0),
  ('9b82d99e-c849-46a7-acfc-dd92b631e9c2','christenahutcher','christena.hutcherson@gmail.com','Australia','2025-09-05 06:45:46','2025-09-05 06:45:46',0),
  ('ffcad15a-4d13-49c0-9c76-b18b8af64f1b','lettiestinson','lettiestinson@terra.com.br','French Guiana','2025-09-05 06:59:19','2025-09-05 06:59:19',0),
  ('96261f4e-1c07-4a17-a74d-b8569eb5fb7a','abigailbaylis0','abigailbaylis@yahoo.com','Rwanda','2025-09-05 07:05:21','2025-09-05 07:05:21',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('52f1c18f-f78b-451f-82c1-dd7ab8ce0c72','brigettemcneely','brigettemcneely@uol.com.br','Jersey','2025-09-05 09:46:11','2025-09-05 09:46:11',0),
  ('1bf80138-5753-4063-b01c-9661dd8f2105','swenfreitas','swen.freitas@yahoo.com','French Guiana','2025-09-05 10:24:18','2025-09-05 10:24:18',0),
  ('4c0299ea-8338-40cf-90a7-4fa8e616f6b9','landonsaddler','landonsaddler@yahoo.co.uk','Myanmar (Burma)','2025-09-05 10:50:08','2025-09-05 10:50:08',0),
  ('0cf5fb54-91cb-478f-be61-66b0edc3de47','flor1351524061','florfries@orange.fr','Austria','2025-09-05 13:23:07','2025-09-05 13:23:08',0),
  ('9d15864e-af05-4240-a619-c8f57e71e393','mavisortiz1798','mavisortiz@yahoo.es','Austria','2025-09-05 15:03:15','2025-09-05 15:03:15',0),
  ('73202f4f-109b-4869-8ab8-a5bffa2904e0','margheritabone6','margheritabone@yahoo.com','Vanuatu','2025-09-05 16:10:10','2025-09-05 16:10:10',0),
  ('58d8d068-d8c5-4b40-ab50-540941a3d0c9','warnerarreguin','warnerarreguin@gmail.com','Nauru','2025-09-05 16:24:17','2025-09-05 16:24:17',0),
  ('eb573356-88d4-49a7-8279-cb2f6f547316','jacquesgeils','jacquesgeils@neuf.fr','Congo (Dem. Rep.)','2025-09-05 16:53:42','2025-09-05 16:53:43',0),
  ('5930439b-f149-4ffe-935d-891a0daf8ef7','yvonnecrabtree','yvonnecrabtree@hotmail.es','Brunei','2025-09-05 19:30:52','2025-09-05 19:30:52',0),
  ('b0eef81e-b912-447f-bdb7-98e837bb7eae','kiteisenhauer1','kiteisenhauer@sbcglobal.net','Jordan','2025-09-05 21:57:04','2025-09-05 21:57:04',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('47fad9c3-854d-46f4-b78d-df3084581170','lawrenced22','lawrencebradberry@gmail.com','Gambia','2025-09-05 22:17:07','2025-09-05 22:17:07',0),
  ('80d0ce0f-537c-40e5-912b-77a6ee6959c2','margotu8963537','margot_penson@aol.com','Portugal','2025-09-06 00:37:48','2025-09-06 00:37:49',0),
  ('ba9b34e5-ef3f-4d4c-adfc-6050b8c59384','fletcherlavallie','fletcherlavallie@yahoo.com','Sierra Leone','2025-09-06 00:51:11','2025-09-06 00:51:11',0),
  ('e64c29a4-a7f0-4e2c-8148-37d8becc1a90','melodyl518202','melodyfrome@gmail.com','Jordan','2025-09-06 03:29:38','2025-09-06 03:29:38',0),
  ('80dcfc94-f5b2-499a-8c8d-06e68c7e0037','randellsexton07','randell.sexton@aol.com','Austria','2025-09-06 03:36:41','2025-09-06 03:36:41',0),
  ('f98d408d-02c1-4ea0-ad32-453d4fcb42ae','ywvgarnet4','garnet.novak@verizon.net','Luxembourg','2025-09-06 05:21:27','2025-09-06 05:21:27',0),
  ('cea0ee0c-9176-4d83-916d-b0884ffbc404','ilacastellanos','ilacastellanos@gmail.com','French Guiana','2025-09-06 05:35:36','2025-09-06 05:35:36',0),
  ('afb50d9a-8bcb-45fa-928b-1141a14d932c','sarahrehkop50','sarahrehkop@bol.com.br','Italy','2025-09-06 06:09:58','2025-09-06 06:09:58',0),
  ('14f10c3d-a125-4fe6-ad7a-d60ebbacd6e0','hungbiaggini29','hungbiaggini@hotmail.com','St Kitts & Nevis','2025-09-06 06:25:51','2025-09-06 06:25:51',0),
  ('7ed90430-7e65-4d43-99df-4d6541d04e59','dinaharo212799','dinaharo@hotmail.co.uk','Turks & Caicos Is','2025-09-06 06:29:39','2025-09-06 06:29:39',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c9ec2b66-d7cb-49f6-997f-0d67de76f897','carlobauer3383','carlo.bauer@yahoo.com','Qatar','2025-09-06 06:54:08','2025-09-06 06:54:08',0),
  ('3ad99b1b-9775-41ef-88b0-6720a5c24e42','jacksonhueber3','jacksonhueber@wanadoo.fr','French Guiana','2025-09-06 08:02:38','2025-09-06 08:02:38',0),
  ('dc826179-5e25-4d08-bd95-41f310be3a78','emanuelgrosse','emanuelgrosse@hotmail.co.uk','Australia','2025-09-06 08:23:04','2025-09-06 08:23:05',0),
  ('61c4f4af-c5ee-48f9-a804-4d68be39ec5e','belenseton43774','belenseton@gmail.com','French S. Terr.','2025-09-06 09:10:29','2025-09-06 09:10:30',0),
  ('30315ae7-75c3-41e4-87e9-d7fd3783f443','brendasand3','brendasand@gmail.com','French Guiana','2025-09-06 09:41:38','2025-09-06 09:41:38',0),
  ('38b5533f-0c40-4b6a-bb9e-481344e3e705','terrienewquist8','terrienewquist@yahoo.com','Britain (UK)','2025-09-06 12:52:03','2025-09-06 12:52:03',0),
  ('8849d3bb-4c25-4a2a-b5f3-79e54a6b3f85','mikaylabeal','mikaylabeal@cox.net','US minor outlying islands','2025-09-06 12:57:37','2025-09-06 12:57:37',0),
  ('2f41d903-52c5-45a5-85c4-0992113b9bc1','jerrellhaddon42','jerrellhaddon@hotmail.com','Uruguay','2025-09-06 12:59:03','2025-09-06 12:59:04',0),
  ('0c32096e-3298-44ad-aed4-2a5ab614befb','rauljiminez5037','rauljiminez@aol.com','Dominica','2025-09-06 14:31:45','2025-09-06 14:31:45',0),
  ('c081d463-00fc-4d1b-b5c1-dac4596a79d0','moshedarley04','moshedarley@gmail.com','Tuvalu','2025-09-06 15:34:36','2025-09-06 15:34:36',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('3d04ff85-0e7b-4e9d-8fbe-ae737528eca3','fpassosviana','flaviapviana@gmail.com',NULL,'2025-09-06 17:04:18','2025-09-30 14:53:58',1),
  ('9a9a8160-a628-408e-8677-90bd283a2684','phillipsison','phillip_sison@libero.it','French Guiana','2025-09-06 20:49:24','2025-09-06 20:49:24',0),
  ('6648082b-a841-4df7-8b54-03e200dd0774','bobbyrather47','bobbyrather@gmail.com','Samoa (American)','2025-09-06 21:04:40','2025-09-06 21:04:40',0),
  ('b72e1b00-9ff2-4346-94e4-6b59c8615a43','halinao583307209','halina.brookman@yahoo.fr','Austria','2025-09-06 21:31:16','2025-09-06 21:31:16',0),
  ('1b69ae09-7b4a-464f-bb9c-fdcedf56590e','stellamccaffrey','stellamccaffrey@live.nl','Taiwan','2025-09-06 22:33:52','2025-09-06 22:33:52',0),
  ('078009ba-d7e1-4d58-98cb-b5a8d0ee39f3','imogenezvx','imogenezimmermann@bellsouth.net','Latvia','2025-09-07 02:06:19','2025-09-07 02:06:19',0),
  ('7929159c-6359-42c7-833b-c2dd279047c4','malindamackinnon','malindamackinnon@gmail.com','Israel','2025-09-07 02:55:28','2025-09-07 02:55:28',0),
  ('6d0c9134-6c6f-41f0-9561-b5b2271e9dc0','maxinebrownrigg','maxinebrownrigg@googlemail.com','Iran','2025-09-07 03:21:55','2025-09-07 03:21:55',0),
  ('a8acc3aa-21d2-416c-8af9-2cffc851fd89','elysehirst5','elyse.hirst@terra.com.br','Austria','2025-09-07 03:25:55','2025-09-07 03:25:55',0),
  ('6953b9be-9414-4ccf-b52b-d008fcb0e3f9','deonf85659','deonroach@hotmail.com','Mayotte','2025-09-07 07:13:39','2025-09-07 07:13:39',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4b8e725a-4ff1-4e30-85f5-bda426f75005','genieprimrose28','genieprimrose@msn.com','Botswana','2025-09-07 10:01:47','2025-09-07 10:01:47',0),
  ('c60f5263-4b08-453b-a17c-44c69e8577d0','kathlenecowart','kathlene.cowart@uol.com.br','French Guiana','2025-09-07 10:46:11','2025-09-07 10:46:11',0),
  ('f453edd3-1505-4538-9670-5608cf741038','corazonmatthews','corazonmatthews@ig.com.br','Tokelau','2025-09-07 11:11:15','2025-09-07 11:11:15',0),
  ('77f54860-06ce-449a-b159-886dc3475830','wilfredo39','wilfredracine@yahoo.com','Mongolia','2025-09-07 12:52:10','2025-09-07 12:52:10',0),
  ('2bb239dd-7555-4cc6-a1a8-200bc9288929','judichristiansen','judichristiansen@alice.it','Serbia','2025-09-07 14:07:35','2025-09-07 14:07:35',0),
  ('2760204b-fdeb-4600-96bc-d308268a856b','timfigueroa10','timfigueroa@rocketmail.com','Bolivia','2025-09-07 14:45:28','2025-09-07 14:45:29',0),
  ('7f9bf7ec-6abc-41ed-b4c6-354785fff671','tnyelisa57303','elisa_roof@charter.net','Syria','2025-09-07 16:09:42','2025-09-07 16:09:42',0),
  ('bbdd608c-fc8f-443a-a104-38c41af6aeaa','ethelzpa4511','ethelhubbs@yahoo.com','French Guiana','2025-09-07 16:40:17','2025-09-07 16:40:17',0),
  ('63433282-bd73-4e3d-8670-a06633c71f4e','rheamcnulty5009','rheamcnulty@yahoo.com','Uganda','2025-09-07 16:43:17','2025-09-07 16:43:17',0),
  ('9c285150-7fe8-41b8-a889-90f77a3cbaa9','woodrowhemphill','woodrow_hemphill@yahoo.es','Bahamas','2025-09-07 16:50:22','2025-09-07 16:50:22',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('e93adee7-1e03-497a-8725-7d949a928d49','leolachristian6','leolachristian@gmail.com','French Guiana','2025-09-07 20:14:21','2025-09-07 20:14:21',0),
  ('33bd4b9f-4cc7-48f4-9efb-6f67b1a59015','oliviamaney9136','oliviamaney@yahoo.in','Australia','2025-09-07 21:29:00','2025-09-07 21:29:00',0),
  ('ad1a3a3e-f777-4e7d-aff9-03dc066f8653','luisa7070065','luisakeble@gmail.com','Austria','2025-09-07 21:59:26','2025-09-07 21:59:26',0),
  ('1d6b0e78-acd2-4d50-b59d-d2b645a45d56','sethrenard679','sethrenard@yahoo.com','Botswana','2025-09-07 23:44:05','2025-09-07 23:44:05',0),
  ('39b30f15-f64c-4bce-8dd6-6abb8badb436','gracielapendergr','gracielapendergrass@ig.com.br','Australia','2025-09-08 01:32:20','2025-09-08 01:32:20',0),
  ('8f0d7171-aef2-406b-baf8-6161c6d37feb','kristeengerrard','kristeengerrard@gmail.com','Northern Mariana Islands','2025-09-08 01:41:19','2025-09-08 01:41:19',0),
  ('91b40628-350d-4548-bfc3-8fa035c00ae7','magdafoerster9','magdafoerster@facebook.com','French Guiana','2025-09-08 01:48:06','2025-09-08 01:48:06',0),
  ('c937f8c0-4150-489d-823b-f58ae28453cc','thedadownie432','thedadownie@charter.net','Austria','2025-09-08 04:15:07','2025-09-08 04:15:07',0),
  ('9688d6f3-b254-4ab7-9bcb-c020afcbead4','fayhynes937','fay.hynes@yahoo.de','Dominican Republic','2025-09-08 06:37:05','2025-09-08 06:37:05',0),
  ('4d1c48cd-e6bf-4af0-8305-519c8e95bbbf','karolincanada','karolin_canada@yahoo.com','Colombia','2025-09-08 13:59:40','2025-09-08 13:59:40',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4c9f9043-34a5-4dcb-ba66-ecd766f7724c','giselleweiland9','giselle.weiland@gmail.com','Nauru','2025-09-08 15:22:50','2025-09-08 15:22:51',0),
  ('320261f0-a931-4682-babb-5567df2e0e3e','louischilders','louischilders@hotmail.com','French Guiana','2025-09-08 18:32:00','2025-09-08 18:32:00',0),
  ('42c1f5f8-2dae-4550-9006-9943720585f1','laurenknoll993','laurenknoll@wanadoo.fr','Austria','2025-09-08 19:33:22','2025-09-08 19:33:22',0),
  ('70ae4dbf-f368-4a15-8aed-ad87b332e97c','byrongloeckner5','byrongloeckner@hotmail.co.uk','Australia','2025-09-08 20:08:22','2025-09-08 20:08:22',0),
  ('36e32a13-a291-4187-a037-b6434122358a','daciaw77796','daciacurtin@libero.it','Switzerland','2025-09-08 21:30:30','2025-09-08 21:30:31',0),
  ('b604d9af-d821-4ca3-a3c7-456dd7560d93','traviscapuano67','traviscapuano@live.fr','Barbados','2025-09-08 21:50:41','2025-09-08 21:50:41',0),
  ('904edf8c-460d-4300-bc0e-15f3b4cc59ac','latiabrumby8','latia_brumby@gmail.com','Austria','2025-09-08 22:04:46','2025-09-08 22:04:47',0),
  ('dc81e0a9-1d2c-484a-8fca-9de12c9b631e','javier4235','javier_fullarton@sfr.fr','Laos','2025-09-09 01:23:50','2025-09-09 01:23:50',0),
  ('1871ce70-9435-4d9c-b493-89bf89e30f6c','claritafrew32','clarita_frew@hotmail.co.uk','Hong Kong','2025-09-09 02:47:30','2025-09-09 02:47:30',0),
  ('be10c275-4c9d-42f1-9516-b3a1cc145113','alejandrinab55','alejandrinavancouver@yahoo.com','Malaysia','2025-09-09 03:15:41','2025-09-09 03:15:41',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('1b94fdc7-69e3-49a0-ad38-8542ee1414c1','stantonprindle','stantonprindle@yahoo.com','Bahamas','2025-09-09 07:07:04','2025-09-09 07:07:04',0),
  ('59104b47-4345-471b-b20e-1aa1f6e9f437','vickiecraddock9','vickie.craddock@mail.ru','Dominica','2025-09-09 10:15:39','2025-09-09 10:15:39',0),
  ('208d3390-4b1a-43f5-8285-022fcac0b54c','miloyzk7876700','milo.getz@rocketmail.com','Rwanda','2025-09-09 13:03:32','2025-09-09 13:03:32',0),
  ('f145de89-059f-454a-8a41-db8749ac94c9','florencelambe','florence.lambe@verizon.net','Liberia','2025-09-09 15:02:48','2025-09-09 15:02:48',0),
  ('9e48be46-7ffe-4acb-ae7b-c4e9e2a147ea','daniellakincaid','daniella_kincaid@gmail.com','Benin','2025-09-09 15:18:15','2025-09-09 15:18:15',0),
  ('4a202bbc-6d1e-460a-b85a-8f6e5ad39882','randellcarls5','randellcarls@yandex.ru','Tuvalu','2025-09-09 16:03:59','2025-09-09 16:03:59',0),
  ('67873edb-25ec-4796-96e0-8e45fbd0ffdf','deneenvcx79','deneenheyward@msn.com','Ukraine','2025-09-09 16:44:33','2025-09-09 16:44:33',0),
  ('cf790297-bb04-450d-a0a7-dd26fd1e7a5b','qvgiola6788752','iolahuntington@rediffmail.com','French S. Terr.','2025-09-09 16:55:28','2025-09-09 16:55:28',0),
  ('0b01f431-5064-4d46-9f5f-7db256c7b442','jodibio511417','jodirohde@libero.it','Rwanda','2025-09-09 18:16:03','2025-09-09 18:16:03',0),
  ('5b0a15e7-dc33-43ea-a2a1-8848f2648490','tdzarlie37985','arlieblankenship@yahoo.com','French Guiana','2025-09-09 18:33:08','2025-09-09 18:33:08',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f780e178-9907-4cc3-9b44-605eb1c1abe2','bebe668713398660','bebegladney@hotmail.fr','Mexico','2025-09-09 21:05:33','2025-09-09 21:05:33',0),
  ('ba540de9-a1a7-4d2c-81e4-65dff4fe85de','anyakater231','anya.kater@hotmail.co.uk','Austria','2025-09-09 21:47:26','2025-09-09 21:47:26',0),
  ('3f238776-ce7c-4d6d-a019-d3effc74f833','malindatost69','malindatost@yahoo.in','Brunei','2025-09-09 22:59:52','2025-09-09 22:59:52',0),
  ('1e41254c-bc85-492b-a5fb-cf45fc02ff75','tamika01f85','tamika.casimaty@facebook.com','Kuwait','2025-09-10 00:00:25','2025-09-10 00:00:25',0),
  ('8ddab1f4-fded-4819-bef2-c31bc75c21e3','gabrielagraham','gabriela.graham@rediffmail.com','South Georgia & the South Sandwich Islands','2025-09-10 01:23:19','2025-09-10 01:23:19',0),
  ('c0e2e7f6-3a07-4d5d-b400-76e5151a6868','maricruzdeegan','maricruzdeegan@uol.com.br','Central African Rep.','2025-09-10 01:33:02','2025-09-10 01:33:02',0),
  ('0c6b9a20-2dbb-42c0-9f9f-fb4d50eb5c20','anitraheyes','anitraheyes@gmail.com','Australia','2025-09-10 02:14:23','2025-09-10 02:14:23',0),
  ('1ec85fe0-33de-47fb-a579-47bd1965e8df','marksachse8','marksachse@bol.com.br','Finland','2025-09-10 04:17:50','2025-09-10 04:17:50',0),
  ('5251ff54-1530-460a-b859-0b4cadda28b8','reynaldo6411','reynaldocanipe@yahoo.com','French Guiana','2025-09-10 05:52:17','2025-09-10 05:52:17',0),
  ('92cbf66d-5cef-4708-84ab-2d9f32fa65c8','josefina8392','josefina_swett@free.fr','Albania','2025-09-10 08:55:03','2025-09-10 08:55:03',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('76899de8-00ea-4ad2-a3eb-2814c8e8db97','rosalynwhitaker','rosalynwhitaker@googlemail.com','Réunion','2025-09-10 09:39:47','2025-09-10 09:39:48',0),
  ('42b978b6-2623-4b35-901d-a7ecce9b4e85','effiej2326','effielabarre@yahoo.com.br','Bosnia & Herzegovina','2025-09-10 11:55:19','2025-09-10 11:55:19',0),
  ('eb58b7b3-8398-4c46-8ddd-7fa393b5c2a2','elizapapst7824','elizapapst@gmail.com','South Georgia & the South Sandwich Islands','2025-09-10 12:09:02','2025-09-10 12:09:02',0),
  ('b2985ac6-457c-4dad-859f-14ca93856b96','chantelittler','chantelittler@hotmail.co.uk','Korea (South)','2025-09-10 12:10:33','2025-09-10 12:10:33',0),
  ('af9b4fc2-e959-47bb-b15a-0fd0c9520853','larapendleton','lara.pendleton@yahoo.com','Norway','2025-09-10 12:57:02','2025-09-10 12:57:03',0),
  ('568ec465-7fbd-477c-8066-7be57fffbfd2','margofarrington','margofarrington@rocketmail.com','Tonga','2025-09-10 13:13:10','2025-09-10 13:13:10',0),
  ('63a4ca43-d23d-4d2f-bbfb-57239dd7f4b9','gracieswenson','gracie.swenson@yahoo.com','Rwanda','2025-09-10 13:54:13','2025-09-10 13:54:13',0),
  ('66b1c40e-1238-4fa9-99db-c9e1fd744f83','deannapropsting','deanna.propsting@yahoo.es','Palestine','2025-09-10 15:46:51','2025-09-10 15:46:51',0),
  ('278394d0-5fa8-43e4-be12-9c4b9d74574b','gudrunt601','gudrunchubb@gmail.com','Burkina Faso','2025-09-10 17:32:56','2025-09-10 17:32:56',0),
  ('7fbaa2de-2d4d-4e20-b687-9ee3b40907e7','kaitlynwoodley','kaitlynwoodley@gmail.com','French Guiana','2025-09-10 17:38:55','2025-09-10 17:38:55',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7060bd2d-a402-476b-ab46-95d3416aaa70','rebeccamarler44','rebecca_marler@gmail.com','Antarctica','2025-09-10 18:34:53','2025-09-10 18:34:53',0),
  ('b02b1b2a-04ce-495f-a9b2-d0b9ced757d3','lancejva186789','lancespada@free.fr','Argentina','2025-09-10 19:01:25','2025-09-10 19:01:26',0),
  ('657c4cfb-dddd-43da-9d2b-a40bc5f419e0','ahmedcrook2944','ahmedcrook@hotmail.co.uk','Montserrat','2025-09-10 21:53:14','2025-09-10 21:53:14',0),
  ('6fdf5b27-494f-45ca-971f-bd200aa7f1d0','maddisonshaver','maddisonshaver@yahoo.com','Equatorial Guinea','2025-09-10 22:25:11','2025-09-10 22:25:11',0),
  ('ce553230-869f-4592-a3b8-92e22855427d','autumnseverance','autumnseverance@bigpond.com','Belgium','2025-09-10 23:09:16','2025-09-10 23:09:16',0),
  ('3c4ac0b5-a1bc-4892-8bc2-55a8fdf812c0','judyturner8245','judyturner@ymail.com','Solomon Islands','2025-09-11 00:12:48','2025-09-11 00:12:48',0),
  ('f02d2cf2-280d-471c-ab02-cb3526ce2d9a','lasonyaroush0','lasonyaroush@msn.com','Austria','2025-09-11 00:18:10','2025-09-11 00:18:10',0),
  ('6a64a394-8333-499a-9d54-bed4d0309861','geniaboyd575','geniaboyd@gmail.com','Sao Tome & Principe','2025-09-11 01:20:40','2025-09-11 01:20:40',0),
  ('6eb6788c-6234-47e4-a4c8-7b927fda2ed6','chasfitzroy8','chasfitzroy@wanadoo.fr','Kuwait','2025-09-11 01:25:55','2025-09-11 01:25:55',0),
  ('9d425deb-4a4f-4efc-8d03-f704d2c6e154','lorenwaldock61','lorenwaldock@gmail.com','Egypt','2025-09-11 06:03:31','2025-09-11 06:03:31',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('7ff07f20-8ac1-4f9e-b6b4-671e791b7950','terriejolley29','terrie_jolley@hotmail.co.uk','Spain','2025-09-11 09:29:33','2025-09-11 09:29:33',0),
  ('a01a277f-f0df-4a41-a182-ad8f3cf4a4df','paulina3372','paulina.nemeth@wanadoo.fr','Virgin Islands (UK)','2025-09-11 12:38:28','2025-09-11 12:38:28',0),
  ('b5346631-c908-4503-aa2b-f6983d2c3903','antoniettah83','antoniettamckim@gmail.com','Mongolia','2025-09-11 13:37:08','2025-09-11 13:37:08',0),
  ('31073fac-5eda-4978-8983-3a7fb3d04a03','tatianareay3361','tatianareay@yahoo.in','Taiwan','2025-09-11 14:06:06','2025-09-11 14:06:06',0),
  ('e0747510-5222-4f2e-8a82-9da9ea98b804','rodolfovarner1','rodolfo.varner@yahoo.com','Grenada','2025-09-11 15:05:44','2025-09-11 15:05:44',0),
  ('8a6c4bd4-3c4c-4bcd-b044-4823cce52837','hermanminor2','herman.minor@hotmail.co.uk','Mongolia','2025-09-11 17:32:14','2025-09-11 17:32:14',0),
  ('63644701-b77e-46b7-8da3-487f01c08567','emanuelvyq','emanuelmitford@gmail.com','Australia','2025-09-11 19:46:01','2025-09-11 19:46:01',0),
  ('0d457fb6-ba4b-45d0-83d1-fa99a0935a43','leolaxqm558297','leolaapel@gmail.com','Greenland','2025-09-11 22:28:06','2025-09-11 22:28:06',0),
  ('e9c6dd6b-6236-48e7-92b5-76606d1eabb8','kimberlyfjp','kimberlydame@gmail.com','Madagascar','2025-09-11 22:49:28','2025-09-11 22:49:28',0),
  ('2423a8c5-e447-4c9e-b542-2fac93148369','lelabinford39','lelabinford@verizon.net','El Salvador','2025-09-12 09:41:06','2025-09-12 09:41:06',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('91553687-653b-4cdb-90ee-e61e23585b94','tristabickford5','tristabickford@hotmail.co.uk','Palestine','2025-09-12 11:53:49','2025-09-12 11:53:49',0),
  ('ab5c4e5a-1015-46fa-897d-100a4c4a629e','autumnwyselaskie','autumnwyselaskie@web.de','Sudan','2025-09-12 13:14:56','2025-09-12 13:14:56',0),
  ('4b22de71-d7b6-461f-9586-fa4ec095141b','sonneilsen3','son.neilsen@gmail.com','Slovenia','2025-09-12 14:21:54','2025-09-12 14:21:54',0),
  ('fd367e03-186a-41a3-9606-ed27faf45674','vaughnlangan06','vaughn.langan@uol.com.br','Niger','2025-09-12 14:54:35','2025-09-12 14:54:35',0),
  ('4b051eac-d92d-42c5-8737-52e271c7b594','winifredcarpente','winifred.carpenter@sbcglobal.net','Panama','2025-09-12 15:21:43','2025-09-12 15:21:43',0),
  ('911bf944-0afa-4d24-bda7-37b26a61174e','brodiemora39','brodie_mora@hotmail.com','Congo (Dem. Rep.)','2025-09-12 17:13:42','2025-09-12 17:13:42',0),
  ('4f6cd940-ce4b-4af7-8777-f088dc456480','margiematamoros','margie_matamoros@bellsouth.net','Australia','2025-09-12 21:58:39','2025-09-12 21:58:39',0),
  ('347c728b-b3f9-4d1c-bf4f-ff1022924983','harlanfernandez','harlanfernandez@gmail.com','Marshall Islands','2025-09-13 00:11:18','2025-09-13 00:11:18',0),
  ('a8054cdd-f48b-441a-b441-1cd3af8058a9','williemael74','williemae_daily@yahoo.com','Pitcairn','2025-09-13 00:54:07','2025-09-13 00:54:07',0),
  ('d37d81c1-b1b7-4779-b99b-e2e99021b6e2','danilopawlowski','danilopawlowski@yahoo.com','Nicaragua','2025-09-13 03:57:33','2025-09-13 03:57:33',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ac98d029-bfbb-4175-9854-5a549512110c','angela4038','angela_darrow@neuf.fr','Turks & Caicos Is','2025-09-13 06:37:59','2025-09-13 06:37:59',0),
  ('83a83648-a1f7-4d3a-8f6d-5c7b20f23d10','staciepenton78','staciepenton@gmx.de','Aruba','2025-09-13 08:13:19','2025-09-13 08:13:19',0),
  ('f2b499a9-4668-445f-8c66-28dfa411f4a1','glenna77s4528','glennaboss@hotmail.fr','Chad','2025-09-13 09:51:40','2025-09-13 09:51:40',0),
  ('899f9b14-51e2-416f-ac7f-4403e334749f','patrickcrawford','patrickcrawford@hotmail.com','Slovakia','2025-09-13 09:59:51','2025-09-13 09:59:51',0),
  ('0d4637c3-0d60-4502-b212-dd6591632c2e','odettecotton','odette_cotton@gmail.com','Costa Rica','2025-09-13 11:10:39','2025-09-13 11:10:39',0),
  ('7fae2291-2123-4922-b012-fd9d52d87a21','benitowomack25','benito.womack@libero.it','Thailand','2025-09-13 11:21:04','2025-09-13 11:21:04',0),
  ('f16f9672-edd7-4a00-a6e4-c6a3b283b016','lacy26j3205','lacypeace@ymail.com','Austria','2025-09-13 14:22:31','2025-09-13 14:22:31',0),
  ('be2a16be-6e6a-4f4c-a3a5-4786d4ae5276','bellpollard','bellpollard@bol.com.br','Marshall Islands','2025-09-13 14:56:09','2025-09-13 14:56:09',0),
  ('ed4e5800-3ed6-4670-92e9-f72019825d6d','justinesherlock','justine_sherlock@mail.ru','Bhutan','2025-09-13 16:10:49','2025-09-13 16:10:49',0),
  ('ec69eb74-bad1-4aed-aa42-34458f95509c','rodger88a30944','rodgerrevell@bigpond.com','Burkina Faso','2025-09-13 17:57:33','2025-09-13 17:57:33',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('d2d01b54-0239-41a0-b25f-82e325b2e295','bertieboulger3','bertie.boulger@yahoo.com','Australia','2025-09-13 19:50:09','2025-09-13 19:50:09',0),
  ('ed21dc1b-93de-442b-a615-54c42c808f1a','antjedorn966734','antjedorn@yahoo.com','Gabon','2025-09-13 20:05:40','2025-09-13 20:05:40',0),
  ('32071ead-75e1-4a7d-9f6f-896f44704e26','romeolavin17553','romeolavin@gmail.com','Mauritania','2025-09-13 21:13:37','2025-09-13 21:13:37',0),
  ('35074119-f6ca-4630-9015-eb4c8f59d686','ladonnawenzel','ladonna.wenzel@aol.com','Burundi','2025-09-13 22:40:38','2025-09-13 22:40:38',0),
  ('8a2cab54-9b45-4e62-9a1e-a202d57dd6fb','sharonpederson6','sharon.pederson@yahoo.fr','Gibraltar','2025-09-14 01:11:35','2025-09-14 01:11:35',0),
  ('9f68a1d7-6e19-4fc4-9140-8d111625932a','gennienwp792','gennie_mchugh@hotmail.com','Greece','2025-09-14 03:51:28','2025-09-14 03:51:28',0),
  ('ddd998d0-149d-4352-892f-337670f82fb4','lashondabell036','lashondabell@rediffmail.com','Luxembourg','2025-09-14 06:48:37','2025-09-14 06:48:37',0),
  ('2e94c753-2634-44c7-9286-82f79166e8ce','triciamclemore','triciamclemore@yahoo.es','Austria','2025-09-14 07:10:53','2025-09-14 07:10:53',0),
  ('4561b0ba-06b7-4c3a-9def-c296c7fb8b28','betseymckinney','betsey.mckinney@bellsouth.net','Åland Islands','2025-09-14 08:55:04','2025-09-14 08:55:04',0),
  ('295e8860-28cd-49cc-857b-abf8f3e43b4d','vernhague7','vernhague@gmail.com','French Guiana','2025-09-14 09:09:49','2025-09-14 09:09:49',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f3282a66-e65b-441f-afae-15253a0615e7','preciousngo07','precious.ngo@bellsouth.net','Austria','2025-09-14 09:54:09','2025-09-14 09:54:09',0),
  ('1b668c4e-ba1e-4b7f-bf59-4c6e81ca66a6','angelesmacgregor','angelesmacgregor@yahoo.ca','Eswatini (Swaziland)','2025-09-14 09:55:57','2025-09-14 09:55:57',0),
  ('4850bf17-ca1a-450f-9d21-54417c625c3b','aptdorthea','dorthea.vanraalte@gmail.com','Ethiopia','2025-09-14 10:15:37','2025-09-14 10:15:37',0),
  ('543f7651-40dc-4781-ad3c-4a5e5a443ae1','shaynewrigley','shayne_wrigley@gmail.com','Austria','2025-09-14 11:13:24','2025-09-14 11:13:24',0),
  ('dee0d14a-16b1-4ee9-9a00-73b16f13427c','marielnilsen93','marielnilsen@outlook.com','Fiji','2025-09-14 11:16:57','2025-09-14 11:16:57',0),
  ('509519b7-4d40-4312-b18a-3adf98d3e13d','lynettemcgahan3','lynette.mcgahan@hotmail.fr','Bolivia','2025-09-14 12:36:34','2025-09-14 12:36:34',0),
  ('ec213058-f229-43b0-9002-ce85431582a6','verlabrent83','verlabrent@hotmail.fr','Lithuania','2025-09-14 12:47:37','2025-09-14 12:47:37',0),
  ('79b44c4f-4031-4270-8690-3bb0edf822b7','lavoncarothers','lavoncarothers@yahoo.com','Austria','2025-09-14 17:20:12','2025-09-14 17:20:12',0),
  ('6722899a-f697-44ac-b466-ba581e351482','margueritegodson','margueritegodson@libero.it','Spain','2025-09-14 17:32:26','2025-09-14 17:32:27',0),
  ('60f70556-a77e-4974-893e-a14520625f39','tiffaniwest','tiffaniwest@aol.com','Mauritius','2025-09-14 18:28:15','2025-09-14 18:28:15',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('2362eb62-56a2-467f-8000-579380add06b','lilliansauls30','lilliansauls@gmail.com','French Guiana','2025-09-14 18:55:48','2025-09-14 18:55:48',0),
  ('373cd4f4-01d2-4cd7-a2d8-aae3fe5a4590','fletalott68383','fletalott@hotmail.co.uk','French Guiana','2025-09-14 19:04:03','2025-09-14 19:04:03',0),
  ('8714373e-1dd6-4213-8ee5-2e7576be3e00','maloriemartinovi','maloriemartinovich@hotmail.es','French Guiana','2025-09-14 21:00:18','2025-09-14 21:00:18',0),
  ('d36d9f73-b7f0-4de3-a902-3ea48866183b','christelpantoja','christelpantoja@gmail.com','Wallis & Futuna','2025-09-14 23:14:17','2025-09-14 23:14:17',0),
  ('067b853e-3c2e-4e98-ae49-eca7be89d3f2','tashadill58','tashadill@yahoo.com.br','Norfolk Island','2025-09-14 23:43:15','2025-09-14 23:43:15',0),
  ('46d12009-ac10-4f8a-977b-9597b973cc1f','lincolnfontenot','lincolnfontenot@gmail.com','Zambia','2025-09-15 00:59:08','2025-09-15 00:59:08',0),
  ('a23d2dc9-8ef1-4f7b-93f5-51ff9a67602d','evangelinewinche','evangeline.winchester@charter.net','French Guiana','2025-09-15 02:26:30','2025-09-15 02:26:30',0),
  ('cb409b65-3e0f-4771-99f2-e385c8d01f99','katharinapeyton','katharina_peyton@bellsouth.net','Ghana','2025-09-15 04:39:03','2025-09-15 04:39:03',0),
  ('0b7de884-1521-4237-842d-07c0e44e70e2','djanotagotine','dilza.solange@gmail.com',NULL,'2025-09-15 07:31:11','2025-09-18 17:41:45',1),
  ('63b3d418-6008-40b0-8102-a5502a77d22d','filomenab74','filomenacollie@aol.com','Rwanda','2025-09-15 07:42:27','2025-09-15 07:42:27',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('49c3eca8-036d-4cdb-8125-4fe7c675b11a','imacapuano26777','ima.capuano@gmail.com','Qatar','2025-09-15 09:51:48','2025-09-15 09:51:48',0),
  ('9dab7656-6eba-4c04-bb90-2477c52bea19','islarousseau','islarousseau@yahoo.de','Palestine','2025-09-15 10:26:17','2025-09-15 10:26:17',0),
  ('a9c0b531-231f-4f4a-a704-1f52ec3ff874','adrianna2827','adrianna.sorell@ig.com.br','Austria','2025-09-15 10:27:41','2025-09-15 10:27:41',0),
  ('9009d3b1-0932-4df0-8a76-6c1de24959cf','delorismcdowall','delorismcdowall@gmail.com','Austria','2025-09-15 10:34:03','2025-09-15 10:34:03',0),
  ('b0effe5d-ba74-4ee8-bb10-55a140030847','pipercooley','pipercooley@uol.com.br','Sudan','2025-09-15 12:29:46','2025-09-15 12:29:46',0),
  ('b0f6dc49-ca0f-4312-ab36-be10cc4dd9b6','clarencejoe2470','clarencejoe@gmail.com','Palestine','2025-09-15 16:55:29','2025-09-15 16:55:29',0),
  ('ab2be93a-7041-4f6d-8498-bca320a33a90','donnahash2','donnahash@hotmail.co.uk','French Guiana','2025-09-15 18:57:52','2025-09-15 18:57:52',0),
  ('27f7b38c-73f4-4ce8-b65a-e2f41b055297','errolbegin6','errol.begin@live.co.uk','Austria','2025-09-15 19:23:48','2025-09-15 19:23:48',0),
  ('72db0d7c-f3b6-4658-b73e-e6f6fef8d71b','jedavery1065163','jedavery@yahoo.co.uk','Togo','2025-09-15 19:31:20','2025-09-15 19:31:20',0),
  ('78791547-bb27-4869-99a2-8075b31c528a','hollyfrance2','holly_france@yahoo.com','Jersey','2025-09-15 21:45:14','2025-09-15 21:45:14',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('643fdb8f-52d3-40e1-b1a1-a91366c6486f','virgilbeauvais','virgilbeauvais@gmail.com','Congo (Rep.)','2025-09-16 04:10:36','2025-09-16 04:10:36',0),
  ('092b4d1e-f6f3-4f07-8b19-61e49d387fc6','brittwalcott75','brittwalcott@gmail.com','Australia','2025-09-16 04:18:37','2025-09-16 04:18:37',0),
  ('8dc6bf02-5799-4c20-a2ca-6c7f38648589','augustusoreilly','augustus.oreilly@gmail.com','Somalia','2025-09-16 11:26:15','2025-09-16 11:26:15',0),
  ('78cbdca5-57f9-4e1a-bf24-1ea98e775e36','kathiewinchcombe','kathiewinchcombe@hotmail.com','French Guiana','2025-09-16 11:42:44','2025-09-16 11:42:44',0),
  ('85282c46-59f1-4153-8e59-ce0fb2bab0b9','trudimoses7','trudimoses@hotmail.co.uk','Czech Republic','2025-09-16 13:44:28','2025-09-16 13:44:28',0),
  ('ccbc0e7a-15e4-4b0f-a0b2-0a618590900c','brennamichels6','brennamichels@gmail.com','Guadeloupe','2025-09-16 15:38:32','2025-09-16 15:38:32',0),
  ('397923a4-9f5c-4c9e-9613-adf73b92b196','reyesgruber3990','reyesgruber@yahoo.in','Samoa (American)','2025-09-16 16:35:42','2025-09-16 16:35:42',0),
  ('59fb59c2-5513-4e1a-bf6a-b034edabba3d','krystlebourque','krystlebourque@yahoo.com','Denmark','2025-09-16 17:01:30','2025-09-16 17:01:30',0),
  ('54b35602-4908-404e-bb5f-bdb5e6f968d3','dewittstoate6','dewitt.stoate@laposte.net','Svalbard & Jan Mayen','2025-09-16 18:05:56','2025-09-16 18:05:57',0),
  ('089377b6-6d65-482b-9b5b-ca2b5186e6cf','mariastoddard07','mariastoddard@live.nl','St Kitts & Nevis','2025-09-16 19:04:46','2025-09-16 19:04:46',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('27840936-931c-4a8f-9305-4b93b0554f73','earlgadsdon499','earlgadsdon@ymail.com','San Marino','2025-09-16 21:54:28','2025-09-16 21:54:28',0),
  ('1b07fbc2-6605-4b7a-8d71-79c3f1d0aedb','robinruse512','robin_ruse@gmail.com','Yemen','2025-09-16 22:08:56','2025-09-16 22:08:56',0),
  ('bec9761d-98a5-495c-ae86-2e1059599095','maryjo91r43344','maryjoconnery@ymail.com','Wallis & Futuna','2025-09-16 22:17:48','2025-09-16 22:17:48',0),
  ('9bd36631-5cf5-471c-b178-978c94470793','alfiehunter','alfie.hunter@hotmail.co.uk','France','2025-09-16 23:03:22','2025-09-16 23:03:22',0),
  ('529c6c5f-1638-4aa2-868b-fc87a8dbf7d0','andrashephard01','andrashephard@yahoo.com','New Caledonia','2025-09-16 23:05:45','2025-09-16 23:05:45',0),
  ('5c52fce0-de18-4b84-93c5-cf884bfa4b33','gladislaroche3','gladislaroche@googlemail.com','Australia','2025-09-17 02:44:06','2025-09-17 02:44:06',0),
  ('fd4bf7f2-0256-4add-92bb-cd465326017c','vbhanastasia','anastasiahammett@gmx.de','Slovenia','2025-09-17 04:22:42','2025-09-17 04:22:42',0),
  ('ffe3b316-d03d-434e-b538-517a43cd0f5f','callumlanglois','callumlanglois@terra.com.br','Austria','2025-09-17 06:12:18','2025-09-17 06:12:18',0),
  ('150ad5fe-4e9f-429f-a785-b21e19843653','maybellwrigley0','maybellwrigley@free.fr','Somalia','2025-09-17 07:22:12','2025-09-17 07:22:12',0),
  ('ad8531ec-183f-4842-a37f-feff821de087','lidawhitten78','lidawhitten@yahoo.com','Liberia','2025-09-17 07:34:04','2025-09-17 07:34:04',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('ef1aef5d-c835-41fa-8e5b-be8c46e76aa7','francesbanda','francesbanda@orange.fr','Austria','2025-09-17 07:35:43','2025-09-17 07:35:43',0),
  ('db6ee28b-8c76-4010-8638-af66f26ea7f4','hunterwin2','hunterrowlandson@terra.com.br','Poland','2025-09-17 07:54:57','2025-09-17 07:54:57',0),
  ('5616217d-ebb1-4f09-b47e-d340f67c6053','thorstendalton8','thorsten.dalton@hotmail.es','Sudan','2025-09-17 09:23:43','2025-09-17 09:23:43',0),
  ('dfecf84d-44b4-4edc-964a-4c81a4c02597','lashundawinterbo','lashundawinterbotham@hotmail.co.uk','Austria','2025-09-17 10:54:15','2025-09-17 10:54:15',0),
  ('aab9409c-4b7c-4ef8-ac48-b7d311ae6428','thaddeusgumm951','thaddeusgumm@gmail.com','Belgium','2025-09-17 13:51:21','2025-09-17 13:51:21',0),
  ('e7da270f-f132-47b9-ac78-ce915c3b7840','hope15r4975360','hope_mcevoy@wanadoo.fr','Cook Islands','2025-09-17 18:47:50','2025-09-17 18:47:50',0),
  ('01b7288d-346f-4a29-8cd7-7bc3cde4fda3','briannemarcell4','briannemarcell@yahoo.com.au','Australia','2025-09-17 20:19:18','2025-09-17 20:19:19',0),
  ('b72a4d68-b9ec-4b82-9a04-a01c3bee1754','tabithatheis','tabithatheis@gmail.com','Austria','2025-09-17 21:35:18','2025-09-17 21:35:18',0),
  ('4d35ea0f-676a-402e-a6b1-abca0659eccf','smhzelda88642572','zelda_chung@yahoo.co.uk','Libya','2025-09-17 22:51:39','2025-09-17 22:51:39',0),
  ('a582862d-13f3-44bd-8dd8-3d46d642ec6f','odessa8266','odessa.ibarra@aol.com','Åland Islands','2025-09-18 01:58:54','2025-09-18 01:58:54',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4e1a9436-a79c-4452-bfa9-1249e82e0402','orengow344','orengow@hotmail.com','Seychelles','2025-09-18 03:12:27','2025-09-18 03:12:27',0),
  ('d8127325-0adf-473f-9c7e-043e1f666a91','estelatorrens37','estela_torrens@yandex.ru','Palau','2025-09-18 07:03:05','2025-09-18 07:03:05',0),
  ('f7b3194d-4e41-414e-9028-d132e5973966','shelamcgowan162','shelamcgowan@hotmail.com','French Guiana','2025-09-18 14:23:55','2025-09-18 14:23:55',0),
  ('ee1c49c9-0835-446a-8941-6fa4abac2f8f','chudarker7','chudarker@web.de','Korea (North)','2025-09-18 14:56:45','2025-09-18 14:56:46',0),
  ('79561315-1abd-44e7-ad34-acf5efbf051e','kandycaraballo','kandycaraballo@hotmail.it','Andorra','2025-09-18 17:04:50','2025-09-18 17:04:50',0),
  ('11d5fdda-293d-4358-854d-aa743b787c8d','zifgloria035709','gloriameza@hotmail.co.uk','Mali','2025-09-18 17:12:40','2025-09-18 17:12:40',0),
  ('9c36284b-5d6c-459c-8eb4-1ab9dbb6c205','garfieldbradway','garfieldbradway@yahoo.com','Curaçao','2025-09-18 18:31:47','2025-09-18 18:31:47',0),
  ('fa3d7bf8-efd0-439f-8980-ece87dd258cd','mellisananson3','mellisananson@yahoo.com.au','Colombia','2025-09-18 23:21:20','2025-09-18 23:21:20',0),
  ('37980ff4-b45b-4f55-b59f-76e2f835a1cb','kristeen9570','kristeenchauncy@yandex.ru','Curaçao','2025-09-19 08:10:36','2025-09-19 08:10:36',0),
  ('0b8124cd-846d-4efb-8b1c-f8ac7381c1bb','carmen5415','carmenbaskett@yahoo.com','Ukraine','2025-09-19 10:15:08','2025-09-19 10:15:08',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('5a69227c-7e54-46d4-b21d-1ae96b667667','mfarfanlievano','m_farfan@javeriana.edu.co',NULL,'2025-09-19 11:22:09','2025-09-19 14:15:42',1),
  ('c71f6e50-d747-4c47-a447-2fc597251b6c','michellmansfield','michell.mansfield@gmail.com','French Guiana','2025-09-19 12:39:53','2025-09-19 12:39:53',0),
  ('a72cd5ec-4e4f-4c02-9abf-f5c17bcb7266','fvqvaleria','valeria_chase@uol.com.br','French Guiana','2025-09-19 13:51:26','2025-09-19 13:51:26',0),
  ('8c0a27ea-1d52-446d-8554-a718dfae3f6e','rodsimcox478286','rodsimcox@ig.com.br','Congo (Rep.)','2025-09-19 17:32:47','2025-09-19 17:32:47',0),
  ('3ef77973-34eb-4eed-aab0-41c3d2570927','verlenehelbig4','verlenehelbig@gmail.com','Australia','2025-09-19 18:21:23','2025-09-19 18:21:23',0),
  ('da5aeb00-9fc0-425b-8289-6da2deae90d9','lawrencewilke3','lawrencewilke@aol.com','Czech Republic','2025-09-19 20:15:59','2025-09-19 20:15:59',0),
  ('cdd5de30-24a3-43c9-a5fc-cf345c43310d','idawintle195','idawintle@gmail.com','Australia','2025-09-19 22:56:36','2025-09-19 22:56:36',0),
  ('2a52e845-5b30-42ca-b2c8-b771a6b00fd2','armandlindstrom','armand.lindstrom@aol.com','Austria','2025-09-20 03:02:48','2025-09-20 03:02:48',0),
  ('fe1ed829-0116-466c-b67f-f1bf7dfa770f','jeanamelrose681','jeanamelrose@hotmail.es','Poland','2025-09-20 06:59:24','2025-09-20 06:59:24',0),
  ('61dac829-d738-420c-8e19-8f0f892c9e78','moralinsley647','moralinsley@charter.net','Austria','2025-09-20 10:22:47','2025-09-20 10:22:47',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('464f35c0-8e59-4bf8-82a2-03f33264ac48','jamilaraine718','jamila_raine@hotmail.com','Bangladesh','2025-09-20 10:58:56','2025-09-20 10:58:56',0),
  ('9944827a-8fc9-4fd6-b9bb-52330a89256a','cyrilweaver','cyril.weaver@gmail.com','Samoa (western)','2025-09-20 11:45:39','2025-09-20 11:45:39',0),
  ('61e342ff-3b9b-48fb-81d0-197e8e945bbb','carinteal830511','carinteal@gmail.com','Costa Rica','2025-09-20 11:45:51','2025-09-20 11:45:51',0),
  ('5968dbfd-894b-470a-ac14-41307f23ec83','princelabarre','prince.labarre@bellsouth.net','French Guiana','2025-09-20 12:55:25','2025-09-20 12:55:26',0),
  ('2ff377a9-3b35-4699-9a24-b082bb362bc9','tituscarty51','tituscarty@live.co.uk','Djibouti','2025-09-20 17:21:36','2025-09-20 17:21:36',0),
  ('214d85b3-289c-4789-9908-ec2d6b97000e','veramackinlay','veramackinlay@aol.com','Cuba','2025-09-20 18:54:46','2025-09-20 18:54:46',0),
  ('fe2e3c21-f217-4f02-b2df-944a186de266','charlotteguerard','charlotteguerard@bigpond.com','Palestine','2025-09-20 22:29:56','2025-09-20 22:29:56',0),
  ('e3d562de-4d49-4d73-89ed-b5dd3e0ec84d','karolmuncy3','karolmuncy@gmail.com','Western Sahara','2025-09-21 00:42:18','2025-09-21 00:42:19',0),
  ('310bd53f-284b-4035-8940-b4c05f402954','laraemon42057','laraekinslow@yahoo.it','Philippines','2025-09-21 02:26:39','2025-09-21 02:26:39',0),
  ('fa6b8e42-baa0-4b88-94de-6bbc8fd9f83c','gastonhoman94','gastonhoman@hotmail.co.uk','Netherlands','2025-09-21 04:35:35','2025-09-21 04:35:35',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('f6ba0110-302c-49e6-9de3-8be4a3e1951c','petrachick5','petrachick@gmail.com','Christmas Island','2025-09-21 05:55:28','2025-09-21 05:55:29',0),
  ('be1b2d9b-9666-4315-b28d-bd0a64b42744','nataliabeyers5','nataliabeyers@neuf.fr','Greenland','2025-09-21 16:27:53','2025-09-21 16:27:54',0),
  ('eae6adaa-c104-4767-bc2c-04691f5ebd1a','erniekroger324','ernie_kroger@live.co.uk','Wallis & Futuna','2025-09-21 19:01:51','2025-09-21 19:01:51',0),
  ('07e88b8d-baa1-4b13-b0fc-730171b24fc5','leathahawks9167','leatha.hawks@orange.fr','Turkey','2025-09-22 02:21:35','2025-09-22 02:21:35',0),
  ('28ea368e-d0c0-4a31-9976-8ea5905a18fb','randi7646713081','randiellery@yahoo.com','Ecuador','2025-09-22 03:51:48','2025-09-22 03:51:49',0),
  ('93c34ea8-c85d-4c02-bee1-7cc720578038','cristinaiod','cristinabruns@rediffmail.com','Aruba','2025-09-22 04:08:00','2025-09-22 04:08:00',0),
  ('391568d0-448d-4545-bf98-82c81351a4c2','veolasweet7','veolasweet@hotmail.co.uk','Mali','2025-09-22 11:30:55','2025-09-22 11:30:55',0),
  ('559446d3-03da-48aa-8372-8ac13fe0d009','abrahamu11','abrahamwarburton@yahoo.it','Britain (UK)','2025-09-22 12:24:19','2025-09-22 12:24:19',0),
  ('ea758d46-73ab-4318-aa0f-471f62b85611','glorywhittle150','glorywhittle@yahoo.com','Australia','2025-09-22 12:48:58','2025-09-22 12:48:58',0),
  ('a833e0b8-bb1e-4fd5-b4b8-ca32cc0b881a','davidchaparro','david.chaparrovi@amigo.edu.co','Colombia','2025-09-22 18:06:19','2025-09-22 18:06:19',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('cab3428c-541f-4634-83c8-46f8475d581c','chastityburger8','chastityburger@hotmail.it','Australia','2025-09-22 18:12:01','2025-09-22 18:12:01',0),
  ('52763e84-6079-4678-b38a-52b3b626d291','ydvson646752370','sonwaldo@live.com','Luxembourg','2025-09-22 18:54:13','2025-09-22 18:54:13',0),
  ('ec386d9d-aab9-4edb-b972-7c9c6d10b365','moisesfrith5','moises_frith@yahoo.com','Virgin Islands (US)','2025-09-22 19:36:36','2025-09-22 19:36:37',0),
  ('0299bc96-2704-491a-abbf-6e2978fcdcc8','jasonespinal','jasonespinal@hotmail.co.uk','Guinea-Bissau','2025-09-22 20:06:28','2025-09-22 20:06:28',0),
  ('a1b545a6-af4e-417a-b419-3f2285924af3','minervabadcoe7','minerva_badcoe@yahoo.ca','Norway','2025-09-22 22:21:37','2025-09-22 22:21:38',0),
  ('900417d3-78bc-4f5d-ac56-9f0efd7a2d7d','valeriabirchell','valeriabirchell@hotmail.com','Libya','2025-09-22 23:57:01','2025-09-22 23:57:01',0),
  ('42a5dec5-e263-45c8-805b-dd951f3f7ac4','rodrickmarshall','rodrick_marshall@yahoo.it','Turkmenistan','2025-09-23 00:41:49','2025-09-23 00:41:49',0),
  ('15143d26-413f-47db-a9c6-aea66251bdda','sspesther9937','esthertauchert@yahoo.com','Burkina Faso','2025-09-23 03:43:52','2025-09-23 03:43:52',0),
  ('4e1ee312-1d08-4953-905d-8934e5ec2f98','ardentgz84287','ardengsell@hotmail.fr','Austria','2025-09-23 05:08:18','2025-09-23 05:08:18',0),
  ('c2577d3f-7bb7-45c3-bdd8-cc7ad0a7bdc6','terriestell8','terriestell@libero.it','Panama','2025-09-23 05:47:20','2025-09-23 05:47:20',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c685e66f-d83b-4fb0-9a95-88f25fe88c77','67o3301584474','jfejnddpipjm@gmail.com','Heard Island & McDonald Islands','2025-09-23 06:00:59','2025-09-23 06:00:59',0),
  ('6988de73-d115-44a0-963f-f3fba2a9a8dd','4202959447706','cpphljbipdldbc@uol.com.br','Panama','2025-09-23 06:35:28','2025-09-23 06:35:28',0),
  ('75b2a043-6392-4d66-9dd6-e29aaf583854','kindra72m845915','kindrabroomfield@gmail.com','Solomon Islands','2025-09-23 06:49:44','2025-09-23 06:49:44',0),
  ('6962d9a1-6f82-421a-82ea-87bc24fb8e0e','dariohallock','dariohallock@yahoo.com','French Guiana','2025-09-23 07:12:34','2025-09-23 07:12:34',0),
  ('edf836f2-4c9e-44c0-a739-9160d7c72b0b','712983832259','eikonpgacnon_182182@orange.fr','Austria','2025-09-23 08:49:02','2025-09-23 08:49:02',0),
  ('ceee39f0-0e9f-4f25-97a5-3d1b8d6be959','972503922885646','kccbcbgcnga230@ig.com.br','Jordan','2025-09-23 09:07:32','2025-09-23 09:07:32',0),
  ('6dccf0f9-a04d-42db-b57a-8b54765a2e62','hassangreenough','hassangreenough@aol.com','Djibouti','2025-09-23 09:26:42','2025-09-23 09:26:42',0),
  ('60050adc-6be0-4570-aa13-c37fe58ad5f0','leorabiddlecombe','leorabiddlecombe@orange.fr','New Caledonia','2025-09-23 09:46:03','2025-09-23 09:46:03',0),
  ('61c8fad9-e3f2-4eab-ba85-00810df7e57e','64947612427685','mmcdjoapjdihje@gmail.com','Finland','2025-09-23 09:59:45','2025-09-23 09:59:46',0),
  ('b09bf5f1-d096-403a-a7b3-a18e58be3de3','staciewoolls368','stacie_woolls@gmail.com','French Guiana','2025-09-23 10:25:05','2025-09-23 10:25:06',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('abdb8e0c-0ad7-406f-bccb-a85d96fd62a0','eek99140765285','jkhkaphjfpfgie@outlook.com','Norway','2025-09-23 10:31:05','2025-09-23 10:31:05',0),
  ('c0408731-8d16-4ec9-9115-5f30ba51662e','clairedufaur6','clairedufaur@bellsouth.net','Mongolia','2025-09-23 12:48:18','2025-09-23 12:48:18',0),
  ('5595f7a8-9e21-4ffc-ac02-c5e5a81719f6','merryggg0679534','merryabend@hotmail.es','Australia','2025-09-23 15:29:46','2025-09-23 15:29:46',0),
  ('da9e1a93-1659-46e5-aeeb-73721142a735','tajbeers28394','tajbeers@bol.com.br','Malaysia','2025-09-23 18:08:59','2025-09-23 18:08:59',0),
  ('7ecfa34e-caec-4153-b6a9-1503851ebaaa','mitchellpalumbo','mitchellpalumbo@yahoo.co.in','Nigeria','2025-09-23 19:11:13','2025-09-23 19:11:13',0),
  ('fa703f71-6ef7-442d-b55f-de78964ba934','frederick91c','frederickcundiff@aol.com','Uganda','2025-09-23 19:16:37','2025-09-23 19:16:37',0),
  ('b609b7b5-ae98-46b3-a8e7-2e4dd634d1c4','sashacornish560','sashacornish@yahoo.com','French Guiana','2025-09-23 21:53:16','2025-09-23 21:53:16',0),
  ('93c56d4f-f2da-421b-879b-76b0bc4335f1','emilieleyva','emilie_leyva@gmail.com','French Guiana','2025-09-23 22:03:19','2025-09-23 22:03:20',0),
  ('374dc29a-0234-49b1-944a-3051ea1a293a','qsjcrystle','crystlesnyder@aol.com','Malawi','2025-09-23 22:09:56','2025-09-23 22:09:56',0),
  ('1fa36744-f8ad-44be-b650-caef5b7011d4','0449009795602','ldkcocccga@gmail.com','Vatican City','2025-09-23 23:54:30','2025-09-23 23:54:30',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c1aabe2c-4318-4215-b655-71e0b4d41474','rkp9243946434','cbklkalijoikk1717@verizon.net','Antarctica','2025-09-23 23:57:21','2025-09-23 23:57:21',0),
  ('8185b915-4572-45b9-904f-c1dcca6b8845','susandegroot957','susandegroot@gmail.com','France','2025-09-24 03:03:19','2025-09-24 03:03:19',0),
  ('03d31bf2-44eb-4692-b4fe-b3bca76faf58','katherinekieran','katherinekieran@hotmail.fr','Slovakia','2025-09-24 05:03:51','2025-09-24 05:03:51',0),
  ('0ac785a3-6bde-469c-8c6d-3503d1b129b0','frederickm57','frederick_soukup@yahoo.ca','French Guiana','2025-09-24 10:27:18','2025-09-24 10:27:18',0),
  ('8c4eff0d-c33a-4699-a064-bf34310f6d0c','edwardocherry1','edwardo_cherry@hotmail.com','Eritrea','2025-09-24 14:46:54','2025-09-24 14:46:54',0),
  ('b4856a70-75ed-4b57-8eaf-c15efa38ca98','hueyl18156366','hueystern@outlook.com','Indonesia','2025-09-24 20:02:25','2025-09-24 20:02:25',0),
  ('60656b2e-a479-4d81-b91b-73d8cb429f55','josephvale851','joseph_vale@hotmail.it','Mali','2025-09-24 20:15:42','2025-09-24 20:15:42',0),
  ('9e06eb03-5f84-40bc-af04-aedb290a6197','thaomattson5','thaomattson@aol.com','Bermuda','2025-09-24 20:48:49','2025-09-24 20:48:49',0),
  ('d6fcf268-040a-4a81-8c5a-d8c132a83263','rodolfotisdall','rodolfo.tisdall@rambler.ru','French Guiana','2025-09-24 21:07:30','2025-09-24 21:07:30',0),
  ('8f262b11-ce01-4b26-a0f9-0d3bd815c7da','klauskindel','klaus.kindel@live.nl','French Guiana','2025-09-25 01:33:17','2025-09-25 01:33:17',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('914d2a05-c19a-4026-8dfc-dc4e15d91919','codyfosbery','codyfosbery@gmail.com','Denmark','2025-09-25 04:14:29','2025-09-25 04:14:29',0),
  ('0a218fe3-abde-4c27-950d-3868a6abac97','mandygeorg6','mandygeorg@ig.com.br','Burkina Faso','2025-09-25 04:53:37','2025-09-25 04:53:38',0),
  ('eac2c052-bf7a-4a3f-876e-d4f3ad4310d2','edisonloman2','edisonloman@bigpond.com','Svalbard & Jan Mayen','2025-09-25 06:37:46','2025-09-25 06:37:46',0),
  ('8e11792f-3874-4612-8fc2-7f2506d2e327','karmafield38','karmafield@hotmail.com','Niue','2025-09-25 06:45:39','2025-09-25 06:45:39',0),
  ('a14566c0-6ca8-4eac-a783-5e16feccc593','williamsuh6419','williamsuh@yahoo.com','Uzbekistan','2025-09-25 08:53:27','2025-09-25 08:53:27',0),
  ('83c70e11-dd26-46f1-bed3-599b1d870ffb','antjeperea8','antjeperea@mail.ru','Austria','2025-09-25 09:35:09','2025-09-25 09:35:09',0),
  ('d26d8771-e8c4-4b58-91f0-c795ff2e0447','sharylheading','sharyl_heading@hotmail.com','Australia','2025-09-25 11:50:09','2025-09-25 11:50:09',0),
  ('26d45f4e-9de1-4303-a18c-fa1c59683d71','nidauye8008','nida.sena@yahoo.com','Austria','2025-09-25 12:13:39','2025-09-25 12:13:39',0),
  ('fe3b4a10-46c6-4a33-a19f-e0e33c24f36d','kelleeharpur0','kellee.harpur@yahoo.fr','French Guiana','2025-09-25 12:30:47','2025-09-25 12:30:47',0),
  ('a5b83538-d8f2-4388-901c-5decc17c8413','bryce26s5847','bryce.card@yahoo.co.in','Turkey','2025-09-25 12:38:24','2025-09-25 12:38:24',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c47abe78-c269-4811-ab4c-bd98bf7aaa5a','tabathamcgirr8','tabathamcgirr@free.fr','Niue','2025-09-25 14:30:28','2025-09-25 14:30:28',0),
  ('af6c6849-672a-4e2f-868a-7afabaaf5c6b','brendanmiles','brendanmiles@rocketmail.com','Palau','2025-09-25 15:16:31','2025-09-25 15:16:31',0),
  ('bb61a53b-1494-415c-8813-07947a6020c6','austinkhan5','austinkhan@hotmail.co.uk','Andorra','2025-09-25 16:45:40','2025-09-25 16:45:41',0),
  ('3be7760d-06b5-4b1e-af6f-20f00ed91482','carmeloheysen37','carmeloheysen@rambler.ru','Mexico','2025-09-25 16:53:51','2025-09-25 16:53:51',0),
  ('8faed5c4-49dc-46d1-9f2f-beef8a5ebd45','qbfdevin238','devindowell@yahoo.com','Australia','2025-09-25 17:17:18','2025-09-25 17:17:18',0),
  ('a62d1b9a-bc27-4ccf-a82b-438be4c59292','jkishane7585446','shane.pendleton@gmail.com','Zimbabwe','2025-09-25 17:38:43','2025-09-25 17:38:43',0),
  ('8286a703-68cf-47f9-ab18-a351d0879725','eleanoremathias','eleanoremathias@facebook.com','Macau','2025-09-25 18:26:11','2025-09-25 18:26:11',0),
  ('450d408e-d5f9-4763-bb9c-fed884c44b02','justinahelmick1','justinahelmick@web.de','Australia','2025-09-25 19:26:50','2025-09-25 19:26:50',0),
  ('0a5b2f56-e5b6-474b-a984-1cb954de95d6','petrabryan54333','petrabryan@mail.ru','Malaysia','2025-09-25 19:52:57','2025-09-25 19:52:57',0),
  ('ba6afa43-99b9-427d-be65-4bc9748f6438','samuelvivier49','samuelvivier@hotmail.co.uk','French Guiana','2025-09-25 20:29:34','2025-09-25 20:29:34',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('9dedfb3a-0d17-46cb-b704-9927b2ec8ca6','claudiacadle','claudiacadle@gmail.com','Nigeria','2025-09-26 01:33:15','2025-09-26 01:33:15',0),
  ('f852db5d-99c2-42e9-ab8b-fe9cb7d093c2','vernell6534','vernellhare@live.nl','Canada','2025-09-26 03:34:40','2025-09-26 03:34:40',0),
  ('3723511c-9acb-4896-b9ee-482f02096dfb','brigetterutter9','brigetterutter@outlook.com','Austria','2025-09-26 03:54:12','2025-09-26 03:54:12',0),
  ('c42a0ad3-b8eb-467b-99e8-1fdd22b34299','angelinecurnow','angeline.curnow@gmail.com','Malta','2025-09-26 03:57:46','2025-09-26 03:57:46',0),
  ('d001cd1d-ae8a-4dfd-878d-285ccb5733ca','deboraswearingen','deboraswearingen@hotmail.co.uk','Australia','2025-09-26 05:14:57','2025-09-26 05:14:57',0),
  ('2be208a7-7bc2-4763-aa4b-318d7341df9c','alisiableasdale','alisiableasdale@bol.com.br','Western Sahara','2025-09-26 10:11:15','2025-09-26 10:11:15',0),
  ('619142bd-f273-4ce8-b6b9-bb2d0cd7e2a0','ardis8855847','ardis.stout@wanadoo.fr','Brazil','2025-09-26 10:41:48','2025-09-26 10:41:48',0),
  ('b2d00dea-14e2-4c4c-b769-c89c3a9d1390','besssanches13','besssanches@yahoo.com','Djibouti','2025-09-26 11:41:56','2025-09-26 11:41:56',0),
  ('81d0fb59-7347-43a5-b04d-0ed1d475a8d1','veldathompkins','veldathompkins@yahoo.com','Australia','2025-09-26 12:06:07','2025-09-26 12:06:07',0),
  ('26436028-447f-4ca0-addd-d37844c070a3','sangkash89365','sangkash@yahoo.de','Cuba','2025-09-26 17:13:25','2025-09-26 17:13:25',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('01f6c330-e709-4cbe-a7aa-0daa7e03a233','bettiebourgeois','bettiebourgeois@yahoo.com','Austria','2025-09-26 17:55:33','2025-09-26 17:55:33',0),
  ('80382647-8eb2-4698-a1c7-f1a32c16ca93','dustymichaelis','dusty_michaelis@hotmail.fr','Argentina','2025-09-26 18:28:57','2025-09-26 18:28:57',0),
  ('2cf5a224-0404-4742-aa79-95c68f1e92fb','reganlefebvre2','reganlefebvre@yahoo.de','Australia','2025-09-27 00:06:17','2025-09-27 00:06:17',0),
  ('82e99321-14b3-4c9d-a299-c48c1c06ccb8','lindsaylightner','lindsaylightner@ig.com.br','Puerto Rico','2025-09-27 00:09:27','2025-09-27 00:09:27',0),
  ('f5063f40-a0c7-487e-af1f-ab01e74ebb42','ernestines70','ernestineluu@gmail.com','US minor outlying islands','2025-09-27 00:13:17','2025-09-27 00:13:18',0),
  ('d98ab005-3bba-4f3b-addb-e230ef497b3b','columbusluttrell','columbusluttrell@yahoo.com','French Guiana','2025-09-27 01:02:05','2025-09-27 01:02:05',0),
  ('04a5f518-c86e-475f-80e2-17e89773ceff','celinadowse1','celina_dowse@yahoo.com','French Guiana','2025-09-27 01:25:31','2025-09-27 01:25:31',0),
  ('57fd13ba-ea7d-4a0b-91b4-3fc5615ed7f3','hildegarderobill','hildegarderobillard@laposte.net','Argentina','2025-09-27 01:35:11','2025-09-27 01:35:11',0),
  ('64eaa0e9-62f3-4211-afd8-7c642adaf539','irvingbrogan02','irvingbrogan@yahoo.com','Austria','2025-09-27 02:14:09','2025-09-27 02:14:09',0),
  ('cfe49791-369d-444e-8e67-ca00c68b95c9','kennyfreud737','kenny.freud@rambler.ru','Lesotho','2025-09-27 04:55:45','2025-09-27 04:55:45',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('fc93bb3b-7957-4e4e-a3a3-b14dea8e24ea','alexislajoie104','alexislajoie@hotmail.com','Dominican Republic','2025-09-27 06:15:38','2025-09-27 06:15:38',0),
  ('2fe019b5-3291-4a48-bb2d-95c1cb4c8a6f','juliennetreasure','juliennetreasure@libero.it','Turkey','2025-09-27 06:20:58','2025-09-27 06:20:58',0),
  ('23d8aeea-0e56-4edd-8eb2-e84f44191272','audra55f34','audraogrady@hotmail.it','Christmas Island','2025-09-27 08:13:01','2025-09-27 08:13:01',0),
  ('a4bb5a0b-18cd-4b5c-9373-983a23b0bfeb','zenaidamotter55','zenaida_motter@rediffmail.com','French Guiana','2025-09-27 08:13:08','2025-09-27 08:13:08',0),
  ('7d0d50e6-7958-4231-81f3-16fba10e5296','celestetrevino','celestetrevino@yahoo.com','Ghana','2025-09-27 10:14:56','2025-09-27 10:14:56',0),
  ('59ab2f32-9efd-44cc-8d08-fd65e55e289c','kristoferspaffor','kristoferspafford@aol.com','Mauritania','2025-09-27 12:37:51','2025-09-27 12:37:51',0),
  ('04fcc7e3-8b5c-461f-b3db-e97ab6f76d04','opbmaricela','maricelagrady@yahoo.com','French Guiana','2025-09-27 16:46:12','2025-09-27 16:46:12',0),
  ('3662c458-2ec7-45b7-871f-15cc729cf086','snemiguel025815','miguelebner@hotmail.fr','Angola','2025-09-27 17:33:17','2025-09-27 17:33:17',0),
  ('aaf38f76-20a3-4e1b-a307-bb2568a38b50','lizabarber77727','liza.barber@yahoo.com','Cape Verde','2025-09-27 18:50:14','2025-09-27 18:50:14',0),
  ('5a30a745-4d9b-489a-a113-d41d7aec0ef5','fredericrason10','fredericrason@hotmail.co.uk','Vanuatu','2025-09-27 22:48:04','2025-09-27 22:48:05',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('38c75ff4-4b83-489e-8751-0c4e8358e83d','liliana85h','liliana.hoss@hotmail.com','French Guiana','2025-09-28 04:10:37','2025-09-28 04:10:37',0),
  ('94ad7547-6877-4d59-932a-a3a68416f686','sheri19h327738','sheriblanchard@gmail.com','Iceland','2025-09-28 05:11:48','2025-09-28 05:11:48',0),
  ('efeaa0a2-368a-4512-adc0-5bf8f4a04c85','chelsea6369','chelsea_collado@att.net','Pitcairn','2025-09-28 07:31:38','2025-09-28 07:31:38',0),
  ('c81c4de0-d6d2-4b86-bab7-56b6429f801b','remonascorfield','remonascorfield@live.fr','Belize','2025-09-28 07:50:45','2025-09-28 07:50:45',0),
  ('c0c2b6b4-b7f8-4add-8eca-3c0210b5a066','latoyaburbank29','latoyaburbank@yahoo.in','Australia','2025-09-28 08:01:22','2025-09-28 08:01:23',0),
  ('bb0734b0-74c2-4176-b629-9319a616e16b','pearlrupp47101','pearlrupp@gmail.com','France','2025-09-28 09:38:34','2025-09-28 09:38:34',0),
  ('4de5e322-714e-41ce-bfea-e4cdfb48fb4a','axzotilia261005','otiliabullock@hotmail.co.uk','Lesotho','2025-09-28 10:41:54','2025-09-28 10:41:54',0),
  ('9909ea15-5f3e-4118-9d9b-24163a8fd011','gayev95430949510','gaye_siemens@gmail.com','Moldova','2025-09-28 13:09:29','2025-09-28 13:09:30',0),
  ('7a8c48d6-3fde-40c2-a37b-127c7bb5efae','bartvangundy0','bartvangundy@sbcglobal.net','Australia','2025-09-28 13:37:31','2025-09-28 13:37:31',0),
  ('ba08ee58-f4a4-4ae1-bf9b-01c4e0a4d811','samuelgreenough','samuel_greenough@yahoo.co.in','Costa Rica','2025-09-28 14:18:37','2025-09-28 14:18:37',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4fd454e6-aa99-45ea-bd12-a80b98475221','rodneystilwell','rodneystilwell@sfr.fr','Liechtenstein','2025-09-28 14:28:31','2025-09-28 14:28:31',0),
  ('289a6733-c535-4060-b38b-05e0508bcb54','mellissaguercio','mellissaguercio@yahoo.in','Bouvet Island','2025-09-28 15:39:21','2025-09-28 15:39:21',0),
  ('997d91c3-9817-4cf8-bceb-a5efd663d994','jamilap73749','jamilabelstead@bigpond.com','Togo','2025-09-28 17:03:05','2025-09-28 17:03:05',0),
  ('e5e10cbc-45fd-4574-9b5f-cbf01cd8add7','silaslaguerre','silaslaguerre@gmail.com','Trinidad & Tobago','2025-09-28 18:27:07','2025-09-28 18:27:07',0),
  ('6b06e50e-d302-4e16-994a-4b6ca4fa672f','robyncumming80','robyncumming@yahoo.com','Moldova','2025-09-28 18:31:09','2025-09-28 18:31:09',0),
  ('9b5de75a-9f9b-4cec-9a02-a5edb3184b36','wilfredwiltshire','wilfredwiltshire@yahoo.com','Mali','2025-09-28 18:43:40','2025-09-28 18:43:40',0),
  ('1044e402-00e3-41b3-9623-70b3b24a7178','roxannegreener','roxannegreener@uol.com.br','Mayotte','2025-09-28 19:26:47','2025-09-28 19:26:48',0),
  ('d813cb73-3677-4475-829a-f71979cb48ff','roxannewilkerson','roxannewilkerson@googlemail.com','Turkey','2025-09-29 01:00:35','2025-09-29 01:00:36',0),
  ('b1d0f052-c55d-403f-ab72-f6ffb7acf569','serenaallman25','serena.allman@ymail.com','Mauritania','2025-09-29 01:14:42','2025-09-29 01:14:42',0),
  ('97a6185c-1c11-477b-bbe6-6b48f3c8d8d4','andyt644768058','andy.lerma@hotmail.co.uk','Jamaica','2025-09-29 01:17:09','2025-09-29 01:17:09',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('4d2fbe08-9f6a-4f38-95ec-ef08ff8eac33','keithodriscoll','keithodriscoll@bigpond.com','French Guiana','2025-09-29 01:19:47','2025-09-29 01:19:47',0),
  ('2abb7b0d-e696-44e9-bead-c12812e421ec','clwshoshana','shoshana_liston@yandex.ru','Mongolia','2025-09-29 01:40:16','2025-09-29 01:40:16',0),
  ('48597563-30a5-4501-878b-3bf46daf56e8','lauramarston','laura.marston@hotmail.co.uk','Senegal','2025-09-29 02:20:42','2025-09-29 02:20:42',0),
  ('ae7fe54e-e8f4-4919-a9ac-07eb3c6cc22a','emilemccready','emilemccready@yahoo.com','Austria','2025-09-29 02:32:46','2025-09-29 02:32:46',0),
  ('3083000b-c7dd-499a-a761-b4d593f290da','renatocard5822','renatocard@ig.com.br','Panama','2025-09-29 05:36:29','2025-09-29 05:36:29',0),
  ('ab6c56dc-e38b-4555-ac95-0dbeb56d2717','aleisha9063','aleishaspitzer@yahoo.com','Samoa (American)','2025-09-29 06:44:23','2025-09-29 06:44:23',0),
  ('85656195-d081-4ea8-ace7-124e35f49142','tangelaworden3','tangela_worden@gmx.de','Austria','2025-09-29 07:10:19','2025-09-29 07:10:19',0),
  ('4b37a1f1-4976-4571-87b1-ba6c13dff4d7','marion65z62424','marionstacey@yahoo.com','Uzbekistan','2025-09-29 09:14:34','2025-09-29 09:14:34',0),
  ('6417d3f4-4d78-416b-a024-2ce14c7f7f1c','trinadupuis5','trina_dupuis@yahoo.co.in','Rwanda','2025-09-29 10:12:43','2025-09-29 10:12:43',0),
  ('48be3065-51ea-40cc-b420-983f40bc2cef','jhernandezpajares','julio.hernandez@udep.edu.pe',NULL,'2025-09-29 11:55:04','2025-09-29 11:55:04',1);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('c668b87b-3d29-4e99-a985-ab0c403abdbb','magda-pelayo23','magdalena.pelayo@academicos.udg.mx','Mexico','2025-09-29 13:01:57','2025-09-29 13:06:03',1),
  ('22e36bde-235b-4571-9946-17894ce5e97e','chenaob','caralbhenao@utp.edu.co','Colombia','2025-09-29 13:49:10','2025-09-29 13:49:33',1),
  ('eccb77a0-4273-4345-9f66-df6cfa42344e','markkight3','mark.kight@gmail.com','Comoros','2025-09-29 18:27:38','2025-09-29 18:27:38',0),
  ('09e4ad63-63df-48fa-ad8d-9bedf340462b','darwintruitt889','darwintruitt@gmail.com','French Guiana','2025-09-29 20:39:07','2025-09-29 20:39:07',0),
  ('b36ddee3-3021-427b-9f17-6ac6779fafa8','chloenewbigin01','chloenewbigin@yahoo.com','United Arab Emirates','2025-09-29 21:49:43','2025-09-29 21:49:43',0),
  ('7c927339-e115-45e7-acd8-2b9112a3b5b1','shanaconcepcion','shana.concepcion@gmail.com','Australia','2025-09-29 23:23:54','2025-09-29 23:23:54',0),
  ('94702b03-850d-4f80-8397-10bc30469bc8','rooseveltviner','rooseveltviner@sbcglobal.net','Montserrat','2025-09-30 03:14:09','2025-09-30 03:14:09',0),
  ('77ce9099-5abc-405f-b305-136ad39f7fd6','georgettagilles','georgettagilles@hotmail.it','Australia','2025-09-30 07:30:52','2025-09-30 07:30:52',0),
  ('d2fe0dde-563d-4fab-bfa1-94662d045f0d','agilr','agilr@poligran.edu.co','Colombia','2025-09-30 08:32:58','2025-09-30 08:33:39',1),
  ('afec149c-37cf-40ce-81bb-e2342a157bfb','christopher21h','christopher_treasure@hotmail.fr','Palau','2025-09-30 11:11:25','2025-09-30 11:11:25',0);
INSERT INTO user (id,username,email,country,created_at,updated_at,is_active) VALUES
  
  ('95f31acd-c733-41ab-9251-d30ca8e0f0a1','ethanperin510','ethanperin@gmail.com','Tunisia','2025-09-30 12:37:15','2025-09-30 12:37:15',0),
  ('519c2b17-71ee-48b7-998b-7708ed10fef0','leolag1677857064','leoladelagarza@gmail.com','Australia','2025-09-30 15:22:01','2025-09-30 15:22:01',0),
  ('bcedc2a8-923d-4733-948f-bb772edcbdca','lesterxcz5995','lesterhomer@gmail.com','South Georgia & the South Sandwich Islands','2025-10-01 16:46:39','2025-10-01 16:46:39',0),
  ('26ce22fd-c5af-424f-828a-111fbcef0656','buddyu80249','buddy_lenihan@msn.com','Rwanda','2025-10-01 22:58:26','2025-10-01 22:58:26',0),
  ('d9176060-17be-46f2-b808-2785b7270f81','everettnrt','everettbutterfield@googlemail.com','Uganda','2025-10-01 23:50:56','2025-10-01 23:50:57',0),
  ('933b60a6-6a81-4726-934b-bbb0a2662a31','fpimark226583141','mark.worsnop@att.net','Tuvalu','2025-10-02 19:12:23','2025-10-02 19:12:23',0),
  ('e51262d3-19d6-4988-a0cc-ab83fd3ce081','christopherwild','christopherwild@hotmail.co.uk','Bermuda','2025-10-03 11:43:01','2025-10-03 11:43:01',0);
