#basic 0 way to use for loop
#!/bin/bash
for current_number in 1 2 3 4 5 6 7 8 9 10
do
	echo $current_number
	sleep 0
done

echo "this is outside of the for loop."



#basic 1 way to use for loop
#!/bin/bash
for current_number in {1..10}
do
	echo $current_number
	sleep 0
done

echo "this is outside of the for loop."



#real use case of for loop.command to compress files using tar
#!/bin/bash
for file in test/*.txt
do
	tar -czvf $file.gz $file
done
