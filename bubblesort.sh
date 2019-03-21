i=0
arr=()
while (( i < $1 ))
do
	arr+=("$RANDOM")
	(( i++ ))
done

bubble_sort() {
local len=${#arr[@]}
for (( i = 0; i<len; i++ ))
do
	for (( j = 0; j<len-i-1; j++ ))
	do
	if (( ${arr[$j]} > ${arr[$(( $j+1 ))]} ))
	then
		local temp=${arr[$j]}
		arr[$j]=${arr[$(( $j+1 ))]}
		arr[$(( $j+1 ))]=$temp
		fi
	
	done
done


}
bubble_sort 

echo ${arr[@]}

