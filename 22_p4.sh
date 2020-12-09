adds=$(python3 gen-stream.py)

echo "start" > result.txt
./paging-policy.py --addresses=$adds -p LRU -m 10 -C 5 -N -c >> result.txt
./paging-policy.py --addresses=$adds -p RAND -m 10 -C 5 -N -c >> result.txt
./paging-policy.py --addresses=$adds -p CLOCK -m 10 -C 5 -N -c >> result.txt

grep "FINALSTATS" result.txt
rm -f result.txt

