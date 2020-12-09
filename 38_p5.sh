echo "start" > result5.txt

./raid.py -D 4 -n 100 -W "rand" -w 0 -L 0 -t -c >> result5.txt
./raid.py -D 4 -n 100 -W "rand" -w 0 -L 1 -t -c >> result5.txt
./raid.py -D 4 -n 100 -W "rand" -w 0 -L 4 -t -c >> result5.txt
./raid.py -D 4 -n 100 -W "rand" -w 0 -L 5 -t -c >> result5.txt

grep "STAT" result5.txt
rm -f result5.txt

