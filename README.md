
UAE_RealEstate_Analysis

"Analysis of UAE real estate market data using PostgreSQL and Power BI"


Real Estate Price Analysis: UAE Rental Market

Project Description
This project analyzes the rental real estate market in the UAE, focusing on key metrics such as rental prices per square meter. The aim is to provide insights into market trends and help identify cost-effective rental options across different cities.

Data
The project uses a dataset containing over 70,000 rows of real estate data for the UAE. A sample of the dataset is stored in the data/ folder.

Key Dataset Attributes

1.City: The city where the property is located.
2.Property Type: Type of property (e.g., apartment, villa).
3.Area (sq. ft.): Size of the property.
4.Rental Price (AED): Monthly rental price.

Additional calculated attributes (added via SQL):

1.Area in sqm: Converted property area from square feet to square meters.
2.Rent per sqm (AED): Rental price per square meter.
3.Rent in EUR: Rental price converted to Euros for easier interpretation in European contexts.


SQL Code

SQL queries used for data processing and analysis are stored in the sql/ folder. These include:

1.Data cleaning scripts: Scripts to remove any duplicates or errors from the dataset.
2.Queries to calculate additional attributes: SQL queries that calculate the area in square meters, rent per square meter, and convert the rent price into EUR.
3.Analytical queries: Queries that analyze trends in rental prices, comparing different cities and property types.
4.Views created to streamline data preparation: Views such as dubai_properties_view that consolidate raw data with calculated columns for easier analysis.

How to Use SQL Files

1.Ensure PostgreSQL is installed and running.
2.Load the dataset into your PostgreSQL database.
3.Execute the SQL scripts in the sql/ folder to prepare and analyze the data.

Folder Structure

bash
Copy
Edit
/sql
    /data_cleaning.sql    (Scripts for cleaning the dataset)
    /calculate_attributes.sql   (Queries to calculate area, rent per sqm, and convert to EUR)
    /trend_analysis.sql   (Queries for analyzing rental price trends)
    /dubai_properties_view.sql  (View that combines raw data with calculated columns)

Visualizations

Power BI is used to create visualizations for the analysis. Graphs and charts are stored in the visualizations/ folder. They include:

1.Trends in rental prices per square meter by city.
2.Distribution of rental prices across different cities.
3.Comparative analysis of rental price metrics across UAE cities.

How to Run the Project

1.Clone this repository.
2.Load the sample data from the data/ folder into your PostgreSQL database.
3.Execute the SQL scripts in the sql/ folder to prepare the data.
4.Open the Power BI file and load the processed data to generate the visualizations.

Key Findings

Summary of key insights will be added here after completing the analysis.


Feel free to reach out if you have any questions or need further clarification about the project.


