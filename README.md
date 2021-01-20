# Theory Scripts


1. Use sed where there are patterns in the text. For example, you could replace all the negative numbers in some text that are in the form "minus-sign followed by a sequence of digits" (e.g. "-231.45") with the "accountant's brackets" form (e.g. "(231.45)") using this (which has room for improvement):

         $ sed 's/-\([0-9.]\+\)/(\1)/g' inputfile



2. Use awk when the text looks more like rows and columns or, as awk refers to them "records" and "fields". If I was going to do a similar operation as above, but only on the third field in a simple comma delimited file I might do something like:

            $ awk -F, 'BEGIN {OFS = ","} {gsub("-([0-9.]+)", "(" substr($3, 2) ")", $3); print}' inputfile


