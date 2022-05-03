if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Naveen-TG/Wan-peng.git /Wan-peng
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Wan-peng
fi
cd /Wan-peng
pip3 install -U -r requirements.txt
echo "Starting Wan peng....🔥"
python3 bot.py
