
bad_line=$((RANDOM % 100 + 1))
file="good_bad.txt"
if [ -f "$file" ]; then
    rm "$file"
fi

for i in $(seq 1 99); do
    if  [ "$i" -eq $bad_line ]; then
         echo "bad" >> "$file"
    else
	 echo "good" >> "$file"
    fi
    git add "$file"
    git commit -m "Add line $i"
done

