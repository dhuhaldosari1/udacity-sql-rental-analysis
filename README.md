# Udacity SQL Rental Analysis

📌 About the Project
This is a small training project I built as part of my Udacity learning journey.  
The main goal was to practice writing advanced SQL queries** using JOINs, Aggregations, Subqueries, and Window Functions.  

The project contains **4 main SQL queries** applied on the **DVD Rental Database.  
Additionally, a presentation file is included with the questions, queries, and data visualizations.

📂 Project Files
- `queries.sql` → Contains all 4 SQL queries.
- `slides.pdf` → Presentation file with questions, explanations, and visualizations.
- `README.md` → Project description (this file).

 📊 Queries Overview
1. Top 20 Customers by Rental Count
   - Retrieves customers with the highest rental counts.  
   - Uses `JOIN` + `COUNT`.  

2. Top 8 Countries by Number of Customers
   - Retrieves countries with the largest number of customers.  
   - Uses `JOIN` + `COUNT` + Subquery.  

3. Total Revenue by Country
   - Calculates the total payment amount by country.  
   - Uses `JOIN` + `SUM` + Subquery.  

4. Rental Distribution by Film Categories
   - Calculates rental counts per film category.  
   - Uses `JOIN` + `Window Function` + `Aggregation`.  

 ✅ Rubric Coverage
- All queries run without errors and return the intended results.  
- Each query includes one or more `JOIN`s.  
- Queries include aggregations (`COUNT`, `SUM`).  
- Subqueries are used in queries #2 and #3.  
- A Window Function is used in query #4.  
- Queries are formatted and use aliases for readability.  
- Presentation slides are clear and include titles, axis labels, and insights.  

 🚀 Purpose
This project was created as a **learning exercise** to strengthen my SQL skills and apply them to a real-world style database.

