echo "Cloning Repo, Please Wait..."
git clone -b master https://github.com/Naveen-TG/Wan-peng.git /Wan-peng
cd /Wan-peng
echo "Installing Requirements..."
pip3 install -U -r requirements.txt
echo "Starting Bot, Please Wait..."
python3 bot.py
