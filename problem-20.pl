##problem 20

use bignum;

$input=100;
$prod=1;

for($n=$input; $n>0; $n--){
$prod = $prod*$n;
}
print $prod."\n";
@a = split(//, $prod);
for(@a){
$sum = $_+$sum;
}
print $sum;