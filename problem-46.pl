##problem-46.pl

##5777

sub Esieve {
  my $n = shift;
  my @composite;
  for my $i (2 .. int(sqrt($n))) {
    if (!$composite[$i]) {
      for (my $j = $i*$i; $j <= $n; $j += $i) {
        $composite[$j] = 1;
      }
    }
  }
  my @primes;
  for my $i (2 .. $n) {
    $composite[$i] || push @primes, $i;
  }
  return @primes;
  #return $primes[-1];
}

sub factors
{
my ($num) = @_;
my @array=();


	for($j=2;$j<$num;$j++){
		if($num%$j==0){
		push(@array,$j);
		#print $j." ";
		}
	}
	
	if(@array){
	push(@composite,$num);
		#print "$num factors are; ";
		#print "@array";
		#print "\n";
	}
	return @composite;
}


for($i=1;$i<=10000;$i+=2){
	@composite = factors($i);
}

for $comp (@composite){
	@check2 = check($comp);
	if(@check2){
		print "yes\n";
	}else{
		print "no  $comp\n";
		exit;
	}
}

#check(5777);


sub check
{
my ($comp) = @_;
	@primes=Esieve($comp);
	@check=();
	for $prime (@primes){
		$n=($comp-$prime)/2;
			$root = sqrt($n);
		if ($root!~m/\./) {
			push(@check,$root);
			#print "$comp = $prime $root "."\n";	
		}
	}
	return @check
}

