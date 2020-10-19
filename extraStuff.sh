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
knightDarkPrint () {
    knight=$'
|- , ----
|-/,`\---
|-` ( /--
|--{ _ }-'
printf "%s" "$knight"
}

knightLightPrint () {
    knight=$'
|  ,     
| /,`\   
| ` ( /  
|  { _ } '
printf "%s" "$knight"
}


# Variables
bishopDarkPrint () {
    b=$'
|---o---
|--(+)--
|--/|\--
|-{ _ }-'
printf "%s" "$b"
}
bishopLightPrint () {
    b=$'
|   o   
|  (+)  
|  /|\  
| { _ } '
printf "%s" "$b"
}
pawnDarkPrint () {
    p=$'
|-------
|--( )--
|--/-\--
|-{ _ }-'
printf "%s" "$p"
}
pawnLightPrint () {
    p=$'
|       
|  ( )  
|  /-\  
| { _ } '
printf "%s" "$p"
}
pawnRowPrint () {
    pr=$'
|-------|       |-------|       |-------|       |-------|       |
|--( )--|  ( )  |--( )--|  ( )  |--( )--|  ( )  |--( )--|  ( )  |
|--/ \--|  / \  |--/ \--|  / \  |--/ \--|  / \  |--/ \--|  / \  |
|-{ _ }-| { _ } |-{ _ }-| { _ } |-{ _ }-| { _ } |-{ _ }-| { _ } |'
printf "%s" "$pr"
}
backRankPrint () {
    br=$'
|       |- , ---|   o   |--w-w--|  [+]  |---o---|  ,    |-------|
| |[_]| |-/,`\--|  (+)  |--(~)--| ((-)) |--(+)--| /,`\  |-|[_]|-|
|  [=]  |-` ( /-|  /|\  |--\|/--|  /=\  |--/|\--| ` ( / |--[=]--|
| [ _ ] |--{ _ }| { _ } |-{ _ }-| { _ } |-{ _ }-|  { _ }|-[ _ ]-|'
printf "%s" "$br"
}

rookLightPrint () {
    r=$'
|       
| |[_]| 
|  [=]  
| [ _ ] '
printf "%s" "$r"
}
rookDarkPrint () {
    r=$'
|-------
|-|[_]|-
|--[=]--
|-[ _ ]-'
printf "%s" "$r"
}
queenDarkPrint () {
    r=$'
|--w-w--
|--(~)--
|--\|/--
|-{ _ }-'
printf "%s" "$r"
}
queenLightPrint () {
    b=$'
|  w-w  
|  (~)  
|  \|/  
| { _ } '
printf "%s" "$b"
}
kingLightPrint () {
    k=$'
|  [+]  
| ((-)) 
|  /=\  
| { _ } '
printf "%s" "$k"
}
kingDarkPrint () {
    k=$'
|--[+]--
|-((-))-
|--/=\--
|-{ _ }-'
printf "%s" "$k"
}


knightDarkPrint
knightLightPrint
pawnLightPrint
pawnDarkPrint
echo
bishopLightPrint
echo
bishopDarkPrint
echo 
rookLightPrint
echo
rookDarkPrint
echo 
queenLightPrint
echo 
queenDarkPrint
echo
kingDarkPrint
echo 
kingLightPrint

pawnRowPrint
backRankPrint

echo
echo


board=$'
 _______________________________________________________________________________
|---------|         |---------|    w    |--- + ---|         |---------|         |
|--_---_--|   ,     |--- o ---|   w-w   |---[+]---|    o    |---,-----|  _   _  |
|--|[_]|--|  /,`\   |---(+)---|   (~)   |--((-))--|   (+)   |--/,`\---|  |[_]|  |
|---[=]---|  ` ( /  |---/|\---|   \|/   |---/=\---|   /|\   |--` ( /--|   [=]   |
|--[ _ ]--|   { _ } |--{ _ }--|  { _ }  |--{ _ }--|  { _ }  |---{ _ }-|  [ _ ]  |
|         |---------|         |---------|         |---------|         |---------|
|   ( )   |---( )---|   ( )   |---( )---|   ( )   |---( )---|   ( )   |---( )---|
|   / \   |---/ \---|   / \   |---/ \---|   / \   |---/ \---|   / \   |---/ \---|
|  { _ }  |--{ _ }--|  { _ }  |--{ _ }--|  { _ }  |--{ _ }--|  { _ }  |--{ _ }--|
|         |---------|         |---------|         |---------|         |---------|
|---------|         |---------|         |---------|         |---------|         |
|---------|         |---------|         |---------|         |---------|         |
|---------|         |---------|         |---------|         |---------|         |
|---------|         |---------|         |---------|         |---------|         |
|---------|         |---------|         |---------|         |---------|         |
|         |---------|         |---------|         |---------|         |---------|
|         |---------|         |---------|         |---------|         |---------|
|         |---------|         |---------|         |---------|         |---------|
|         |---------|         |---------|         |---------|         |---------|
|         |---------|         |---------|         |---------|         |---------|
|---------|         |---------|         |---------|         |---------|         |
|---------|         |---------|         |---------|         |---------|         |
|---------|         |---------|         |---------|         |---------|         |
|---------|         |---------|         |---------|         |---------|         |
|---------|         |---------|         |---------|         |---------|         |
|         |---------|         |---------|         |---------|         |---------|
|         |---------|         |---------|         |---------|         |---------|
|         |---------|         |---------|         |---------|         |---------|
|         |---------|         |---------|         |---------|         |---------|
|         |---------|         |---------|         |---------|         |---------|
|---------|         |---------|         |---------|         |---------|         |
|---( )---|   ( )   |---( )---|   ( )   |---( )---|   ( )   |---( )---|   ( )   |
|---/ \---|   / \   |---/ \---|   / \   |---/ \---|   / \   |---/ \---|   / \   |
|--{ _ }--|  { _ }  |--{ _ }--|  { _ }  |--{ _ }--|  { _ }  |--{ _ }--|  { _ }  |
|---------|         |---------|         |---------|         |---------|         |
|         |---------|         |----w----|    +    |---------|         |---------|
|  _   _  |-- , ----|    o    |---w-w---|   [+]   |--- o ---|   ,     |--_---_--|
|  |[_]|  |--/,`\---|   (+)   |---(~)---|  ((-))  |---(+)---|  /,`\   |--|[_]|--|
|   [=]   |--` ( /--|   /|\   |---\|/---|   /=\   |---/|\---|  ` ( /  |---[=]---|
|  [ _ ]  |---{ _ }-|  { _ }  |--{ _ }--|  { _ }  |--{ _ }--|   { _ } |--[ _ ]--|
 _______________________________________________________________________________'

printf "%s" "$board"
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

