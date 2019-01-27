##problem 29

use bignum;

for(my $a=2;$a<=100;$a++){
for(my $b=2;$b<=100;$b++){
push(@array,$a**$b);
}
}

%hash=();
for(@array){
$hash{$_} = $num;
$num++;
}
@array=();
while (($key, $value) = each(%hash)){
push(@array,$key);
}

@array = sort { $a <=> $b } @array;
#print "@array";
$number = @array;

print $number;
