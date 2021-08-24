read -p "Your number: " input  ; for (( i = 0; i < ${#input}; i++ )); do out=$[out+${input:i:1}] ; done ; echo $out
