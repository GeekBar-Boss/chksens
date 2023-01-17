regexp_dir=$wordlist/regexp
echo $wordlist
echo "regexp rules in $regexp_dir"
for pattern in $regexp_dir/*
do
	rg --file $pattern $PWD
	if [ $? == 0 ]
	then
		echo "---$pattern"
	fi
done;


