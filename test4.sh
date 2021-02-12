for i in $(seq 1 50)
  do 
     echo "Welcome $i times"
	./dtls-client 136.159.7.172 -i identity.txt -k pskkey.txt > cf$i.txt
 done


# RUN : sh test4.sh
