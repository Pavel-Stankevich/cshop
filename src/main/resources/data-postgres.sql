INSERT INTO cshop.role(id, name)
	VALUES (0, 'USER');
INSERT INTO cshop.role(id, name)
	VALUES (1, 'SELLER');
INSERT INTO cshop.role(id, name)
	VALUES (2, 'MERCHANT');

INSERT INTO cshop.person(name, surname, patronymic, birthday, phone_number)
	VALUES ('Пупкин', 'Дмитрий', 'Николаевич', to_date('1980-10-15', 'yyyy-mm-dd'), '+375(29)715-01-02');
INSERT INTO cshop.person(name, surname, patronymic, birthday, phone_number)
	VALUES ('Иванова', 'Татьяна', 'Михайловна', to_date('1992-11-03', 'yyyy-mm-dd'), '+375(44)352-40-08');
INSERT INTO cshop.person(name, surname, patronymic, birthday, phone_number)
	VALUES ('Иванов', 'Иван', 'Иванович', to_date('1991-05-23', 'yyyy-mm-dd'), '+375(44)115-38-42');

INSERT INTO cshop."user"(email, password, confirm, role_id, person_id)
	VALUES ('user@mail.by', '$2a$10$cO6ZNu3GbLA292CwHC7jwuJ5mcknK2zoj1eOdQARjSULoTiOjezJC', true, 0, 1);
INSERT INTO cshop."user"(email, password, confirm, role_id, person_id)
	VALUES ('seller@cshop.by', '$2a$10$H0hJ3VDeGSnL0brDDe22qO0sW..B/WZh2DO.xhM5M4PHq66Gp0Loi', true, 1, 2);
INSERT INTO cshop."user"(email, password, confirm, role_id, person_id)
	VALUES ('merchant@cshop.by', '$2a$10$wHTZi8PeHFRKtBYOw7C8I.LO811K0DL0m9543PoJR48AXMSR9UHj6', true, 2, 3);

