git add .
git commit -m "update"
git push origin main
git pull origin main

clear
echo "   {-}"
sleep 0.2

clear
echo "  { / }"
sleep 0.2

clear
echo " {  |  }"
sleep 0.2

clear
echo "{  {\}  } "
sleep 0.2

clear
echo "   {-}"
sleep 0.2

clear
echo "  { / }"
sleep 0.2

clear
echo " {  |  }"
sleep 0.2

clear
echo "{  {\}  } "
sleep 0.2

clear
echo "   {-}"
sleep 0.2

clear
echo "  { / }"
sleep 0.2

clear
echo " {  |  }"
sleep 0.2

clear
echo "{  {\}  } "
sleep 0.2

clear
echo "   {-}"
sleep 0.2

clear
echo "  { / }"
sleep 0.2

clear
echo " {  |  }"
sleep 0.2

clear
echo "{  {\}  } "
sleep 0.2

clear
echo "   {-}"
sleep 0.2

clear
echo "  { / }"
sleep 0.2

clear
echo " {  |  }"
sleep 0.2

clear
echo "{  {\}  } "
sleep 0.2

clear
echo "   {-}"
sleep 0.2

clear
echo "  { / }"
sleep 0.2

clear
echo " {  |  }"
sleep 0.2

clear
echo "{  {\}  } "
sleep 0.2

clear
echo "   {-}"
sleep 0.2

clear
echo "  { / }"
sleep 0.2

clear
echo " {  |  }"
sleep 0.2

clear
echo "{  {\}  } "
sleep 0.2

clear

echo "Enable auto-updates? [Yn]:"
read message

if [ "$message" = "y" ]; then
  echo "Enabling auto-updates..."
  sleep 1

  chmod +x auto-updates.sh
  ./auto-updates.sh
elif [ "$message" = "n" ]; then
  echo "
Would you like to run process again? [Yn]:"
  read message
  
  if [ "$message" = "y" ]; then
    echo "Restarting..."
    sleep 1
    
    ./edit.sh
  elif [ "$message" = "n" ]; then
    echo "
Ending process..."
    sleep 1
    clear
    exit
  else
    echo "Invalid response. Ending process..."
    sleep 1
  fi
else
  echo "Invalid response. Ending process..."
  sleep 1
  clear
  exit
fi
