if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/RealZenX/AutoFilterNew.git /AutoFilterNew
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoFilterNew
fi
cd /AutoFilterNew
pip3 install -U -r requirements.txt
echo "Starting WEDNESDAY...."
python3 bot.py
