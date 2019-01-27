## project euler problem 2

	{ my @fib=(1);
  	  sub fib {
	    my $n = shift;
	    return $fib[$n] if defined $fib[$n];
	    return $fib[$n] = $n if $n < 2;
	    $fib[$n] = fib($n-1) + fib($n-2);
	  }
    }
	
sub sum
{
	my @sum = @_;

	for(@sum){
		$sum=$sum+$_;
	}
	return $sum;
}
	
my $i=1;
my $terminator = 4*(10**6);


#=cut1
while($value<$terminator){
	$value = fib($i);
	print $value."\n";
	if($value%2==0){	
		push(@fibb, $value);
	}
	$i++;
}

print sum(@fibb);
