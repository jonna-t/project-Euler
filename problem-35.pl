##problem 35

for(my $i=2;$i<100;$i++){
	if (checker($i)==1){
	#push(@primes,$i);
	@array = split(//,$i);
	
		$combo1 = $array[0].$array[1].$array[2].$array[3].$array[4].$array[5];
		$combo2 = $array[1].$array[2].$array[0].$array[5].$array[3].$array[4];
		$combo3 = $array[2].$array[0].$array[1].$array[4].$array[5].$array[3];
		$combo4 = $array[4].$array[5].$array[3].$array[2].$array[0].$array[1];
		$combo5 = $array[5].$array[3].$array[4].$array[0].$array[1].$array[2];
		$combo6 = $array[3].$array[4].$array[5].$array[1].$array[2].$array[0];
		print $i."\n";
		push(@special_primes,$i) if checker($combo1)==1 && checker($combo2)==1 && checker($combo3)==1 && checker($combo4)==1 && checker($combo5)==1 && checker($combo6)==1;
	}
}

print "\n\n\n\n";
$primes = @special_primes;
print $primes;

sub checker
{
my ($num) = @_;

	for(my $j=2;$j<$num;$j++){
		return 0 if $num%$j==0;
	}
	return 1;
}


