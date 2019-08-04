wget https://dvc.org/s3/so/code.zip
unzip code.zip -d code && rm -f code.zip
git add code/
git commit -m "download code"
