clear
echo "Updating...
"

sleep 2

git add .
git commit -m ""auto-update"
git push origin main
git pull origin main
clear

sleep 18

./auto-updates.sh