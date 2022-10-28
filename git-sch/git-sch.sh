# git-sch.sh

Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)
H=$(date +%H)
Mn=$(date +%M)

Ym=$Y-$M
Ymd=$Y-$M-$D
Hmn=$H:$Mn
GitRep="git-hook-test"

HomeDir="/var/www"
GitDir="$HomeDir/$GitRep"
FileDir="$HomeDir/$GitRep/$Ym"
FileNm="$Ymd".md

mkdir -p $FileDir

echo "### $Ymd $Hmn 일기" >> $FileDir/$FileNm

cd $GitDir
git add .
git commit -m "commit $FileNm"
git push origin master
