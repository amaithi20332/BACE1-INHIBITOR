for i in {1..7079}
do
ls *.csv | xargs -n 1 tail -n+2 > master.csv
done
