##problem-44.pl

## http://www.divye.in/2012/07/how-do-you-determine-if-number-n-is.html


sub isPentagonal
{
my ($number) = @_;
    my $penTest = (sqrt(1 + 24 * $number) + 1.0) / 6.0;
    return $penTest == int($penTest);
}

my $result = 0;
$notFound = 1;
my $i = 1;
 
while ($notFound!=0) {
    $i++;
    my $n = $i * (3 * $i - 1) / 2;
 
    for (my $j = $i-1; $j > 0; $j--) {
        my $m = $j * (3 * $j - 1) / 2;
		
        if (isPentagonal($n-$m) && isPentagonal($n+$m)) {
            $result = $n-$m;
            $notFound = 1;
			print $result;
            last;
        }
    }
}

