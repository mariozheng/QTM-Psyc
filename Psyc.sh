#!/bin/bash

cut -d ',' -f 1,3,4 2015.csv > 20151.csv
cut -d ',' -f 1,3,4 2016.csv > 20161.csv                                                                            
cut -d ',' -f -3 2017.csv > 20171.csv  
awk -F $',' ' { t = $1; $1 = $2; $2 = t; print; } ' OFS=$','  2018.csv > 20181.csv                                  
awk -F $',' ' { t = $1; $1 = $2; $2 = t; print; } ' OFS=$','  2019.csv > 20191.csv
cut -d ',' -f -3 20181.csv > 20182.csv                                                                              
cut -d ',' -f -3 20191.csv > 20192.csv 
cat 20151.csv 20161.csv 20171.csv 20182.csv 20192.csv > happiness.csv
grep -i "china" happiness.csv | tr ',' '\t' > happiness.tsv 