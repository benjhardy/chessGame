#!/bin/bash

# Variables
board=$'_______________________________________________________________________________________

       /XXXXXXXXXX|   |XXXX|
      /----------/    |XXXX|
     /XXXXXXXXX/      |XXXX|
    /XXX/             |XXXX|
   /XXX/              |XXXX|
  /XXX/               |XXXX| 
 /XXX/                |XXXX|                -------------    |--------| |--------|
|XXX|                 |XXXX|//////////x|  ///XXXXXXXXXX\\\\\   |XXXXXXX/  |XXXXXXX/
|XXX|                 |XXXX|/////////XX| |XXXXX|    |XXXXX|  |==|       |==|
 \XXX\                |XXXX|       |XXX| |XXXXX|    |XXXXX|  |==|       |==|  
  \XXX\               |XXXX|       |XXX| |XXXXXXXXXXXXXXX/   |XXXXXXXX| |XXXXXXXX|
   \XXX\              |XXXX|       |XXX|  \-X-X-X-X-X-X-/    |XXXXXXXX| |XXXXXXXX|
    \XXX\             |XXXX|       |XXX|   \XX\                    |==|       |==|
     \XXXXXXXXXX\     |XXXX|       |XXX|    \XX\                   |==|       |==| 
      \----------\    |XXXX|       |XXX|     \XX\-X-X-X-X     /XXXXXXX|  /XXXXXXX|
       \XXXXXXXXXX|   |XXXX|       |XXX|      \XX\-X-X-X     |--------| |--------|

_______________________________________________________________________________________\n'

printf "%s" "$board"