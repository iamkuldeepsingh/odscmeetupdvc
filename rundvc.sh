dvc run -d data/Posts.xml.zip -o data/Posts.xml unzip data/Posts.xml.zip -d data/
du -sh data/*
cat Posts.xml.dvc
git status -s
cat data/.gitignore
ls .dvc/cache/
du -sh .dvc/cache/c1/* .dvc/cache/ec/*
du -sh .
git add .
git commit -m "extract data"
