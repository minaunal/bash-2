if grep -q "bad" good_bad.txt; then
    exit 1
else	
    exit 0
fi
