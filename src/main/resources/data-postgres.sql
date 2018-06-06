INSERT INTO cshop.product_type(name) VALUES ('Видеокарты');
INSERT INTO cshop.product_type(name) VALUES ('Процессоры');
INSERT INTO cshop.product_type(name) VALUES ('Материские платы');
INSERT INTO cshop.product_type(name) VALUES ('Оперативная память');
INSERT INTO cshop.product_type(name) VALUES ('Кулеры');
INSERT INTO cshop.product_type(name) VALUES ('SSD');
INSERT INTO cshop.product_type(name) VALUES ('Жесткие диски');
INSERT INTO cshop.product_type(name) VALUES ('Корпуса');
INSERT INTO cshop.product_type(name) VALUES ('Блоки питания');
INSERT INTO cshop.product_type(name) VALUES ('Звуковые карты');
INSERT INTO cshop.product_type(name) VALUES ('Сетевые адаптеры');
INSERT INTO cshop.product_type(name) VALUES ('Оптические накопители');

INSERT INTO cshop.product(name, description, img, product_type_id) VALUES ('ASUS Radeon RX 560 EVO OC Edition 4GB GDDR5', 'частота ядра 1149 МГц/1187 МГц, 896sp, частота памяти 1500 МГц, 128 бит, 2 слота, DVI, HDMI, DisplayPort', lo_import('E:\projects\maven-projects\CShop\products\ASUS_Radeon_RX_560_EVO_OC_Edition_4GB_GDDR5.jpeg'), 1);

INSERT INTO cshop.provider (name) VALUES ('ООО «Компания МИПС плюс»');
INSERT INTO cshop.provider (name) VALUES ('ООО «ТрайдексБелПлюс»');
INSERT INTO cshop.provider (name) VALUES ('ООО «ДЕЛОВЫЕ ТЕХНОЛОГИИ»');
