
for f in cf*.txt
do
	echo "File name is $f"
	tag=$( tail -n 1 $f )
	#echo $tag
	echo "$tag" | awk '{ print $5 }'
	
done

# bash test2.sh
# Reading files to recover fifth value of the line from all files (names are cf*.txt)


