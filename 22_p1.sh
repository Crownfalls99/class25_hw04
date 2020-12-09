echo start > result.txt
./paging-policy.py -s 0 -n 10 --policy=FIFO -c >> result.txt
./paging-policy.py -s 0 -n 10 --policy=LRU -c >> result.txt
./paging-policy.py -s 0 -n 10 --policy=OPT -c >> result.txt

./paging-policy.py -s 1 -n 10 --policy=FIFO -c >> result.txt
./paging-policy.py -s 1 -n 10 --policy=LRU -c >> result.txt
./paging-policy.py -s 1 -n 10 --policy=OPT -c >> result.txt

./paging-policy.py -s 2 -n 10 --policy=FIFO -c >> result.txt
./paging-policy.py -s 2 -n 10 --policy=LRU -c >> result.txt
./paging-policy.py -s 2 -n 10 --policy=OPT -c >> result.txt

grep "hitrate" result.txt
rm -f result.txt

