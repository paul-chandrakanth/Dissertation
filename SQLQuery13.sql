BULK INSERT ott_data
FROM 'C:\Users\paulb\OneDrive\Desktop\ottdata.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2  
);


