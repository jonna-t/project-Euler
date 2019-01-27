##problem-5

#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

my $x = 4;

while($rtn_val!=1){
	$x++;
	$rtn_val = &factor_checker($x);
}
print "$x\n";

sub factor_checker {
	my ($x) = @_;
	my @array;

	for($i=2; $i<21; $i++){
		$r = $x%$i;
		push(@array, $r);
	}
##checking if array has a zero
	my $sum = 0;
	for (@array){
		$sum  = $sum + $_;
	}
	if ($sum==0){
		return 1;
	}
}
