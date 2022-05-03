if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Naveen-TG/Wan-Peng.git /Wan-Peng
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Wan-Peng
fi
cd /Tigershroff
pip3 install -U -r requirements.txt
echo "Starting Wan Peng....🔥"
python3 bot.py
