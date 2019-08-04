mkdir data
wget -P data https://dvc.org/s3/so/100K/Posts.xml.zip
du -sh data/*
dvc add data/Posts.xml.zip
du -sh data/*
git status -s data/
git add .
git commit -m "add raw dataset"
cat data/Posts.xml.zip.dvc
du -sh .dvc/cache/ec/*
ls -i data/Posts.xml.zip
ls -i .dvc/cache/ec/
du -sh .
