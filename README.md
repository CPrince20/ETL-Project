# ETL-Project

Final Report

Extract

First we gathered our data from two sources

For the data on Ethereum we used a CSV file from this website:
https://cointelegraph.com/ethereum-price-index
see Eth

For the data on the DOW Jones Industrial Average we used a CSV file from Yahoo finance:
https://finance.yahoo.com/quote/%5EDJI/history?period1=1483228800&period2=1514592000&interval=1d&filter=history&frequency=1d
see DOW.csv for raw data

Transform

First, we had to put the data somewhere we could augment it, so we imported our data into Pandas DataFrames. Next was the task of standardizing our two dataframes so that we could perform a join later on. We imported DateTime into Jupyter and created a for loop that looped through the Ethereum CSV and removed the exact minute and hour the data was logged. Now, our “date” columns from both CSV files could be used as our primary key. We renamed our columns so that it was clear which CSV the column was referring to. The exact transformation can be viewed in dataframes.ipynb




Load

Finally was the task of loading our DataFrames into Tables in our chosen database, pgAdmin4. We used SQLAlchemy to load the data into PostgreSQL and named the tables ‘dow’ and ‘eth’.  We created a Table to store the completed joined data and performed an inner join using ‘date’ as the primary key.  The exact open and close values for both Ethereum and the DOW Jones Industrial Average can be easily viewed by querying this table. The exact querys can be viewed in postgres.txt
