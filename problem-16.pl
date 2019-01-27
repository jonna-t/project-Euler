
use bigint;
$r = 2**1000;

#$new = sprintf("%.f", $r); 
@array = split(//, $r);

for(@array){
$result = $result + $_;
}


print "@array\n";
print $result; 