INSERT INTO cshop.product_type(name, img)
	VALUES ('Видеокарты', lo_import('E:\projects\maven-projects\CShop\products\ASUS_GeForce_GTX_1080_Ti_Founders_Edition_11GB_GDDR5X.jpeg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Процессоры', lo_import('E:\projects\maven-projects\CShop\products\Intel_Core_i9_7900x.jpg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Материские платы', lo_import('E:\projects\maven-projects\CShop\products\MSI_X299_Gaming_M7_ACK.jpeg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Оперативная память', lo_import('E:\projects\maven-projects\CShop\products\Patriot_Signature_Line_8GB_DDR3_PC3-12800_[PSD38G16002H].jpg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Кулеры', lo_import('E:\projects\maven-projects\CShop\products\Arctic_Freezer_33_eSports_Edition.jpeg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('SSD', lo_import('E:\projects\maven-projects\CShop\products\Intel_DC_S4500_960GB_SSDSC2KB960G701.jpg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Жесткие диски', lo_import('E:\projects\maven-projects\CShop\products\Seagate_BarraCuda_2TB_[ST2000DM006].jpg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Корпуса', lo_import('E:\projects\maven-projects\CShop\products\AeroCool_Cruisestar_Advance.jpeg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Блоки питания', lo_import('E:\projects\maven-projects\CShop\products\AeroCool_Kcas_600W.png'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Звуковые карты', lo_import('E:\projects\maven-projects\CShop\products\Creative_Sound_Blaster_Z_(SB1500).jpg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Сетевые адаптеры', lo_import('E:\projects\maven-projects\CShop\products\Supermicro_AOC-SGP-I4.jpeg'));
INSERT INTO cshop.product_type(name, img)
	VALUES ('Оптические накопители', lo_import('E:\projects\maven-projects\CShop\products\ASUS_ZenDrive_U9M.jpeg'));

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS Radeon RX 560 EVO OC Edition 4GB GDDR5', 'частота ядра 1149 МГц/1187 МГц, 896sp, частота памяти 1500 МГц, 128 бит, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\ASUS_Radeon_RX_560_EVO_OC_Edition_4GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI Radeon RX 580 Armor 8GB GDDR5', 'частота ядра 1340 МГц, 2304sp, частота памяти 2000 МГц, 256 бит, 8 pin, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\MSI_Radeon_RX_580_Armor_8GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI Radeon RX 580 Gaming X 4GB GDDR5', 'частота ядра 1380 МГц, 2304sp, частота памяти 1750 МГц, 256 бит, 8 pin, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\MSI_Radeon_RX_580_Gaming_X_4GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Gigabyte Radeon RX 570 Gaming 4GB GDDR5', 'частота ядра 1244 МГц, 2048sp, частота памяти 1750 МГц, 256 бит, 8 pin, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\Gigabyte_Radeon_RX_570_Gaming_4GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Gigabyte Radeon RX 580 Gaming 4GB GDDR5', 'частота ядра 1340 МГц, 2304sp, частота памяти 1750 МГц, 256 бит, 8 pin, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\Gigabyte_Radeon_RX_580_Gaming_4GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Sapphire Nitro+ Radeon RX 580 OC 4GB GDDR5', 'частота ядра 1411 МГц, 2304sp, частота памяти 1750 МГц, 256 бит, 6+8 pin, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\Sapphire_Nitro+_Radeon_RX_580_OC_4GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('AMD Radeon RX Vega 56 8G HBM2', 'частота ядра 1156 МГц/1471 МГц, 3584sp, частота памяти 800 МГц, 2048 бит, 8+8 pin, 2 слота, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\AMD_Radeon_RX_Vega_56_8G_HBM2.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI Radeon RX Vega 56 Air Boost OC 8GB HBM2', 'частота ядра 1181 МГц/1520 МГц, 3584sp, частота памяти 800 МГц, 2048 бит, 8+8 pin, 2 слота, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\MSI_Radeon_RX_Vega_56_Air_Boost_OC_8GB_HBM2.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI Radeon RX Vega 64 Iron 8GB HBM2', 'частота ядра 1247 МГц/1546 МГц, 4096sp, частота памяти 945 МГц, 2048 бит, 8+8 pin, 2 слота, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\MSI_Radeon_RX_Vega_64_Iron_8GB_HBM2.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI GeForce GTX 1070 Ti Aero 8GB GDDR5', 'частота ядра 1607 МГц/1683 МГц, 2432sp, частота памяти 2002 МГц, 256 бит, 8 pin, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\MSI_GeForce_GTX_1070_Ti_Aero_8GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Gigabyte GeForce GTX 1080 Ti Turbo 11GB GDDR5X', 'частота ядра 1480 МГц/1582 МГц, 3584sp, частота памяти 2752 МГц, 352 бит, 6+8 pin, 2.5 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\Gigabyte_GeForce_GTX_1080_Ti_Turbo_11GB_GDDR5X.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI GeForce GTX 1050 Ti Aero ITX OCV1 4GB GDDR5', 'частота ядра 1341 МГц/1455 МГц, 768sp, частота памяти 1752 МГц, 128 бит, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\MSI_GeForce_GTX_1050_Ti_Aero_ITX_OCV1_4GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS Turbo GeForce GTX 1070 Ti 8GB GDDR5', 'частота ядра 1607 МГц/1683 МГц, 2432sp, частота памяти 2002 МГц, 256 бит, 8 pin, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\ASUS_Turbo_GeForce_GTX_1070_Ti_8GB_GDDR5.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Gigabyte GeForce GTX 1080 Mini ITX 8GB GDDR5X', 'частота ядра 1607 МГц/1733 МГц, 2560sp, частота памяти 2502 МГц, 256 бит, 8 pin, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\Gigabyte_GeForce_GTX_1080_Mini_ITX_8GB_GDDR5X.jpeg'), 1);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS GeForce GTX 1080 Ti Founders Edition 11GB GDDR5X', 'частота ядра 1480 МГц/1582 МГц, 3584sp, частота памяти 2752 МГц, 352 бит, 6+8 pin, 2 слота, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\ASUS_GeForce_GTX_1080_Ti_Founders_Edition_11GB_GDDR5X.jpeg'), 1);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Intel Core i7-8700K', 'Coffee Lake, LGA1151 v2, 6 ядер, частота 4.7/3.7 ГГц, кэш 12 МБ, техпроцесс 14 нм, TDP 95W', lo_import('E:\projects\maven-projects\CShop\products\Intel_Core_i7-8700K.jpg'), 2);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Intel Core i5-8600K', 'Coffee Lake, LGA1151 v2, 6 ядер, частота 4.3/3.6 ГГц, кэш 9 МБ, техпроцесс 14 нм, TDP 95W', lo_import('E:\projects\maven-projects\CShop\products\Intel_Core_i5-8600K.jpg'), 2);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Intel Core i3-8350K', 'Coffee Lake, LGA1151 v2, 4 ядра, частота 4 ГГц, кэш 8 МБ, техпроцесс 14 нм, TDP 91W', lo_import('E:\projects\maven-projects\CShop\products\Intel_Core_i3-8350K.jpg'), 2);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Intel Core i5-8500', 'Coffee Lake, LGA1151 v2, 6 ядер, частота 4.1/3 ГГц, кэш 9 МБ, техпроцесс 14 нм, TDP 65W', lo_import('E:\projects\maven-projects\CShop\products\Intel_Core_i5-8600K.jpg'), 2);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Intel Core i9-7900X', 'Skylake-X, LGA2066, 10 ядер, частота 4.3/3.3 ГГц, кэш 13 МБ, техпроцесс 14 нм, TDP 140W', lo_import('E:\projects\maven-projects\CShop\products\Intel_Core_i9_7900x.jpg'), 2);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('AMD Ryzen Threadripper 1950X', 'Whitehaven, TR4, 16 ядер, частота 4/3.4 ГГц, кэш 8 Мб + 32 МБ, техпроцесс 14 нм, TDP 180W', lo_import('E:\projects\maven-projects\CShop\products\Ryzen-Threadripper-1950X.jpg'), 2);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('AMD Ryzen 7 2700X', 'Pinnacle Ridge, AM4, 8 ядер, частота 4.3/3.7 ГГц, кэш 4 Мб + 16 МБ, техпроцесс 12 нм, TDP 105W', lo_import('E:\projects\maven-projects\CShop\products\AMD_Ryzen_7_2700X.jpg'), 2);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('AMD Ryzen 5 1600X', 'Summit Ridge, AM4, 6 ядер, частота 4/3.6 ГГц, кэш 3 Мб + 16 МБ, техпроцесс 14 нм, TDP 95W', lo_import('E:\projects\maven-projects\CShop\products\AMD_Ryzen_5_1600X.jpg'), 2);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS ROG Strix B360-G Gaming', 'mATX, сокет Intel LGA1151 v2, чипсет Intel B360, память 4xDDR4, слоты: 2xPCIe x16, 2xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\ASUS_ROG_Strix_B360-G_Gaming.jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS Prime Z370-A', 'ATX, сокет Intel LGA1151 v2, чипсет Intel Z370, память 4xDDR4, слоты: 3xPCIe x16, 4xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\ASUS_Prime_Z370-A.jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS ROG Strix B360-I Gaming', 'Mini-ITX, сокет Intel LGA1151 v2, чипсет Intel B360, память 2xDDR4, слоты: 1xPCIe x16', lo_import('E:\projects\maven-projects\CShop\products\ASUS_ROG_Strix_B360-I_Gaming.jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS TUF X299 Mark 1', 'ATX, сокет Intel LGA2066, чипсет Intel X299, память 8xDDR4, слоты: 3xPCIe x16, 2xPCIe x4', lo_import('E:\projects\maven-projects\CShop\products\ASUS_TUF_X299_Mark_1.jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS ROG Strix H370-I Gaming', 'Mini-ITX, сокет Intel LGA1151 v2, чипсет Intel H370, память 2xDDR4, слоты: 1xPCIe x16', lo_import('E:\projects\maven-projects\CShop\products\ASUS_ROG_Strix_H370-I_Gaming.jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS ROG Crosshair VII Hero', 'ATX, сокет AMD AM4, чипсет AMD X470, память 4xDDR4, слоты: 3xPCIe x16, 2xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\ASUS_ROG_Crosshair_VII_Hero.jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Gigabyte X470 Aorus Gaming 7 WiFi (rev. 1.0)', 'ATX, сокет AMD AM4, чипсет AMD X470, память 4xDDR4, слоты: 3xPCIe x16, 2xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\Gigabyte_X470_Aorus_Gaming_7_WiFi_(rev._1.0).jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Gigabyte X399 AORUS Gaming 7 (rev. 1.0)', 'ATX, сокет AMD TR4, чипсет AMD X399, память 8xDDR4, слоты: 5xPCIe x16', lo_import('E:\projects\maven-projects\CShop\products\Gigabyte_X399_AORUS_Gaming_7_(rev._1.0).jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Gigabyte H370 Aorus Gaming 3 WiFi (rev. 1.0)', 'ATX, сокет Intel LGA1151 v2, чипсет Intel H370, память 4xDDR4, слоты: 2xPCIe x16, 4xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\Gigabyte_H370_Aorus_Gaming_3_WiFi_(rev._1.0).png'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI Z370 Gaming Plus', 'ATX, сокет Intel LGA1151 v2, чипсет Intel Z370, память 4xDDR4, слоты: 2xPCIe x16, 4xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\MSI_Z370_Gaming_Plus.png'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI X299 Gaming M7 ACK', 'ATX, сокет Intel LGA2066, чипсет Intel X299, память 8xDDR4, слоты: 4xPCIe x16, 2xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\MSI_X299_Gaming_M7_ACK.jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI X299 Raider', 'ATX, сокет Intel LGA2066, чипсет Intel X299, память 8xDDR4, слоты: 4xPCIe x16, 1xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\MSI_X299_Raider.png'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI Z370 SLI Plus', 'ATX, сокет Intel LGA1151 v2, чипсет Intel Z370, память 4xDDR4, слоты: 3xPCIe x16, 3xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\MSI_Z370_SLI_Plus.png'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('MSI B350M Gaming PRO', 'mATX, сокет AMD AM4, чипсет AMD B350, память 2xDDR4, слоты: 1xPCIe x16, 2xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\MSI_B350M_Gaming_PRO.jpeg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('BIOSTAR H110MHV3 Ver. 7.x', 'mATX, сокет Intel LGA1151, чипсет Intel H110, память 2xDDR3, слоты: 1xPCIe x16, 1xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\BIOSTAR_H110MHV3_Ver._7.x.jpg'), 3);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('BIOSTAR TB250-BTC PRO Ver. 6.x', 'ATX, сокет Intel LGA1151, чипсет Intel B250, память 2xDDR4, слоты: 1xPCIe x16, 11xPCIe x1', lo_import('E:\projects\maven-projects\CShop\products\BIOSTAR_TB250-BTC_PRO_Ver. 6.x.jpeg'), 3);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Crucial 8GB DDR4 PC4-19200 [CT8G4DFD824A]', '1 модуль, частота 2400 МГц, CL 17T, напряжение 1.2 В', lo_import('E:\projects\maven-projects\CShop\products\Crucial_8GB_DDR4_PC4-19200_[CT8G4DFD824A].jpg'), 4);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Crucial Ballistix Tactical 8GB DDR4 PC4-24000 [BLT8G4D30AETA]', '1 модуль, частота 3000 МГц, CL 15T, тайминги 15-16-16, напряжение 1.35 В', lo_import('E:\projects\maven-projects\CShop\products\Crucial_Ballistix_Tactical_8GB_DDR4_PC4-24000_[BLT8G4D30AETA].jpg'), 4);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Crucial Ballistix Sport LT White 16GB DDR4 PC4-19200 [BLS16G4D240FSC]', '1 модуль, частота 2400 МГц, CL 16T, тайминги 16-16-16, напряжение 1.2 В', lo_import('E:\projects\maven-projects\CShop\products\Crucial_Ballistix_Sport_LT_White_16GB_DDR4_PC4-19200_[BLS16G4D240FSC].jpeg'), 4);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('HyperX Fury Blue 4GB DDR3 PC3-12800 HX316C10F/4', '1 модуль, частота 1600 МГц, CL 10T, тайминги 10-10-10, напряжение 1.5 В', lo_import('E:\projects\maven-projects\CShop\products\HyperX_Fury_Blue_4GB_DDR3_PC3-12800_HX316C10F-4.jpg'), 4);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('HyperX Savage 8GB DDR3 PC3-12800 HX316C9SR/8', '1 модуль, частота 1600 МГц, CL 9T, тайминги 9-9-9, напряжение 1.5 В', lo_import('E:\projects\maven-projects\CShop\products\HyperX_Savage_8GB_DDR3_PC3-12800_HX316C9SR-8.jpg'), 4);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('HyperX Fury 16GB DDR4 PC4-19200 HX424C15FB/16', '1 модуль, частота 2400 МГц, CL 15T, тайминги 15-15-15, напряжение 1.2 В', lo_import('E:\projects\maven-projects\CShop\products\HyperX_Fury_16GB_DDR4_PC4-19200_HX424C15FB-16.jpg'), 4);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Patriot Signature Line 8GB DDR3 PC3-12800 [PSD38G16002H]', '1 модуль, частота 1600 МГц, CL 11T, напряжение 1.5 В', lo_import('E:\projects\maven-projects\CShop\products\Patriot_Signature_Line_8GB_DDR3_PC3-12800_[PSD38G16002H].jpg'), 4);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Patriot 4GB DDR3 PC3-12800 [PSD34G1600L81]', '1 модуль, частота 1600 МГц, напряжение 1.35 В', lo_import('E:\projects\maven-projects\CShop\products\Patriot_4GB_DDR3_PC3-12800_[PSD34G1600L81].jpg'), 4);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Patriot Signature Line 8GB DDR4 PC4-21300 PSD48G266681H', '1 модуль, частота 2666 МГц, CL 19T, тайминги 19-19-19-43, напряжение 1.2 В', lo_import('E:\projects\maven-projects\CShop\products\Patriot_Signature_Line_8GB_DDR4_PC4-21300_PSD48G266681H.jpg'), 4);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('DeepCool GAMMAXX 300', 'кулер для процессора, воздушное охлаждение, медь/алюминий, рассеивание до 130 Вт, шум 21 дБ, вентилятор 120 мм, скорость 900-1600 об/мин, PWM', lo_import('E:\projects\maven-projects\CShop\products\DeepCool_GAMMAXX_300.jpg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('DeepCool GAMMAXX S40', 'кулер для процессора, воздушное охлаждение, шум 26.1 дБ, вентилятор 120 мм, скорость 900-1600 об/мин, PWM', lo_import('E:\projects\maven-projects\CShop\products\DeepCool_GAMMAXX_S40.jpg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('DeepCool ICEEDGE MINI FS', 'кулер для процессора, воздушное охлаждение, медь/алюминий, рассеивание до 95 Вт, шум 25 дБ, вентилятор 80 мм, скорость 2200 об/мин', lo_import('E:\projects\maven-projects\CShop\products\DeepCool_ICEEDGE_MINI_FS.jpg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('DeepCool Gamma Archer Pro', 'кулер для процессора, воздушное охлаждение, медь/алюминий, рассеивание до 110 Вт, шум 21 дБ, вентилятор 120 мм, скорость 900-1600 об/мин', lo_import('E:\projects\maven-projects\CShop\products\DeepCool_Gamma_Archer_Pro.jpg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('DeepCool GAMMAXX 400 Red', 'кулер для процессора, воздушное охлаждение, рассеивание до 130 Вт, шум 30 дБ, вентилятор 120 мм, скорость 900-1500 об/мин, PWM', lo_import('E:\projects\maven-projects\CShop\products\DeepCool_GAMMAXX_400_Red.jpeg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('DeepCool Lucifer V2 +AM4', 'кулер для процессора, воздушное охлаждение, шум 31.1 дБ, вентилятор 140 мм, скорость 300-1400 об/мин, PWM', lo_import('E:\projects\maven-projects\CShop\products\DeepCool_Lucifer_V2_+AM4.jpg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Arctic F14 TC', 'кулер для корпуса, вентилятор 140 мм, скорость 960-1350 об/мин', lo_import('E:\projects\maven-projects\CShop\products\Arctic_F14_TC.jpeg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Arctic Freezer 33 eSports Edition', 'кулер для процессора, воздушное охлаждение, алюминий, рассеивание до 320 Вт, вентилятор 120 мм, скорость 200-1800 об/мин, PWM', lo_import('E:\projects\maven-projects\CShop\products\Arctic_Freezer_33_eSports_Edition.jpeg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Arctic F12 Pro', 'кулер для корпуса, воздушное охлаждение, шум 24.4 дБ, вентилятор 120 мм, скорость 1500 об/мин', lo_import('E:\projects\maven-projects\CShop\products\Arctic_F12_Pro.jpg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Arctic BioniX F140', 'кулер для корпуса, воздушное охлаждение, вентилятор 140 мм, скорость 0-1800 об/мин, PWM', lo_import('E:\projects\maven-projects\CShop\products\Arctic_BioniX_F140.jpeg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Cooler Master MasterLiquid ML120L RGB', 'кулер для процессора, жидкостное охлаждение, алюминий, шум 30 дБ, вентилятор 120 мм, скорость 650-2000 об/мин, PWM', lo_import('E:\projects\maven-projects\CShop\products\Cooler_Master_MasterLiquid_ML120L_RGB.jpeg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Cooler Master SickleFlow 120 2000 RPM Blue LED (R4-L2R-20AC-GP)', 'кулер для корпуса, воздушное охлаждение, шум 19.2 дБ, вентилятор 120 мм, скорость 2000 об/мин', lo_import('E:\projects\maven-projects\CShop\products\cooler-master-r4-l2r-20ac-gp-sickleflow-120mm-blue-led-case-fan-24.jpg'), 5);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Cooler Master MasterAir MA410P', 'кулер для процессора, воздушное охлаждение, алюминий, шум 30 дБ, вентилятор 120 мм, скорость 650-2000 об/мин, PWM', lo_import('E:\projects\maven-projects\CShop\products\Cooler_Master_MasterAir_MA410P.jpeg'), 5);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Samsung 860 Evo 250GB MZ-76E250', '2.5", SATA 3.0, контроллер Samsung MJX, микросхемы 3D TLC NAND, последовательный доступ: 550/520 MBps, случайный доступ: 98000/90000 IOps', lo_import('E:\projects\maven-projects\CShop\products\Samsung_860_Evo_250GB_MZ-76E250.jpeg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Samsung 970 Evo 250GB MZ-V7E250', 'M.2, PCI Express 3.0 x4 (NVMe 1.3), контроллер Samsung Phoenix, микросхемы 3D TLC NAND, последовательный доступ: 3400/1500 MBps, случайный доступ: 200000/350000 IOps', lo_import('E:\projects\maven-projects\CShop\products\Samsung_970_Evo_250GB_MZ-V7E250.jpeg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Samsung 860 Pro 256GB MZ-76P256', '2.5", SATA 3.0, контроллер Samsung MJX, микросхемы 3D MLC NAND, последовательный доступ: 560/530 MBps, случайный доступ: 100000/90000 IOps', lo_import('E:\projects\maven-projects\CShop\products\Samsung_860_Pro_256GB_MZ-76P256.jpeg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Kingston KC1000 240GB', 'M.2, PCI Express 3.0 x4 (NVMe), контроллер Phison PS5007-11, микросхемы MLC, последовательный доступ: 2700/900 MBps, случайный доступ: 225000/190000 IOps', lo_import('E:\projects\maven-projects\CShop\products\Kingston_KC1000_240GB.jpeg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Intel DC S4500 960GB SSDSC2KB960G701', '2.5", SATA 3.0, микросхемы 3D TLC NAND, последовательный доступ: 500/490 MBps, случайный доступ: 72000/30000 IOps', lo_import('E:\projects\maven-projects\CShop\products\Intel_DC_S4500_960GB_SSDSC2KB960G701.jpg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Intel DC S4600 480GB SSDSC2KG480G701', '2.5", SATA 3.0, микросхемы 3D TLC NAND, последовательный доступ: 500/480 MBps, случайный доступ: 72000/60000 IOps', lo_import('E:\projects\maven-projects\CShop\products\Intel_DC_S4500_960GB_SSDSC2KB960G701.jpg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Intel 545s 256GB SSDSC2KW256G8X1', '2.5", SATA 3.0, контроллер Silicon Motion SM2259, микросхемы 3D TLC NAND, последовательный доступ: 550/500 MBps, случайный доступ: 75000/85000 IOps', lo_import('E:\projects\maven-projects\CShop\products\Intel_545s_256GB_SSDSC2KW256G8X1.jpg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('WD Blue 3D NAND 1TB WDS100T2B0A', '2.5", SATA 3.0, контроллер Marvell 88SS1074, микросхемы 3D TLC NAND, последовательный доступ: 560/530 MBps, случайный доступ: 95000/84000 IOps', lo_import('E:\projects\maven-projects\CShop\products\WD_Blue_3D_NAND_1TB_WDS100T2B0A.jpg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('WD Blue 3D NAND 500GB WDS500G2B0A', '2.5", SATA 3.0, контроллер Marvell 88SS1074, микросхемы 3D TLC NAND, последовательный доступ: 560/530 MBps, случайный доступ: 95000/84000 IOps', lo_import('E:\projects\maven-projects\CShop\products\WD_Blue_3D_NAND_500GB_WDS500G2B0A.jpg'), 6);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Crucial MX500 250GB CT250MX500SSD1', '2.5", SATA 3.0, контроллер Silicon Motion SM2258, микросхемы 3D TLC NAND, последовательный доступ: 560/510 MBps, случайный доступ: 95000/90000 IOps', lo_import('E:\projects\maven-projects\CShop\products\Crucial_MX500_250GB_CT250MX500SSD1.jpeg'), 6);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('WD Caviar Blue 1TB (WD10EZEX)', '3.5", SATA 3.0 (6Gbps), 7200 об/мин, буфер 64 МБ, линейная скорость 150/150 МБ/с', lo_import('E:\projects\maven-projects\CShop\products\WD_Caviar_Blue_1TB_(WD10EZEX).png'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('WD Red 4TB (WD40EFRX)', '3.5", SATA 3.0 (6Gbps), 5400 об/мин, буфер 64 МБ, линейная скорость 150/150 МБ/с', lo_import('E:\projects\maven-projects\CShop\products\WD-Red-4TB.jpg'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('WD Purple 2TB (WD20PURZ)', '3.5", SATA 3.0 (6Gbps), 5400 об/мин, буфер 64 МБ', lo_import('E:\projects\maven-projects\CShop\products\WD_Purple_2TB_[WD20PURZ].jpg'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('WD Blue 2TB (WD20NPVZ)', '2.5", SATA 3.0 (6Gbps), 5200 об/мин, буфер 8 МБ', lo_import('E:\projects\maven-projects\CShop\products\WD_Blue_2TB_(WD20NPVZ).jpg'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('WD Blue 1TB (WD10SPZX)', '2.5", SATA 3.0 (6Gbps), 5400 об/мин, буфер 128 МБ', lo_import('E:\projects\maven-projects\CShop\products\WD_Blue_1TB_[WD10SPZX].jpeg'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Seagate BarraCuda 1TB [ST1000DM010]', '3.5", SATA 3.0 (6Gbps), 7200 об/мин, буфер 64 МБ', lo_import('E:\projects\maven-projects\CShop\products\Seagate_BarraCuda_1TB_[ST1000DM010].jpg'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Seagate Barracuda 500GB [ST500LM030]', '2.5", SATA 3.0 (6Gbps), 5400 об/мин, буфер 128 МБ, время доступа 13 мс', lo_import('E:\projects\maven-projects\CShop\products\Seagate_Barracuda_500GB_[ST500LM030].jpg'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Seagate BarraCuda 2TB [ST2000DM006]', '3.5", SATA 3.0 (6Gbps), 7200 об/мин, буфер 64 МБ', lo_import('E:\projects\maven-projects\CShop\products\Seagate_BarraCuda_2TB_[ST2000DM006].jpg'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Toshiba P300 2TB [HDWD120UZSVA]', '3.5", SATA 3.0 (6Gbps), 7200 об/мин, буфер 64 МБ', lo_import('E:\projects\maven-projects\CShop\products\Toshiba_P300_2TB_[HDWD120UZSVA].jpg'), 7);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Toshiba L200 1TB [HDWJ110UZSVA]', '2.5", SATA 2.0 (3Gbps), 5400 об/мин, буфер 8 МБ', lo_import('E:\projects\maven-projects\CShop\products\Toshiba_L200_1TB_[HDWJ110UZSVA].jpg'), 7);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('DeepCool Dukase WHV2 [DP-ATX-DUKWH2BL]', 'без блока питания, геймерский, Tower, для плат ATX/micro-ATX/mini-ITX, блок питания снизу, 1 вентилятор, 1xUSB 2.0, 1xUSB 3.0, цвет белый', lo_import('E:\projects\maven-projects\CShop\products\DeepCool_Dukase_WHV2_[DP-ATX-DUKWH2BL].jpeg'), 8);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('AeroCool Cylon', 'без блока питания, геймерский, Tower, для плат ATX/micro-ATX/mini-ITX, блок питания снизу, 1 вентилятор, 2xUSB 2.0, 1xUSB 3.0, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\AeroCool_Cylon.jpg'), 8);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('AeroCool Cruisestar Advance', 'без блока питания, геймерский, Tower, для плат ATX/micro-ATX/mini-ITX, блок питания сверху, 3 вентилятора, 2xUSB 2.0, 2xUSB 3.0, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\AeroCool_Cruisestar_Advance.jpeg'), 8);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Zalman N2', 'без блока питания, Tower, для плат ATX/micro-ATX/mini-ITX, блок питания снизу, 3 вентилятора, 2xUSB 2.0, 1xUSB 3.0, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\Zalman_N2.jpeg'), 8);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Zalman Z3 Plus White', 'без блока питания, геймерский, Tower, для плат ATX/micro-ATX, блок питания снизу, 4 вентилятора, реобас, 2xUSB 2.0, 1xUSB 3.0, цвет белый', lo_import('E:\projects\maven-projects\CShop\products\Zalman_Z3_Plus_White.png'), 8);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Delux DLC-DC875 450W', 'с блоком питания 450 Вт, бюджетный, Tower, для плат ATX/micro-ATX, 0 вентиляторов, 2xUSB 2.0, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\Delux_DLC-DC875_450W.jpeg'), 8);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('In Win BQ660 120W Black', 'с блоком питания 120 Вт, средний класс, Tower, для плат mini-ITX, блок питания снизу, 0 вентиляторов, 2xUSB 2.0, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\In_Win_BQ660_120W_Black.jpg'), 8);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('AeroCool Kcas 600W', 'активная PFC, КПД 85%, бронзовый сертификат, вентилятор 1x120 мм, 12V 45 А', lo_import('E:\projects\maven-projects\CShop\products\AeroCool_Kcas_600W.png'), 9);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Chieftec Power Smart GPS-750C', 'активная PFC, КПД 90%, золотой сертификат, вентилятор 1x140 мм, модульные кабели, 12V 62 А', lo_import('E:\projects\maven-projects\CShop\products\Chieftec_Power_Smart_GPS-750C.jpeg'), 9);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Chieftec Eco Series GPE-700S', 'активная PFC, КПД 85%, вентилятор 1x120 мм, 12V 52.5 А', lo_import('E:\projects\maven-projects\CShop\products\Chieftec_Eco_Series_GPE-700S.jpg'), 9);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Seasonic Focus Plus 650 Gold SSR-650FX', 'активная PFC, КПД 87%, золотой сертификат, вентилятор 1x120 мм, модульные кабели, 12V 54 А', lo_import('E:\projects\maven-projects\CShop\products\Seasonic_Focus_Plus_650_Gold_SSR-650FX.png'), 9);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Corsair RM750x [CP-9020092-EU]', 'активная PFC, КПД 90%, золотой сертификат, вентилятор 1x135 мм, модульные кабели, 12V 63 А', lo_import('E:\projects\maven-projects\CShop\products\Corsair_RM750x_[CP-9020092-EU].jpg'), 9);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Zalman ZM700-GV 700W', 'активная PFC, КПД 88%, бронзовый сертификат, вентилятор 1x120 мм, 12V 56 А', lo_import('E:\projects\maven-projects\CShop\products\Zalman_ZM700-GV_700W.jpg'), 9);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Zalman ZM650-EBT', 'активная PFC, КПД 92%, золотой сертификат, вентилятор 1x135 мм, модульные кабели, 12V 54 А', lo_import('E:\projects\maven-projects\CShop\products\Zalman_ZM650-EBT.png'), 9);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS Strix RAID DLX', 'внутренняя, 7.1, PCIe', lo_import('E:\projects\maven-projects\CShop\products\ASUS_Strix_RAID_DLX.jpg'), 10);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Creative Sound Blaster Z (SB1500)', 'внутренняя, 5.1, PCIe', lo_import('E:\projects\maven-projects\CShop\products\Creative_Sound_Blaster_Z_(SB1500).jpg'), 10);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Creative Sound BlasterX AE-5', 'внутренняя, 5.1, PCIe', lo_import('E:\projects\maven-projects\CShop\products\Creative_Sound_BlasterX_AE-5.jpeg'), 10);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Creative Sound Blaster ZxR (SB1510)', 'внутренняя, 5.1, PCIe', lo_import('E:\projects\maven-projects\CShop\products\Creative_Sound_Blaster_ZxR_(SB1510).jpg'), 10);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Creative Sound BlasterX G5', 'внешняя, 7.1, USB', lo_import('E:\projects\maven-projects\CShop\products\Creative_Sound_BlasterX_G5.png'), 10);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS Xonar DSX', 'внутренняя, 7.1, PCIe', lo_import('E:\projects\maven-projects\CShop\products\ASUS_Xonar_DSX.jpg'), 10);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('D-Link DGE-560T/C1A', 'PCI Express x1, 1 Гбит/с, BootROM, 1xRJ45', lo_import('E:\projects\maven-projects\CShop\products\D-Link_DGE-560T-C1A.jpeg'), 11);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Supermicro AOC-SGP-I4', 'PCI Express 2.1 x4, 1 Гбит/с, green, BootROM, WoL, 4xRJ45', lo_import('E:\projects\maven-projects\CShop\products\Supermicro_AOC-SGP-I4.jpeg'), 11);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('TP-Link TG-3269', 'PCI, 1 Гбит/с, BootROM, 1xRJ45', lo_import('E:\projects\maven-projects\CShop\products\TP-Link_TG-3269.jpg'), 11);

INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('LG GP70NS50', 'DVD Multi, внешний/внешний Slim, интерфейс USB, толщина 15 мм, цвет серебристый', lo_import('E:\projects\maven-projects\CShop\products\LG_GP70NS50.jpg'), 12);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS ZenDrive U9M Black', 'DVD Multi, внешний, интерфейс USB, толщина 13.9 мм, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\ASUS_ZenDrive_U9M.jpeg'), 12);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('LG GP60NW60', 'DVD Multi, внешний Slim, интерфейс USB, толщина 14 мм, цвет белый', lo_import('E:\projects\maven-projects\CShop\products\LG_GP60NW60.jpg'), 12);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Pioneer DVR-S21WBK', 'DVD-RW, внутренний для ПК, интерфейс SATA, толщина 41.3 мм, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\Pioneer_DVR-S21WBK.jpeg'), 12);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('ASUS BC-12D2HT', 'BD-ROM + DVD-RW, внутренний для ПК, интерфейс SATA, толщина 42 мм, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\ASUS_BC-12D2HT.jpg'), 12);
INSERT INTO cshop.product(name, description, img, product_type_id)
	VALUES ('Lite-On eBAU108', 'DVD Multi, внешний/внешний Slim, интерфейс USB, толщина 13.5 мм, цвет черный', lo_import('E:\projects\maven-projects\CShop\products\Lite-On_eBAU108.jpg'), 12);

INSERT INTO cshop.provider (name)
	VALUES ('ООО «Компания МИПС плюс»');
INSERT INTO cshop.provider (name)
	VALUES ('ООО «ТрайдексБелПлюс»');
INSERT INTO cshop.provider (name)
	VALUES ('ООО «ДЕЛОВЫЕ ТЕХНОЛОГИИ»');

INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 130, 130, 405.0000, 250, 1, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 1312.2000, 810, 2, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 60, 60, 550.8000, 340, 3, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 793.8000, 490, 4, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 356.4000, 220, 5, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 421.2000, 260, 6, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 130, 130, 1587.6000, 980, 7, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1215.0000, 750, 8, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 567.0000, 350, 9, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 1522.8000, 940, 10, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 1053.0000, 650, 11, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 60, 60, 1717.2000, 1060, 12, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 140, 140, 210.6000, 130, 13, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1279.8000, 790, 14, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 226.8000, 140, 15, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 923.4000, 570, 16, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 70, 70, 745.2000, 460, 17, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 70, 70, 1134.0000, 700, 18, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1458.0000, 900, 19, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 30, 30, 696.6000, 430, 20, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 259.2000, 160, 21, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 1458.0000, 900, 22, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 648.0000, 400, 23, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 858.6000, 530, 24, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 615.6000, 380, 25, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 907.2000, 560, 26, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1587.6000, 980, 27, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 1182.6000, 730, 28, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 1668.6000, 1030, 29, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 1393.2000, 860, 30, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 70, 70, 437.4000, 270, 31, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1684.8000, 1040, 32, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 60, 60, 810.0000, 500, 33, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 60, 60, 1069.2000, 660, 34, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 1198.8000, 740, 35, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 60, 60, 1377.0000, 850, 36, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 20, 20, 1458.0000, 900, 37, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 1085.4000, 670, 38, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 110, 110, 550.8000, 340, 39, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 60, 60, 793.8000, 490, 40, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 30, 30, 1441.8000, 890, 41, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 1409.4000, 870, 42, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 20, 20, 1279.8000, 790, 43, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 1215.0000, 750, 44, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 1765.8000, 1090, 45, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 30, 30, 1344.6000, 830, 46, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 20, 20, 1247.4000, 770, 47, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 858.6000, 530, 48, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1620.0000, 1000, 49, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 70, 70, 1328.4000, 820, 50, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 70, 70, 907.2000, 560, 51, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 30, 30, 275.4000, 170, 52, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 20, 20, 729.0000, 450, 53, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1134.0000, 700, 54, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 858.6000, 530, 55, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 30, 30, 275.4000, 170, 56, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 1506.6000, 930, 57, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 1134.0000, 700, 58, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 696.6000, 430, 59, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 793.8000, 490, 60, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 631.8000, 390, 61, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 1717.2000, 1060, 62, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 70, 70, 680.4000, 420, 63, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 110, 110, 1231.2000, 760, 64, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 405.0000, 250, 65, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 1263.6000, 780, 66, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 1117.8000, 690, 67, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 110, 110, 437.4000, 270, 68, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 1717.2000, 1060, 69, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 664.2000, 410, 70, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 761.4000, 470, 71, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 178.2000, 110, 72, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 110, 110, 1701.0000, 1050, 73, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 1069.2000, 660, 74, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 340.2000, 210, 75, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 210.6000, 130, 76, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 712.8000, 440, 77, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 110, 110, 891.0000, 550, 78, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 60, 60, 421.2000, 260, 79, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 20, 20, 1733.4000, 1070, 80, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 356.4000, 220, 81, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 130, 130, 923.4000, 570, 82, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 388.8000, 240, 83, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 1328.4000, 820, 84, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 30, 30, 1506.6000, 930, 85, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 130, 130, 1247.4000, 770, 86, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 1085.4000, 670, 87, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 437.4000, 270, 88, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 891.0000, 550, 89, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 90, 90, 275.4000, 170, 90, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 70, 70, 664.2000, 410, 91, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 1749.6000, 1080, 92, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 210.6000, 130, 93, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 30, 30, 210.6000, 130, 94, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 20, 20, 1069.2000, 660, 95, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 20, 20, 1344.6000, 830, 96, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 130, 130, 729.0000, 450, 97, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 291.6000, 180, 98, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 469.8000, 290, 99, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 1020.6000, 630, 100, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 120, 120, 648.0000, 400, 101, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 60, 60, 1101.6000, 680, 102, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 40, 40, 178.2000, 110, 103, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 761.4000, 470, 104, 1, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 20, 20, 599.4000, 370, 105, 3, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1603.8000, 990, 106, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 130, 130, 1020.6000, 630, 107, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 100, 100, 712.8000, 440, 108, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 50, 50, 518.4000, 320, 109, 2, true);
INSERT INTO cshop.supply(merchant_id, balance, count, price, supply_price, product_id, provider_id, close)
	VALUES (3, 80, 80, 1409.4000, 870, 110, 2, true);
