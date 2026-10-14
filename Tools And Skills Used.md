### Power Query
Used Power Query to clean the data prior to loading it into Excel and create new columns such as the profit column. Far easier and cleaner to do it here rather than Excel.
Creates a reusable and automated way of cleaning and formatting data.

### Excel Formulae and Pivot
Pivot tables and pivot charts were used extensively in this project as it is much easier to group and plot data using pivot than manually entering formulae
to create tables and charts as a result. Lookups, complex SUMIFS ad complex INDEX-XMATCH formulae were used also. For example, 
'XLOOKUP(F9,Sales_Export_2019_2020__2[sales_rep],Sales_Export_2019_2020__2[sales_manager])' was used to fidnd each sales rep's corresponding manager,
'IF(INDEX(W$21:W$32,XMATCH($V3,$V$21:$V$32,0))<$S$19,"Below Average",IF(INDEX(W$21:W$32,XMATCH($V21,$V$21:$V$32,0))>$S$21,"Above Average", "Average"))' was used
to label certain months average, above average or below average depending on their profit per month relative to a calculated average and standard deviation and
'SUMIFS(Sales_Export_2019_2020__2[[profit]:[profit]],Sales_Export_2019_2020__2[[sales_rep]:[sales_rep]],$Y47,Sales_Export_2019_2020__2[[category]:[category]],Z$46)'
was used to calculate an individual sales rep's total profit in each product category.

### AI Dashboard
