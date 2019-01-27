##problem-51.pl

my $i = 10000;
my $digits = 5;


while($length<($digits+1)){
	
	my @array = ();
	@array=split(//,$i);
	print "$i\n" if prime_checker($i)==1;
	
	
	$length = length($i);
	$i++;
}

my $posible_values=@poss;
print "There are $posible_values possible values\n";


sub prime_checker
{
	my ($number) = @_;
	
	@array = ();
	
	for($j=2;$j<$number;$j++){
		if($number%$j!=0){
			next;
		}else{
			push(@array,$j);;
		}
	}
	if(!@array){
		return 1;
	}

}