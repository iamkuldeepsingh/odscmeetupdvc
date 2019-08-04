virtualenv .env
source .env/bin/activate
echo ".env/" >> .git/info/exclude
pip install -r code/requirements.txt
pip install dvc
