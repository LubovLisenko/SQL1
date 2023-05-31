{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww15600\viewh15300\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0  SELECT client.name, count(project.id) AS PROJECT_COUNT\
FROM client\
JOIN project ON client.id=project.client_id\
  GROUP BY client_id\
  HAVING count(project.id) IN (\
    SELECT count(id)\
    FROM project\
    GROUP BY client_id\
    ORDER BY count(id) DESC\
    LIMIT 1\
  );\
\
\
\
}