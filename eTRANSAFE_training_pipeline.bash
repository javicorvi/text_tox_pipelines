#Download Gold Answer for ..

#Clinical Findings 
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_CL.properties

#Body Weight 
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_BW.properties

#Food Water Consumption
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_FW.properties

#Dead Diagnosis
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_DD.properties

#Cardiovascular
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_CV.properties

#Organ Measurement
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_OM.properties

#Macroscopic Findings
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_MA.properties

#Generate data base



#Train
java -cp "*" edu.stanford.nlp.classify.ColumnDataClassifier -prop /home/jcorvi/eTRANSAFE_DATA/classificator/text_classificator_model_training.properties

