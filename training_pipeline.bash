#sudo docker build -t sentence_splitting .

# Execute Download Random Abstracts Retrieval Container
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_random_retrieval python pubmed_random_retrieval.py -p /app/data/random_retrieval.properties

# Execute Download Gold Answer Retrieval Container
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval.properties

# Generate Training Data Set
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_training_dataset.py -p /app/data/generate_training_dataset.properties

# Execute sentences splitting on data set 
sudo docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting.properties

# Generate Training Model
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training.properties

# Generate Training Model Sentences
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences.properties

# Remove duplicated articles from random, if an article is in goldsearch is removed from random
# sudo docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python remove_goldanswer_articles_from_random.py -p /app/data/#generate_training_dataset.properties
