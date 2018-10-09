# Execute Pubmed retrieval container
docker run --rm -u $UID  -v /home/jcorvi/text_tox_test/pubmed/:/app/data pubmed_retrieval python pubmed_retrieval.py -p /app/data/pubmed_retrieval.properties

# Execute Standardization for Classfication
docker run --rm -u $UID  -v /home/jcorvi/text_tox_test/pubmed/:/app/data pubmed_standardization python pubmed_standardization.py -p /app/data/pubmed_standardization.properties

# Execute sentences spliting 
docker run --rm  -v /home/jcorvi/text_tox_test/pubmed:/app/data sentence_splitting python sentence_splitting.py -p /app/data/classification_sentence_splitting.properties

# Execute Abstract Classification 
java -jar /home/jcorvi/projects/text_classificator/target/text_classificator-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/text_classificator.properties

# Execute Sentence Classification 
java -jar /home/jcorvi/projects/text_classificator/target/text_classificator-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/text_classificator_sentences.properties