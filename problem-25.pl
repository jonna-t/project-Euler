
use bignum;


while(1){
$i++;
	$num = fib($i);
	print "length of characters ". splitter($num)."\n";
	last if splitter($num)==1000;
}

print $i;

sub splitter
{
	my ($split)=shift;
		@array = split(//,$split);
		$split = @array;
		return $split;
}

{ my @fib;
  	  sub fib {
	    my $n = shift;
	    return $fib[$n] if defined $fib[$n];
	    return $fib[$n] = $n if $n < 2;
	    $fib[$n] = fib($n-1) + fib($n-2);
	}
}