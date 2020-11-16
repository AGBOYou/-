CREATE DATABASE DIY
GO

USE DIY
GO

--创建User表

CREATE TABLE User_Table
(
Users_ID NVARCHAR(16) PRIMARY KEY,  -- id 不多于16个字符 不包含汉字
Users_Name NVARCHAR(20) NOT NULL UNIQUE,
Users_pwd VARCHAR(20) NOT NULL,
Users_phoneNum char(11)NOT NULL UNIQUE,
E_mail VARCHAR(20) NOT NULL
);
insert INTO User_Table
VALUES ('shuaiqikai','赵凯','15965776402','15006518182','1171479689@qq.com'),
		('feifeihao','刘浩','15965776402','13295418268','123456@qq.com')

select * from User_Table
GO

--创建管理员表
CREATE TABLE Admin_Table
(
Admin_ID varCHAR(16) PRIMARY KEY,
Admin_pwd VARCHAR(20) NOT NULL
);
insert into Admin_Table
values ('shuaqikai','15965776402'),
		('feifeihao','15965776402'),
('zbt','111')
select * from Admin_Table
GO
--创建配送表
CREATE TABLE Order_Table
(
Order_ID char(50) PRIMARY KEY,
Users_ID NVARCHAR(16) NOT NULL,
Adress NVARCHAR(200) NOT NULL,
Order_Date CHAR(50) NOT NULL,
Order_Status NVARCHAR(50) NOT NULL,
Price float NOT NULL,
FOREIGN KEY (Users_ID) REFERENCES User_Table(Users_ID)
);
GO

insert into Order_Table
values('00001','shuaiqikai','山东济南王官庄','15006518182','已发送'),
		('00002','feifeihao','山东日照','13295418268','未发货')

SELECT * FROM Order_Table

--创建组件表

CREATE TABLE Module
(
Module_ID CHAR(4) PRIMARY KEY,
zhonglei NVARCHAR(4),
Module_Brand NVARCHAR(20) NOT NULL,
Module_Model NVARCHAR(50) NOT NULL,
Module_Specify NVARCHAR(100) NOT NULL,
Module_Price int NOT NULL
)

DROP TABLE  Module
INSERT INTO Module
VALUES 

('A001','处理器','Intel','i9-9900k','3.6GHz  LGA1151 八核十六线程',4299),
('A002','处理器','Intel','i7-9700k','3.6GHz	LGA1151	八核八线程',3399),
('A003','处理器','Intel','i5-9600k','3.7GHz	LGA1151	六核六线程',1999),
('A004','处理器','Intel','i3-8100','3.6GHz	LGA1151	四核四线程',999),
('A005','处理器','AMD','r7-2700X','3.7GHz	AM4	八核十六线程',2449),
('A006','处理器','AMD','r5-2600X','3.6GHz	AM4	六核十二线程',1499),
('A007','处理器','AMD','r3-2200G','3.5GHz	AM4	四核四线程',729),


('B001','主板','MSI','B450M  MORTAR','M-ATX   AM4',719),
('B002','主板','MSI','X470 GAMING PRO CARBON','ATX  AM4',1729),
('B003','主板','MSI','X470 GAMING M7','AM4	ATX',2399),
('B004','主板','ASUS','B360M-PLUS GAMING S','LGA1151  M-ATX',719),
('B005','主板','ASUS','Z370-PLUS GAMING II','LGA1151	ATX',1299),
('B006','主板','GIGABYTE','Z390 AORUS MASTER','LGA1151 ATX',2998),
('B007','主板','GIGABYTE','Z390 AORUS PRO','LGA1151  ATX',1739),


('C001','内存','芝奇 G.SKILL',	'F4-3200C16D-16GTZR','DDR4 3200	16GB(8GB*2)',849),
('C002','内存','金士顿','金士顿HX426C15FB/8','DDR4 2800-2666	8GB',299),
('C003','内存','金士顿','金士顿HX424C15FB/8','DDR4 2400	8GB',299),
('C004','内存','美商海盗船','复仇者LPX' ,'DDR4 2400 8GB',289),
('C005','内存','威刚（ADATA）','台式机内存','DDR4 2666 8GB',269),
('C006','内存', '协德','PC3-12800','1600 4GB',68),
('C007','内存','影驰','影驰灯条','DDR4-3000 8GB',299),



