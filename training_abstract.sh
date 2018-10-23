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
