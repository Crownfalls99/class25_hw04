echo "start" > result.txt
 
./paging-policy.py -s 0 -n 10000 -m 10 -p OPT -C 5 -N -c >> result.txt
./paging-policy.py -s 0 -n 10000 -m 10 -p LRU -C 5 -N -c >> result.txt
./paging-policy.py -s 0 -n 10000 -m 10 -p FIFO -C 5 -N -c >> result.txt
./paging-policy.py -s 0 -n 10000 -m 10 -p RAND -C 5 -N -c >> result.txt
./paging-policy.py -s 0 -n 10000 -m 10 -p CLOCK -C 5 -N -c >> result.txt

grep "hitrate" result.txt
rm -f result.txt

