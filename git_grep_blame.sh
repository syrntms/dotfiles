git grep -ina $1 | while IFS=: read i j k; do git --no-pager blame -L $j,$j $i; done
