#!/bin/bash

# Functions
lightEdge () {
    ed=$' ----------------------------------WHITE------------------------------------ \n'
    printf "%s" "$ed"
}
darkEdge () {
    ed=$' ----------------------------------BLACK------------------------------------ \n'
    printf "%s" "$ed"
}
edge () {
    ed=$' --------------------------------------------------------------------------- \n'
    printf "%s" "$ed"
}
rightEdge () {
    ed=$'|\n'
    printf "%s" "$ed"
}
darkSquarePiece () {
    dark=$'|XXXXXXXX'
    printf "%s" "$dark"
}
lightSquarePiece () {
    light=$'|         '
    printf "%s" "$light"
}
lightSquarePieceChoice () {
    light=$'|  |???|  '
    printf "%s" "$light"
}
darkSquarePieceChoice () {
    dark=$'|XX|??|XX'
    printf "%s" "$dark"
}
randomSquare () {
    # need to write code to generate a random square value
    echo $(( $RANDOM % 64 + 1 ))
}
num2x () {
    num=$1
    xxx=([1]=a [2]=b [3]=c [4]=d [5]=e [6]=f [7]=g [8]=h)
    xx=$(($num%8))
    x=${xxx[xx]}
    echo $x
}
num2xxx () {
    
    xxx=([0]=aa [1]=a [2]=b [3]=c [4]=d [5]=e [6]=f [7]=g [8]=h)
    for i in {0..8}
    do 
        if [[ ${xxx[i]} = $1 ]]
        then 
        echo $i
        fi; 
    done;
}
num2y () {
    num=$1
    y=$((9 - ($num+8-1)/8 ))
    echo $y
}
col2group () {
    if [[ ("$1" -eq 1 || "$1" -eq 2) ]]; then
        g=1
        echo $g
    elif [[ ("$1" -eq 3 || "$1" -eq 4) ]]; then
        g=2
        echo $g
    elif [[ ("$1" -eq 5 || "$1" -eq 6) ]]; then
        g=3
        echo $g
    else
        g=0
        echo $g
    fi
}

printRow () {
    
    color=$1
    colNum=$2
    flag=$3
    g=$(col2group $colNum)

   for v in {1..16}
   do
        

        case $color in
            dark)
            if [[ ("$flag" -eq 0) ]]; then
                darkSquarePiece
                lightSquarePiece
            elif  [[ ("$v" -lt 13 && "$v" -gt 4) ]]; then

                if [[ ($(($v%4)) -eq "$g") ]]; then # relate 1-16 ... v(1-16) col(1-8) 1,5,9,13 - 1,2 | 2,6,10,14 - 3,4 | 3,7,11,15 - 5,6 | 4,8,12,16 - 7, 8

                    if [[ ($(($colNum%2)) -eq 1) ]]; then
                        darkSquarePieceChoice
                        lightSquarePiece
                    else
                        darkSquarePiece
                        lightSquarePieceChoice
                    fi


                else
                    darkSquarePiece
                    lightSquarePiece
                fi

            else
                darkSquarePiece
                lightSquarePiece
            fi
            ;;

            light)
            if [[ ("$flag" -eq 0) ]]; then
                lightSquarePiece
                darkSquarePiece
            elif  [[ ("$v" -lt 13 && "$v" -gt 4) ]]; then
                
                if [[ ($(($v%4)) -eq $g) ]]; then

                    if [[ ($(($colNum%2)) -eq 1) ]]; then
                        lightSquarePieceChoice
                        darkSquarePiece
                    else
                        lightSquarePiece
                        darkSquarePieceChoice
                    fi


                else
                    lightSquarePiece
                    darkSquarePiece
                fi

            else
                lightSquarePiece
                darkSquarePiece
            fi
            ;;
        esac

        if (( $v % 4 == 0 ))
            then
                rightEdge
        fi
        if (( $v % 16 == 0 ))
        then
            edge
        fi
        

    done
}

printBoard () {
    colNum=$1
    y=$2
    # start making the board...
    darkEdge
    edge
    for i in {1..8}
    do    
        # this will change when I flip the board
        if [[ $(($i%2)) -eq 0 ]]; then color=light; else color=dark; fi
        
        # got to be a better way but I know this works haha
        ii=$((9 - (($i*8)+8-1)/8 ))
        if [[ "$ii" -eq "$y" ]]; then flag=1; else flag=0; fi
        
        
        printRow $color $colNum $flag
        
    done
    lightEdge
}



# The Game
echo Welcome to the Chess-Board Quiz-Game
echo ------------------------------------
echo Insert Random Art Here...
echo "Enter 'quit' to quit!"
echo "what square is this? ('quit' to quit)"
echo ____________________________________________________________________________

# game
flag=1
while [[ "$flag" -eq 1 ]]
do

    num=$(randomSquare)
    # echo $num
    x=$(num2x $num)
    y=$(num2y $num)
    # echo $x $y
    colNum=$(num2xxx $x)
    printBoard $colNum $y

    read
    ans=${REPLY}
    echo $ans

    if [ $ans = $x$y ]; then

        echo "YOU WON!"
        echo "Enter 'quit' to quit!"
        flag=1
        

    elif [ "$ans" = "quit" ]; then
        
        flag=0
        
    else
        echo not quite, try again...
        echo "Enter 'quit' to quit!"
        flag=1

    fi




done

printBoard 8 8