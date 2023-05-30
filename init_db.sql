{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28420\viewh17260\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE worker(\
id IDENTITY PRIMARY KEY,\
name VARCHAR(1000) NOT NULL CHECK(LENGTH(name)>=2),\
birthday DATE CHECK(birthday>'1900-12-31'),\
level VARCHAR(100) NOT NULL CHECK level IN ('Trainee', 'Junior', 'Middle', 'Senior'),\
salary INT CHECK(salary>=100 AND salary<=100000)\
);\
\
\
CREATE TABLE client (\
id IDENTITY PRIMARY KEY,\
name VARCHAR(1000) NOT NULL CHECK (LENGTH (name) >= 2)\
);\
\
CREATE TABLE project(\
id IDENTITY PRIMARY KEY,\
client_id  BIGINT NOT NULL,\
start_date DATE,\
finish_date DATE\
);\
ALTER TABLE project\
    ADD FOREIGN KEY (client_id) \
    REFERENCES client(id);\
\
\
CREATE TABLE project_worker(\
project_id BIGINT NOT NULL,\
worker_id BIGINT NOT NULL,\
PRIMARY KEY(project_id, worker_id),\
FOREIGN KEY (project_id) REFERENCES project(id),\
FOREIGN KEY (worker_id) REFERENCES worker(id)\
);\
\
}