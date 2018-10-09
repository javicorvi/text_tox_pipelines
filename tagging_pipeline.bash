# Execute tagging chemspot dictionary update
java -Xmx5G -jar chemspot.jar -u

# Execute tagging chemical compounds abstracts
java -Xmx15g -Xms15g -jar chemical_compound_tagger-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/projects/chemical_compound_tagger/src/main/resources/chemical_compound_tagger.properties

# Execute tagging chemical compounds sentences
java -Xmx15g -Xms15g -jar  chemical_compound_tagger-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/projects/chemical_compound_tagger/src/main/resources/chemical_compound_tagger_sentences.properties




# Execute tagging hepatotoxicity terms
java -jar /home/jcorvi/projects/hepatotoxicity_tagger/target/hepatotoxicity_tagger-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/projects/hepatotoxicity_tagger/src/main/resources/hepatotoxicity_tagger.properties

# Execute tagging hepatotoxicity terms
java -jar /home/jcorvi/projects/hepatotoxicity_tagger/target/hepatotoxicity_tagger-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/projects/hepatotoxicity_tagger/src/main/resources/hepatotoxicity_tagger_sentences.properties