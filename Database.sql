CREATE TABLE customer(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    name VARCHAR(255),
    state VARCHAR(255),
    identification VARCHAR(255),
    address VARCHAR(255),
    genre VARCHAR(255)
);

-- Active: 1714873769387@@127.0.0.1@3306@db
CREATE TABLE item(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    name VARCHAR(255),
    price VARCHAR(255),
    type VARCHAR(255),
    photo VARCHAR(255)
);

CREATE TABLE shipments(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    customer_id INT,
    item_id INT,
    shipment_date DATE,
    seller VARCHAR(255),
    type VARCHAR(255),
    amount INT
);


SELECT i.name as name, i.photo as photo, i.`type` as type,i.price as price FROM shipments as s JOIN customer as c ON s.customer_id = c.id  JOIN item as i ON s.item_id = i.id WHERE c.id =10 

SELECT s.shipment_date, s.seller, s.`type` , s.amount, i.price  FROM shipments as s JOIN customer as c ON s.customer_id = c.id  JOIN item as i ON s.item_id = i.id WHERE c.id =10 


INSERT INTO shipments(customer_id,item_id,shipment_date ,seller ,type,amount) VALUES (2,4,CURRENT_DATE,'admin','electronico',1)

 INSERT INTO shipments(
        customer_id ,
        item_id ,
        shipment_date ,
        seller ,
        type 
          ) VALUES (
            1,
            2,
            CURRENT_DATE,
            "admin",
            "electronio"
          )




 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            1,
            'Kade' ,
            'solter@',
            '1' ,
            'Cis' ,
            '23444 Carolanne Radial'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            2,
            'Milo' ,
            'solter@',
            '2' ,
            'Gender fluid' ,
            '541 King Avenue'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            3,
            'Jakob' ,
            'solter@',
            '3' ,
            'Two-spirit' ,
            '777 Walker Throughway'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            4,
            'Irwin' ,
            'solter@',
            '4' ,
            'Trigender' ,
            '688 Rachelle Extension'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            5,
            'Mya' ,
            'solter@',
            '5' ,
            'Cis woman' ,
            '2800 Eunice Route'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            6,
            'Gladys' ,
            'solter@',
            '6' ,
            'MTF' ,
            '7969 Collier Fords'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            7,
            'Maryam' ,
            'solter@',
            '7' ,
            'Hermaphrodite' ,
            '236 Lindgren Cliff'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            8,
            'Joanny' ,
            'solter@',
            '8' ,
            'Cis' ,
            '63493 Von Rapids'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            9,
            'Margot' ,
            'solter@',
            '9' ,
            'Cisgender female' ,
            '1249 Ephraim Meadows'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            10,
            'Herta' ,
            'solter@',
            '10' ,
            'Transexual female' ,
            '60095 Kris Creek'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            11,
            'Wilmer' ,
            'solter@',
            '11' ,
            'Genderflux' ,
            '74007 Mraz Knolls'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            12,
            'Deontae' ,
            'solter@',
            '12' ,
            'Polygender' ,
            '1399 Goyette Mountain'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            13,
            'Eleanore' ,
            'solter@',
            '13' ,
            'Cisgender' ,
            '46481 Poplar Close'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            14,
            'Oda' ,
            'solter@',
            '14' ,
            'Gender fluid' ,
            '4545 Fritsch Pike'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            15,
            'Carlee' ,
            'solter@',
            '15' ,
            'Cisgender male' ,
            '985 Cumberland Street'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            16,
            'Joshua' ,
            'solter@',
            '16' ,
            'Xenogender' ,
            '317 Sandy Lane'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            17,
            'Melany' ,
            'solter@',
            '17' ,
            'Demi-woman' ,
            '788 Feil Ville'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            18,
            'Gloria' ,
            'solter@',
            '18' ,
            'Multigender' ,
            '1758 Hyatt Isle'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            19,
            'Whitney' ,
            'solter@',
            '19' ,
            'Cisgender female' ,
            '46999 Division Street'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            20,
            'Cristopher' ,
            'solter@',
            '20' ,
            'Agender' ,
            '16516 Cow Lane'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            21,
            'Edmund' ,
            'solter@',
            '21' ,
            'Male to female trans woman' ,
            '6323 St George's Road'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            22,
            'Doris' ,
            'solter@',
            '22' ,
            'Trans' ,
            '123 Gorczany Fields'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            23,
            'Felipa' ,
            'solter@',
            '23' ,
            'Demi-girl' ,
            '81927 Jabari Way'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            24,
            'Pearl' ,
            'solter@',
            '24' ,
            'T* woman' ,
            '3822 The Square'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            25,
            'Raven' ,
            'solter@',
            '25' ,
            'Cisgender man' ,
            '1653 Lucienne Land'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            26,
            'Eldon' ,
            'solter@',
            '26' ,
            'Two-spirit person' ,
            '140 Nitzsche Plain'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            27,
            'Elda' ,
            'solter@',
            '27' ,
            'Neutrois' ,
            '1396 Predovic Spurs'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            28,
            'Nels' ,
            'solter@',
            '28' ,
            'Male to female transgender woman' ,
            '99904 Eugene View'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            29,
            'Amelie' ,
            'solter@',
            '29' ,
            'Cisgender male' ,
            '2444 Murazik Lights'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            30,
            'Clementine' ,
            'solter@',
            '30' ,
            'Cis male' ,
            '514 Kub Pine'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            31,
            'Tara' ,
            'solter@',
            '31' ,
            'Polygender' ,
            '10362 Rey Gardens'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            32,
            'Juanita' ,
            'solter@',
            '32' ,
            'M2F' ,
            '592 S Front Street'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            33,
            'Adalberto' ,
            'solter@',
            '33' ,
            'Transexual female' ,
            '8384 Haag Forges'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            34,
            'Hulda' ,
            'solter@',
            '34' ,
            'Cisgender man' ,
            '822 Winston Groves'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            35,
            'Nicola' ,
            'solter@',
            '35' ,
            'Transexual person' ,
            '6670 Veterans Memorial Highway'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            36,
            'Arno' ,
            'solter@',
            '36' ,
            'Cisgender male' ,
            '294 Manor Gardens'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            37,
            'Annabelle' ,
            'solter@',
            '37' ,
            'Genderflux' ,
            '10106 Park Crescent'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            38,
            'Hattie' ,
            'solter@',
            '38' ,
            'Trans person' ,
            '977 Predovic Circles'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            39,
            'Kaylin' ,
            'solter@',
            '39' ,
            'Cisgender male' ,
            '72973 New Road'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            40,
            'Isabel' ,
            'solter@',
            '40' ,
            'Cisgender woman' ,
            '285 Howe Wells'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            41,
            'Ali' ,
            'solter@',
            '41' ,
            'Gender variant' ,
            '5974 Padberg Trace'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            42,
            'Brennon' ,
            'solter@',
            '42' ,
            'Gender nonconforming' ,
            '243 Connor Glen'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            43,
            'Brain' ,
            'solter@',
            '43' ,
            'Cis woman' ,
            '24319 Roob Plains'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            44,
            'Emmett' ,
            'solter@',
            '44' ,
            'Gender questioning' ,
            '7395 Mulberry Street'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            45,
            'Heath' ,
            'solter@',
            '45' ,
            'Polygender' ,
            '9629 Emmanuel Haven'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            46,
            'Trey' ,
            'solter@',
            '46' ,
            'Intersex person' ,
            '144 Woodlands Avenue'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            47,
            'Cicero' ,
            'solter@',
            '47' ,
            'Two* person' ,
            '66254 N Cedar Street'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            48,
            'Alice' ,
            'solter@',
            '48' ,
            'Transgender female' ,
            '11215 Mafalda Valley'
          )

 INSERT INTO customer(
            id,
            name,
            state ,
            identification ,
            genre,
            address
          ) VALUES (
            49,
            'Della' ,
            'solter@',
            '49' ,
            'Female to male transsexual man' ,
            '70735 Gladstone Road'
          )