('D001','硬盘','希捷','ST2000DM008','2TB	7200RPM',389),
('D002','硬盘','西部数据（WD)','WD10EZEX','1TB 7200 RPM',299),
('D003','硬盘','东芝（TOSHIBA）','DT01ACA300','3TB	7200',509),
('D004','硬盘','希捷','ST4000DM004','4TB	5400',649),
('D005','硬盘','西部数据（WD）','WD20EZAZ','2TB	5400RPM Class',399),
('D006','硬盘','西部数据','WD40EZRZ','4TB	5400RPM Class',699),
('D007','硬盘','东芝','HDWD130','3TB 7200',529),


('E001','显卡','华硕（ASUS）','ROG-GTX1650-GAMING','GDDR5',1499),
('E002','显卡','蓝宝石 SAPPHIRE','RX580 8G D5 白金版 OC','GDDR5',1299),
('E003','显卡','盈通(yeston)','RX580 2048SP-8G D5 大地之神','GDDR5',969),
('E004','显卡','七彩虹（Colorful）','iGame GeForce GTX 1660Ti Ultra 6G','GDDR6',2199),
('E005','显卡','索泰 ZOTAC','GTX1060-6GD5 X-GAMING OC','GDDR5',1499),
('E006','显卡','华硕 ASUS','ROG-STRIX-RTX2070-O8G-GAMING','无',4999),
('E007','显卡','NVIDIA','GeForce GTX 1070Ti','GDDR5',2999),

('F001','机箱','先马','静音机箱、复古机箱','8-12kg',299),
('F002','机箱','爱国者（aigo)','中型机箱（中塔机箱）','5-8kg',199),
('F003','机箱','Tt','中型机箱（中塔机箱）','<5kg',139),
('F004','机箱','安钛克(Antec)','玻璃侧透机箱','8-12kg',459),
('F005','机箱','追风者(PHANTEKS)','玻璃侧透机箱','8-12kg',269),
('F006','机箱','乔思伯（JONSBO)','玻璃侧透机箱，铝质机箱','<5kg',299),
('F007','机箱','酷冷至尊','中型机箱（中塔机箱）','5-8kg',299),

('G001','电源','USCorsair','RM850x','850W',949),
('G002','电源','USCorsair','RM750x','750W',849),
('G003','电源','酷冷至尊','V650','650W',699),
('G004','电源','酷冷至尊','V550','550W',549),
('G005','电源','长城','G6','650W',599),
('G006','电源','长城','G5','55OW',539),
('G007','电源','长城','G4','450W',329),

('H001','显示器','SAMSUNG','C27HG70QQC','2k 144Hz',2999),
('H002','显示器','SAMSUNG','S27R750QEC','2k 144Hz',2999),
('H003','显示器','SAMSUNG','C27F390FHC','1080P	60Hz',1129),
('H004','显示器','AOC','AG273QCX','2K	144Hz',2999),
('H005','显示器','AOC','CQ32G1','2K	144Hz',2299),
('H006','显示器','AOC','I2490PXH5','1080P 60Hz',899),
('H007','显示器','BenQ','EW2775ZH','1080P 60Hz',1099),

('J001','鼠标','罗技','M170','无线',55),
('J002','鼠标','雷蛇','炼狱蝰蛇','有线',179),
('J003','鼠标','DELL','MS116','有线',38),
('J004','鼠标','罗技','G102','无线',149),
('J005','鼠标','飞利浦','7323','无线',89),
('J006','鼠标','Lenovo','wlm200','无线',69),
('J007','鼠标','罗技','g502','有线',255),

('K001','音响','小米','小钢炮','无线 黑白',129),
('K002','音响','漫步者','R18T','有线 黑',119),
('K003','音响','麦博','M500BT','有线 黑',369),
('K004','音响','飞利浦','SPA20','有线 黑',69),
('K005','音响','飞利浦','SPA36','有线 桔色 黑色',159),
('K006','音响','华为','智能AI音箱','无线 白色',359),
('K007','音响','漫步者','R12U','有线 白色 红色',79),

('L001','散热器','九州风神','堡垒240RGB','一体式水冷散热器 铝',499),
('L002','散热器','九州风神','船长240RGB','一体式水冷散热器 铝',659),
('L003','散热器','九州风神','fryzen风冷散热器','风冷散热器 铝',699),
('L004','散热器','九州风神','堡垒360幻彩','一体式水冷散热器 铝',1099),
('L005','散热器','酷冷至尊','T400i','风冷散热器 4根直触热管/铝鳍片',79.9),
('L006','散热器','酷冷至尊','T610P','风冷散热器 6根直触热管/铝鳍片',299),
('L007','散热器','美商海盗船','H150i PRO RGB','一体式CPU水冷散热器	铝',1399),


