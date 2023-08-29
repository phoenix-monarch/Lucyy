if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/phoenix-monarch/Lucyy.git /Lucyy 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lucyy 
fi
cd /Lucyy
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
