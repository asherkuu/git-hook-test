# git-sch.sh

Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)

Ym=$Y-$M
Ymd=$Y-$M-$D
GitRep="git-hook-test"

HomeDir="/var/www"
GitDir="$HomeDir/$GitRep"
FileDir="$HomeDir/$GitRep/$Ym"
FileNm="$Ymd".md

mkdir -p $FileDir

echo "### $Ymd 일기" >> $FileDir/$FileNm

cd $GitDir
git add .
git commit -m "commit $FileNm"
git push origin main
