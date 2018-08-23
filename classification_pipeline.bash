# Execute Pubmed retrieval container
sudo docker run --rm -u $UID  -v /home/jcorvi/text_tox_test/pubmed/:/app/data pubmed_retrieval python pubmed_retrieval.py -p /app/data/retrieval.properties

# Execute Standardization for Classfication
sudo docker run --rm -u $UID  -v /home/jcorvi/text_tox_test/pubmed/:/app/data pubmed_standardization python pubmed_standardization_classification.py -p /app/data/standardization_classification.properties

# Execute sentences splitting on data set 
sudo docker run --rm  -v /home/jcorvi/text_tox_test/pubmed:/app/data sentence_splitting python sentence_splitting.py -p /app/data/classification_sentence_splitting.properties

