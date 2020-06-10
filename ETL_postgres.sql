DROP TABLE dow;
DROP TABLE eth;

-- Create tables for raw data to be loaded into
CREATE TABLE dow (
date TEXT PRIMARY KEY,
dow_open FLOAT,
dow_close FLOAT	

);

CREATE TABLE eth (
date TEXT PRIMARY KEY,
eth_open FLOAT,
eth_close FLOAT
	
);


-- Joins tables
SELECT dow.date, dow.dow_open, dow.dow_close, eth.eth_open, eth.eth_close
FROM dow
JOIN eth
ON dow.date = eth.date;


SELECT dow_open from dow

SELECT * from dow

SELECT * from eth