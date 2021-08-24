#bin/bash
#Bin -> Dez
bintodez () {

#Regex Pattern Test 0-1
re='^[0-1]+$'
if ! [[ $num =~ $re ]] ; then
   echo "Sry, that's no valid number :=("; exit 1
fi

  finalcount=0
arg=$(echo $1 | rev)


for (( i = 0; i < ${#arg}; i++ )); do
pot=$((2**i))
num=${arg:i:1}

finalcount=$[finalcount+num*pot]

done

echo "Your number: " $finalcount
}

#Dez -> Bin
deztobin () {
d=$1

until [ $d -eq 1 ]; do
  if [ $(($d%2)) == 0 ]; then
  
    b+=0
    let d=d/2

  else

    b+=1
    let d=(d-1)/2

  fi

done

  b+=1

echo "Your number: " $(echo $b | rev)
}


clear
echo "What type do you want?"
echo "0 -> Bin - Dez"
echo "1 -> Dez - Bin"

read type

clear
read -p "Enter your number: " num
clear

#Regex Pattern Check Integer (0-9)
re='^[0-9]+$'
if ! [[ $num =~ $re ]] ; then
   echo "Sorry, thats no number.. :=("; exit 1
fi

#Manage Convert type
  if [ $type == 0 ]; then
    bintodez $num
  elif [ $type == 1 ]; then
    deztobin $num
  else
    echo "Sry, this type is invalid!"
  fi

exit


