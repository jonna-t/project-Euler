$countto = 4;

$ok = 0;
$n = 2;
$countup = 0;
while (! $ok) {
    $c = 0;
    %q = ();
    $r = $n;
    $max = sqrt($r);
    for ($i = 1; $i <= $max; $i++) {
        if ($n % $i == 0) {
            $b = $r / $i;
            if (isprime($i) && ! ($q{$i})) {
                $c++;
                $q{$i} = 1;
            }
            if (isprime($b) && ! ($q{$b})) {
                $c++;
                $q{$b} = 1;
            }
            last if ($c > $countto);
        }
    }
    
    if ($c == $countto) {
        $countup++;
    } else {
        $countup = 0;
    }
    #print "$n: $c\n";
    $n++;
    $ok = 1 if ($countup == $countto);
}
print "$n - $countto = " . ($n - $countto) . "\n";

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