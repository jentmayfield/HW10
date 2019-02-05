# HW10


For the ETL project we used three data sets from two Kaggle sources in CSV formats.  The first one was data a set of beer recipes and styles.  The other was a data set of beer reviews.  The third data set was beer recipes with a list of styles of beers. We used this to clean our styles field in the beer reviews data set.  The object of this homework was to extract, clean, and load these data sets.   

We joined all three data sets. Since the beer recipes and beer reviews came from different sources within Kaggle they didn't have a join for every recipe in our data set.  We used the styles field to join reviews, recipe, and styles data set.  Since we didn't try to join both the beer names and style's we decided to use the average review score for each style of beer given the time constraint on this project.  Using the average helped summarize our beer reviews dataset.   The dataset contained individual reviews from over a million reviewers.  

To perform this task we are using SQL workbench and python In the data sets are retrieved from the following URLs :
https://www.kaggle.com/jtrofe/beer-recipes

https://www.kaggle.com/rdoume/beerreviews

The steps followed to clean the data and uploaded to a SQL DataBase are described, as comments, in the Jupiter notebook file and SQL file.

There were challenges matching the styles field from different data sets from the two sources.  Some names could be easily matched because of abbreviations or order of text.  Some fields required research since we started with a list of  
176 styles of beers.  Initially only 30 perfectly matched or 17% could be joined to our recipe data set.   We did some  sorting and renaming to add 25 more styles to our list of beers that matched.  In the end we were able to match 55 or 31% of the beer styles.  We decided to use an inner join since we were only able to match 31% of our style's dataset.   

There were some challenges trying to upload our files into MySQL since some of the beer names had characters from a different language.  We worked around this issue by joining the datasets before uploading the files into MySQL.  

The last challenge we had was dealing with the beer reviews dataset which had 1,048,576 rows.   The file was too large to upload to GitHub.  We transformed the data and cleaned the datasets which narrowed the number of records.   We ended up with a smaller dataset that included only the recipes and styles we were able to match.  There wasn't much purpose in showing a recipe without a review.  

Note: Both of the original files were too big to upload to Github.
