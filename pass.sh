#!/bin/bash

pwd=$(pwd)

echo -e "
  ╺┓    ┏━┓         ╻ ╻   ┏━┓   ┏━┓   ╺┳┓
   ┃    ┗━┫   ╺━╸   ┃╻┃   ┃ ┃   ┣┳┛    ┃┃
  ╺┻╸   ┗━┛         ┗┻┛   ┗━┛   ╹┗╸   ╺┻┛"
echo -e "                              "
echo -e " Simple Password Maker for SocialMedia BrutForce "
echo -e " masukan profile target.. "
echo -e ""
echo -e " nama target        : \c"
read fname
echo -e " nama bapa target   : \c"
read lname
echo -e " tarikh hari lahir  : \c"
read day
echo -e " tarikh bulan lahir : \c"
read month
echo -e " tarikh tahun lahir : \c"
read year
echo ""
echo -e " nama senarai disimpan : \c"
read name

# echo -e " no IC tengah  : \c"
# read ic1
# echo -e " no IC hujung  : \c"
# read ic2

yr=`echo -e $year | tail -c 3`

num2=`date -d last-year +%Y`
#num2=`date -d last-year | tail -c 5`
old=`shuf -i $year-$num2 | wc -l`

# echo -e "$yr$month$day-$ic1-$ic2" >> pass.pass.txt
# echo -e "$yr$month$day$ic1$ic2" >> pass.pass.txt
echo -e "$day$month$yr" >> pass.pass.txt
echo -e "$day$month$year" >> pass.pass.txt
echo -e "$yr$month$day" >> pass.pass.txt
echo -e "$year$month$day" >> pass.pass.txt
echo -e "$fname$yr" >> pass.pass.txt
echo -e "$fname$year" >> pass.pass.txt
echo -e "$fname$lname" >> pass.pass.txt
echo -e "$fname$lname$yr" >> pass.pass.txt
echo -e "$fname$lname$year" >> pass.pass.txt
echo -e "$day$month$yr$fname" >> pass.pass.txt
echo -e "$day$month$year$fname" >> pass.pass.txt
echo -e "$fname\a-$yr" >> pass.pass.txt
echo -e "$fname\a-$year" >> pass.pass.txt
echo -e "$yr$fname" >> pass.pass.txt
echo -e "$year$fname" >> pass.pass.txt
echo -e "$yr$fname$lname" >> pass.pass.txt
echo -e "$year$fname$lname" >> pass.pass.txt
echo -e "$fname$old" >> pass.pass.txt
echo -e "$fname\a-$old" >> pass.pass.txt



echo -e ""
rm -f $name.txt

cat pass.pass.txt | tr -d '' > $name

rm -f pass.pass.txt
echo ""
echo -e " You Password Woldlist on$GREEN$BOLD $pwd/$name"
echo -e " GOOD LUCK.. GOD BLESS YOU\n"
