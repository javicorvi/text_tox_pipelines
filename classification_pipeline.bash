# Execute Pubmed retrieval container
sudo docker run --rm -u $UID  -v /home/jcorvi/text_tox_test/pubmed/:/app/data pubmed_retrieval python pubmed_retrieval.py -p /app/data/retrieval.properties

# Execute Standardization for Classfication
sudo docker run --rm -u $UID  -v /home/jcorvi/text_tox_test/pubmed/:/app/data pubmed_standardization python pubmed_standardization_classification.py -p /app/data/standardization_classification.properties

# Execute Abstract Classification 
java -jar /home/jcorvi/projects/text_classificator/target/text_classificator-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/text_classificator.properties

# Execute sentences spliting on relevant abstracts 
sudo docker run --rm  -v /home/jcorvi/text_tox_test/pubmed:/app/data sentence_splitting python sentence_splitting.py -p /app/data/classification_sentence_splitting.properties

# Execute Sentence Classification 
java -jar /home/jcorvi/projects/text_classificator/target/text_classificator-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/text_classificator_sentence.properties