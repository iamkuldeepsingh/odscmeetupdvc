dvc run -d data/Posts.xml -d code/xml_to_tsv.py -d code/conf.py -o data/Posts.tsv python code/xml_to_tsv.py
dvc run -d data/Posts.tsv -d code/split_train_test.py -d code/conf.py -o data/Posts-test.tsv -o data/Posts-train.tsv python code/split_train_test.py 0.33 20180319
git status -s
echo "*.pyc" >> .gitignore
git add .
git commit -m "Process to TSV and separate test and train"
dvc run -d code/featurization.py -d code/conf.py -d data/Posts-train.tsv -d data/Posts-test.tsv -o data/matrix-train.p -o data/matrix-test.p python code/featurization.py
dvc run -d data/matrix-train.p -d code/train_model.py -d code/conf.py -o data/model.p python code/train_model.py 20180319
dvc run -d data/model.p -d data/matrix-test.p -d code/evaluate.py -d code/conf.py -M data/eval.txt -f Dvcfile python code/evaluate.py
git status -s
git add .
git commit -m Evaluate
cat data/eval.txt
dvc metrics show
