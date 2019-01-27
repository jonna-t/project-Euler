##problem-50.pl

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
  @primes;
}

sub isPrime {	##returns primes
        my $number = shift;
	if ($number < 0) { return 0; }
        for my $i (2..int(sqrt($number))) {
                if ($number % $i == 0) { return 0; }
        }
        return 1;
}

@a=Esieve(1000);
for($i=0;$i<=20;$i++){
$sum += $a[$i];
$count++;
print "$count $sum\n";
}
print $sum."\n";
print "yes" if isPrime($sum)==1;
print "@a";




