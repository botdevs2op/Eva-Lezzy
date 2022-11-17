if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/botdevs2op/Eva-Lezzy.git /Eva-Lezzy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Eva-Lezzy
fi
cd /Eva-Lezzy
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
