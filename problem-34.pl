##problem-34.pl

#145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
#Find the sum of all numbers which are equal to the sum of the factorial of their digits.
#Note: as 1! = 1 and 2! = 2 are not sums they are not included.

for($i=1;$i<100000;$i++){
	@array=();
	my $sum=0;
	@array = split(//,$i);
		for(@array){
		$sum+=factorial($_);
		}
	if ($sum == $i){
	push(@sum,$sum);
	#print $sum."\n";
	}
}

for(@sum){
$sum=$sum+$_;
}
print $sum-3 ." answer\n";

sub factorial {
	my $n = shift;
	if ($n == 0) {return 1; }
	else { return $n * factorial($n - 1); }
}