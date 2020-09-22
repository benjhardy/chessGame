#!/bin/bash
# Random Functions that might help later....

lightSquareRow () {
    light=$'|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|\n'
    printf "%s" "$light" 
}
darkSquareRow () {
    dark=$'|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |\n'
    printf "%s" "$dark"
}


# Variables

board=$' ---------------------------------------------------------------------------
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
 ---------------------------------------------------------------------------
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
 ---------------------------------------------------------------------------
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         | 
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
 ---------------------------------------------------------------------------  
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
 ---------------------------------------------------------------------------
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
 ---------------------------------------------------------------------------
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
 ---------------------------------------------------------------------------
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
|XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |
 ---------------------------------------------------------------------------
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|         |XXXXXXXX|
 ---------------------------------------------------------------------------'

 # IDeas
 # 
# Now I need to figure out how to add questions marks to each square...
# 3 |???| for light squares, 2 |??| for the dark squares
#
#printf "%s" "$board"
# echo ${board:100:400}
# tmp=$board
# printf "\n%s" "${tmp:0:4}"
# printf "%s" "${tmp:5:100}"
# top length = 78
# height 41 lines
# 41*78
# total=78*41
# printf "\n%s" "${tmp:0:$total}"
# black squares: 8 placeholders
# white squares: 9 placeholders 
# sym: 
#       
#      /?|?\
#      \?|?/
#      5 across, 2 deep
#  
# Try printing ^ this symbol onto a8
# printf "\n%s" "${tmp:0:(78*2 + 2)}"
# printf "/?|?\\"
# printf "%s" "${tmp:(78*2 + 7):$total}"

# printf "\n"
# lightSquare
# darkSquare
