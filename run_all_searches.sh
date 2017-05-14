#!/bin/bash
# nested-loop.sh: Nested "for" loops.

outer=1             # Set outer loop counter.

# Beginning of outer loop.
for a in 1 2 3
do
  inner=1 
  for b in 1 2 3 4 5 6 7 8 9
  do
    python run_search.py -p $outer -s $inner
    let "inner+=1"
  done
  let "outer+=1"    # Increment outer loop counter. 
  echo              # Space between output blocks in pass of outer loop.
done               
# End of outer loop.