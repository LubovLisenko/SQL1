{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28500\viewh17260\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
INSERT INTO  worker (name, birthday, level, salary) VALUES\
('Alex',    '1978-12-21',  'Senior', 99000),\
('Max', '1993-07-12',  'Junior', 700),\
('Andrey','1987-08-15',  'Middle',10000),\
('Sveta',  '1985-08-07',  'Trainee', 45000),\
('Sasha', '1991-04-22',  'Middle' ,51000),\
('Anna',   '2002-06-20',  'Junior', 25000),\
('Roman','1996-09-12',  'Middle', 60000),\
('Sergey', '1984-06-26', 'Senior', 99500),\
('Liuba',   '1985-01-17',  'Middle', 55000),\
('Igor',     '1997-08-08',  'Junior', 22000);\
\
\
\
INSERT INTO  client (name) VALUES\
('NovaPoshta'),\
('Amazon'),\
('PrivatBank'),\
('Diya'),\
('Prom');\
\
\
\
INSERT INTO  project (client_id, start_date, finish_date) VALUES\
(1, '2022-12-01', '2023-04-01'),\
(2, '2022-06-01', '2023-05-01'),\
(3, '2016-12-01', '2023-05-01'),\
(4, '2011-08-01', '2019-12-01'),\
(5, '2022-09-01', '2022-10-01'),\
(1, '2019-01-01', '2021-01-01'),\
(2, '2017-09-30', '2022-06-30'),\
(3, '2015-01-01', '2023-02-01'),\
(4, '2014-01-01', '2016-10-01'),\
(5, '2018-05-01', '2020-02-01\'92),\
(2, '2022-10-01', '2023-05-01'),\
(3, '2018-12-01', '2021-05-01');\
\
\
\
INSERT INTO project_worker(project_id, worker_id) VALUES\
(1,1),\
(2,8),\
(2,9),\
(3,1),\
(3,2),\
(3,3),\
(4,4),\
(4,5),\
(4,6),\
(4,8),\
(5,7),\
(5,10),\
(6,1),\
(7,2),\
(7,4),\
(7,10),\
(8,7),\
(8,8),\
(9,8),\
(10,1),\
(10,6),\
(10,7),\
(10,8),\
(10,10);\
\
}