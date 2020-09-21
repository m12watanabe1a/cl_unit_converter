# Convert celsius to kelvin
function c2k(){
  source .zconstants
  if [[ "$1" = <-> ]]; then
    let num=$1
    let result=$(( num - K2C ))
    printf "%.2f -> %.2f\n" $num $result
    printf "%.2f" $result | pbcopy
  else
    echo "$1 is not a number"
    return -1
  fi
}
