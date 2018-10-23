#sudo docker build -t sentence_splitting .

# Execute Download Random Abstracts Retrieval Container
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_random_retrieval python pubmed_random_retrieval.py -p /app/data/random_retrieval.properties

# Execute Download Gold Answer of ...
#hepatotoxicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_HEP.properties
#nephrotoxicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_NEP.properties
#cardiotoxicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_CAR.properties
#thyrotoxicosis
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_THY.properties
#phospholipidosis
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_PHO.properties
#carcinogenicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_CARCI.properties
#phototoxicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_PHOTO.properties

#Generate Training Data Set
#Singular 
#Hepatotoxicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_training_dataset.py -p /app/data/generate_training_dataset_HEP.properties
#nephrotoxicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_training_dataset.py -p /app/data/generate_training_dataset_NEP.properties
#cardiotoxicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_training_dataset.py -p /app/data/generate_training_dataset_CAR.properties
#thyrotoxicosis
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_training_dataset.py -p /app/data/generate_training_dataset_THY.properties
#phospholipidosis
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_training_dataset.py -p /app/data/generate_training_dataset_PHO.properties
#carcinogenicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_training_dataset.py -p /app/data/generate_training_dataset_CARCI.properties
#phototoxicity
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_training_dataset.py -p /app/data/generate_training_dataset_PHOTO.properties


#Generate Training Data Set Multiclass
docker run --rm  -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data generate_training_dataset python generate_multiclass_training_dataset.py -p /app/data/generate_multiclass_training_dataset.properties

#TODO bug sentence splitting de seguridad nltk_data no tiene permisos.

# Execute sentences splitting on data set singular 
#Hepatotoxicity
docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting_HEP.properties
python /projects/sentence_splitting/sentence_splitting.py /home/jcorvi/text_tox_test/pubmed/classificator/sentence_splitting_HEP.properties
#nephrotoxicity
docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting_NEP.properties
#cardiotoxicity
docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting_CAR.properties
#thyrotoxicosis
docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting_THY.properties
#phospholipidosis
docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting_PHO.properties
#carcinogenicity
docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting_CARCI.properties
#phototoxicity
docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting_PHOTO.properties


# Execute sentences splitting on data set multiclass
docker run --rm -u $UID -v /home/jcorvi/text_tox_test/pubmed/classificator:/app/data sentence_splitting python sentence_splitting.py -p /app/data/sentence_splitting_multiclass_dataset.properties

#Generate Training Model For Abstracts
#Singular
#Hepatotoxicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_HEP.properties
#nephrotoxicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_NEP.properties
#cardiotoxicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_CAR.properties
#thyrotoxicosis
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_THY.properties
#phospholipidosis
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_PHO.properties
#carcinogenicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_CARCI.properties
#phototoxicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_PHOTO.properties



#Multiclass
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_multiclass.properties

# Generate Training Model Sentences
#Singular
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences.properties


#Generate Training Model For Abstracts
#Singular
#Hepatotoxicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences_HEP.properties
#nephrotoxicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences_NEP.properties
#cardiotoxicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences_CAR.properties
#thyrotoxicosis
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences_THY.properties
#phospholipidosis
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences_PHO.properties
#carcinogenicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences_CARCI.properties
#phototoxicity
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences_PHOTO.properties



#Multiclass
java -jar /home/jcorvi/projects/text_classificator_model_training/target/text_classificator_training-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/classificator/text_classificator_model_training_sentences_multiclass.properties


