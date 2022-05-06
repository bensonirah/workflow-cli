#!/bin/bash


function trim() {
 echo "$1" | xargs
}
function psearch() {
	find $1 -type d -name '.git' | sed "s/.git//" | grep $2
}

function levelbatt(){
 echo  `upower -d | grep percentage |head -n 1 |awk -F':' '{print $2}' | xargs`
}
