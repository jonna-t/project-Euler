#problem-40.pl


sub pandigital {
    my $n = $_[0];
    my $length = length($n);

    if ($length < 1 || $length > 9) {
        return 0;
    }

    my %digits;

    while ($n >= 1) {
        $digits{$n % 10}++;
        $n /= 10;
    }

    if ($length != keys(%digits)) {
        return 0;
    }

    while (my ($digit, $count) = each(%digits)) {
        if ($digit < 1 || $digit > $length || $count > 1) {
            return 0;
        }
    }

    return 1;
}


sub Esieve_vector {
  my($end) = @_;
  return @{([],[],[2],[2,3],[2,3])[$end]} if $end <= 4;
  $end-- if ($end & 1) == 0; # Ensure end is odd
 
  my ($sieve, $n, $limit, $s_end) = ( '', 3, int(sqrt($end)), $end >> 1 );
  while ( $n <= $limit ) {
    for (my $s = ($n*$n) >> 1; $s <= $s_end; $s += $n) {
      vec($sieve, $s, 1) = 1;
    }
    do { $n += 2 } while vec($sieve, $n >> 1, 1) != 0;
  }
  my @primes = (2);
  do { push @primes, 2*$_+1 if !vec($sieve,$_,1) } for (1..int(($end-1)/2));
  @primes;
}


@primes = Esieve_vector(987654321);
my $result = 0;


while(1){

	last if pandigital($primes[-$n])==1;
	
$n++;
}
print $primes[-$n]."\n" if pandigital($primes[-$n])==1;