('M001','光驱', '华硕（ASUS）','DRW-24D5MT','SATA接口',139),
('M002','光驱','Pioneer','DVR-S21WBK','SATA接口',104),
('M003','光驱','建兴（LITEON)','IHDS118','SATA接口',99.9),
('M004','光驱','e磊（e-elei）','EL80N','SATA接口',99),
('M005','光驱','先锋（Pioneer）','DVR-S21WBK','SATA接口',129),
('M006','光驱','LG','DH18NS61','SATA接口',125),
('M007','光驱','华硕','DVD-E818A9T','SATA接口',89),


('N001','耳机','金士顿','HX-HSCS-BK','头戴式',269),
('N002','耳机','漫步者','W800BT','头戴式',174),
('N003','耳机','雷蛇','北海巨妖标准版','头戴式',239),
('N004','耳机','漫步者','K800','头戴式',65),
('N005','耳机','兰士顿','D4CX','入耳式',69),
('N006','耳机','QCY','T1 Mini','入耳式',299),
('N007','耳机','ENKOR','EW10 5.0尊享版','入耳式',199)


SELECT * FROM Module
		
GO

--创建评论表
CREATE TABLE Comment_Table
(
Comment_ID NVARCHAR(20) NOT NULL,
Users_ID NVARCHAR(16) NOT NULL,
Users_Name NVARCHAR(20) NOT NULL,
Comment_Text nvarchar(200) NOT NULL,-- 不超过100字评论
Comment_Time DATETIME NOT NULL,
Module_ID CHAR(4) NOT NULL,-- ID都设为了5字节的定长
FOREIGN KEY (Module_ID) REFERENCES Module(Module_ID),
FOREIGN KEY (Users_ID) REFERENCES User_Table(Users_ID)
);
GO
insert into Comment_Table values
('20190527','shuaiqikai','赵凯','我觉得刘浩这个人废了','2018-5-21 5:21:00','B001'),
('20190527','shuaiqikai','赵凯','2','2018-5-21 5:21:00','B001'),
('20190527','shuaiqikai','赵凯','3','2018-5-21 5:21:00','B001'),
('20190528','feifeihao','刘浩','我觉得赵凯好帅','2018-5-21 5:21:00','B002')
select * from Comment_Table


--创建购物车表
CREATE TABLE Cart_Table
(
Users_ID nvarCHAR(16),
Module_ID CHAR(4),
FOREIGN KEY (Users_ID) REFERENCES User_Table(Users_ID),
FOREIGN KEY (Module_ID) REFERENCES Module(Module_ID)
)
GO

insert into Cart_Table values 
('shuaiqikai','B001'),
('feifeihao','B002')

insert into Cart_Table values 
('shuaiqikai','A001'),
('shuaiqikai','C001')

select * from  Cart_Table
--创建订单详情表
CREATE TABLE Order_Details
(
Order_ID char(50),
Module_ID CHAR(4),
Users_ID  NVARCHAR(16) ,
PRIMARY KEY(Order_ID,Module_ID,Users_ID),
FOREIGN KEY (Order_ID) REFERENCES Order_Table(Order_ID),
FOREIGN KEY (Module_ID) REFERENCES Module (Module_ID),
FOREIGN KEY (Users_ID) REFERENCES User_Table (Users_ID)
);
GO


insert into Order_Details values
('00001','B001'),
('00002','B002')
select * from  Order_Details

CREATE TABLE Products
(
Users_ID NVARCHAR(16) ,  -- id 不多于16个字符 不包含汉字
zhonglei NVARCHAR(4) NOT NULL,
Want_Brand NVARCHAR(20) NOT NULL,
Want_Model NVARCHAR(50) NOT NULL,
Want_Specify NVARCHAR(100) NOT NULL,
Want_Price int NOT NULL,
Storepath NVARCHAR(20) NOT NULL
);

CREATE TABLE Upload
(
Module_ID CHAR(4) PRIMARY KEY,
Module_name  NVARCHAR(20),
Module_Specify NVARCHAR(100) NOT NULL,
Module_Price int NOT NULL,
Storepath NVARCHAR(50) Not null,
Users_id NVARCHAR(20)
)
select * from  Upload

INSERT INTO Upload  VALUES  ('Z004','轩轩','轩轩太伟大了',467,'3.PNG','feifeihao')
