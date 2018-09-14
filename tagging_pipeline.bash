# Execute tagging chemspot dictionary update
java -Xmx5G -jar chemspot.jar -u

# Execute tagging chemspot abstracts
java -jar /home/jcorvi/projects/chemical_compound_tagger/target/chemical_compound_tagger-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/chemical_compound_tagger.properties

# Execute tagging chemspot sentences
java -jar /home/jcorvi/projects/chemical_compound_tagger/target/chemical_compound_tagger-0.0.1-SNAPSHOT-jar-with-dependencies.jar /home/jcorvi/text_tox_test/pubmed/chemical_compound_tagger.properties

