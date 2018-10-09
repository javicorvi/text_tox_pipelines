#Download Gold Answer for ..

#Clinical findings 
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_CL.properties

#BODY_WEIGHT 
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_BW.properties

#Food Water consumption
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_FW.properties

#Dead diagnosis
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_DD.properties

#Cardiovascular
docker run --rm  -u $UID -v /home/jcorvi/eTRANSAFE_DATA/classificator:/app/data pubmed_goldsearch_retrieval python pubmed_goldsearch_retrieval.py -p /app/data/gold_retrieval_CV.properties