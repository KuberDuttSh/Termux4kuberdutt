#!/bin/bash
clear
cat banner.txt
echo ""
echo "==== Tool Menu ===="
select opt in $(ls tools); do
    bash tools/$opt
    break
done
