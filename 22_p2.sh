echo "start" > result.txt

./paging-policy.py --addresses=0,1,2,3,4,5,0,1,2,3,4,5 -p FIFO -C 5 -c >> result.txt
./paging-policy.py --addresses=0,1,2,3,4,5,0,1,2,3,4,5 -p LRU -C 5 -c >> result.txt
./paging-policy.py --addresses=0,1,2,3,4,5,4,5,4,5,4,5 -p MRU -C 5 -c >> result.txt

grep "hitrate" result.txt
rm -f result.txt

