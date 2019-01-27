my $target  = 1000;
$ways = 0;
 
for (my $a = $target; $a >= 0; $a -= 200) {
    for (my $b = $a; $b >= 0; $b -= 100) {
        for (my $c = $b; $c >= 0; $c -= 50) {
            for (my $d = $c; $d >= 0; $d -= 20) {
                for (my $e = $d; $e >= 0; $e -= 10) {
                    for (my $f = $e; $f >= 0; $f -= 5) {
                        for (my $g = $f; $g >= 0; $g -= 2) {
                            $ways++;
                        }
                    }
                }
            }
        }
    }
}
print $ways;

