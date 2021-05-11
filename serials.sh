#!/bin/bash
cat list.txt | awk -F"(" '{ print $2 }' | awk -F"/" '{ print $1 }' | awk -F")" '{ print $1 }' > good-serials.txt

