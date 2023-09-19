if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TeamKazukai/WEDNESDAY.git /WEDNESDAY
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-_TOM
fi
cd /WEDNESDAY
pip3 install -U -r requirements.txt
echo "Starting WEDNESDAY...."
python3 bot.py
