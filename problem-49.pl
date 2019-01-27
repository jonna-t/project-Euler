##problem-49.pl

$| = 1;

%primes = ();
%equid = ();
print "Finding all primes...";
for ($i = 1000; $i < 9999; $i++) {
	if (isprime($i)) {
		$primes{$i} = 1;
	}
}
@pm = keys %primes;
print "Done (" . ($#pm + 1) . " total).\nFinding equidistant primes...";

foreach $k (@pm) {
	foreach $j (@pm) {
		$dist = $k - $j;
		if ($j < $k && $primes{$j - $dist} == 1) {
			$equid{"$k $j " . ($j - $dist)} = 1;
		}
	}
}
@pm = keys %equid;
print "Done (" . ($#pm + 1) . " total).  Finding permutations only...\n";

foreach $k (@pm) {
	($l,$m,$n) = sort split(' ',$k);
	$ok = 1;
	for ($i = 0; $i < length($l); $i++) {
		if ($m !~ substr($l,$i,1) || $n !~ substr($l,$i,1)) {
			$ok = 0;
			last;
		}
	}
	if ($ok) {
		for ($i = 0; $i < length($m); $i++) {
			if ($l !~ substr($m,$i,1) || $n !~ substr($m,$i,1)) {
				$ok = 0;
				last;
			}
		}
	}
	if ($ok) {
		for ($i = 0; $i < length($n); $i++) {
			if ($l !~ substr($n,$i,1) || $m !~ substr($n,$i,1)) {
				$ok = 0;
				last;
			}
		}
	}
	if ($ok) {
		print "$l / $m / $n\n";
	}
}
print "Done.\n";

exit;

sub isprime {
    my $num = $_[0];
    my $val = 'prime';
    if ($num =~ /^\d+$/ && $num >= 2) {
        my $mod = 2;
        my $div = int sqrt $num;
        while ($mod <= $div) {
            ($num % $mod) == 0 ? ($val = 'composite', last) : $mod++;
        }
    } else { $val = 'neither'; }
    if ($val eq 'prime') {
      return 1;
    } else {
      return 0;
    }
}