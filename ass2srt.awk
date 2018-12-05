
function remove_space(A,i)
{ 
# strip spaces on each side of A[i]
			sub("^[ \t]*","",A[i])
			sub("[ \t]*$","",A[i])
# remove '^M' '\n' character
			gsub("[\n]","",A[i])
}


BEGIN { 
	FS=","
	DiagIndex=1	
}

# variable bEvents, bFormat
# when bEvents == true, the match of pattern "Format" will cause the execution
# of actions for determining start position of dialog(nStart), end position of
# dialog(nEnd), and the dialog string position(nText)

$0 ~ /^[ \t]*\[Events\]/ {
	bEvents = 1
#	print $0
}

$0 ~ /^[ \t]*Format/ {
	bFormat = 1
	lowerstr = tolower($0);
# return the string after ":" character
	lowerstr = substr(lowerstr, index(lowerstr, ":")+1)
# if we have encountered "[Event]" keyword, we will process this format 
# to find out position of "start", "end", and "text".
	if(bEvents == 1)
	{
#		print lowerstr
		nFormatField=split(lowerstr, A)
		for(i=1; i<=nFormatField; i++)
		{
			remove_space(A,i)
#			printf("%s", A[i])
			if( A[i]=="start")
				nStart=i;
			else
			if( A[i]=="end")
				nEnd=i;
			else
			if( A[i]=="text")
				nText=i;
		}
# field after text field
# Text filed should be extracted 
# by extracting field nText to NF-nFieldAfterText
#		nFieldAfterText = nFormatField - nText
#		printf("nStart=%d, nEnd=%d, nText=%d\n", nStart, nEnd, nText);
	} # end if(bEvents)
} # end "Format"


$0 ~ /^[ \t]*Dialogue/ {
	if(!(bEvents ==1 && bFormat == 1))
		next
# return the string after ":" character
	textstr = substr($0, index($0, ":")+1)
	nTextField=split(textstr, A)
# get texts that have no special effect
	if(nTextField > nFormatField)
		next

	remove_space(A,nStart)
	remove_space(A,nEnd)
	remove_space(A,nText)
	gsub(/\./, ",", A[nStart])
	gsub(/\./, ",", A[nEnd])
	gsub(/\\N|\\n/, "\n", A[nText])
	printf("%d\n%s --> %s\n%s\n\n", DiagIndex++, A[nStart], A[nEnd], A[nText])
# field after text field
# Text filed should be extracted 
# by extracting field nText to NF-nFieldAfterText
#		nFieldAfterText = nField - nText
} # end "Dialogue"
