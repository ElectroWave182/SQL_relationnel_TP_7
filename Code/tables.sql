drop table
if exists
ord
cascade
;

CREATE TABLE ord (qty INTEGER);

INSERT INTO ord VALUES(5);
INSERT INTO ord VALUES(NULL);
INSERT INTO ord VALUES(10);
INSERT INTO ord VALUES(8);
INSERT INTO ord VALUES(9);
INSERT INTO ord VALUES(13);


drop table
if exists
demo_product_info
cascade
;

CREATE TABLE DEMO_PRODUCT_INFO(	
	PRODUCT_ID NUMERIC(2), 
	PRODUCT_NAME VARCHAR(50), 
	PRODUCT_DESCRIPTION VARCHAR(2000), 
	CATEGORY VARCHAR(30), 
	PRODUCT_AVAIL VARCHAR(1), 
	LIST_PRICE NUMERIC(7,2),
	CONSTRAINT DEMO_PRODUCT_INFO_PK PRIMARY KEY (PRODUCT_ID)
 );

INSERT INTO DEMO_PRODUCT_INFO VALUES (	1,'3.2 GHz Desktop PC','All the options, this machine is loaded!','Computer','Y','1200'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	2,'MP3 Player','Store up to 1000 songs and take them with you','Audio','Y','199'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	3,'Bluetooth Headset','Hands-Free without the wires!','Phones','Y','40'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	4,'PDA Cell Phone','Combine your cell phone and PDA into one device','Phones','Y','250'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	5,'Portable DVD Player','Small enough to take anywhere!','Video','Y','500'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	6,'512 MB DIMM','Expand your PCs memory and gain more performance','Computer','Y','200'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	7,'54'' Plasma Flat Screen','Mount on the wall or ceiling, the picture is crystal clear!','Video','Y','3995'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	8,'Classic Projector','Does not include transparencies or grease pencil','Video','Y','50'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	9,'Ultra Slim Laptop','The power of a desktop in a portable design','Computer','Y','1999'	);
INSERT INTO DEMO_PRODUCT_INFO VALUES (	10,'Stereo Headphones','Noise-cancelling headphones perfect for the traveler','Audio','Y','150'	);

COMMIT;
  