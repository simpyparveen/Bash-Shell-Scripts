for f in cf*.txt
do
	#echo "File name is $f"
	while IFS= read -r line
	do
		if [[ "$line" == "Just printing substring:"* ]]; then
			echo "$line" | awk '{ print $11 }'
		fi
	done < $f
done
# bash test1.sh



