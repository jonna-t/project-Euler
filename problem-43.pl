##problem-43.pl

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

sub divisible_check
{
my (@pan) = @_;
my @divi=();

my $two = $pan[1].$pan[2].$pan[3];
my $three = $pan[2].$pan[3].$pan[4];
my $five = $pan[3].$pan[4].$pan[5];
my $seven = $pan[4].$pan[5].$pan[6];
my $eleven = $pan[5].$pan[6].$pan[7];
my $thirteen = $pan[6].$pan[7].$pan[8];
my $seventeen = $pan[7].$pan[8].$pan[9];

if($two%2==0){
	if($three%3==0){
		if($five%5==0){
			if($seven%7==0){
				if($eleven%11==0){
					if($thirteen%13==0){
						if($seventeen%17==0){
							push(@divi,@pan);
						}
					}
				}
			}
		}
	}
}

return @divi;

}



for($i=1;$i<10000000;$i++){
	if(pandigital($i)==1){
	@pan = split(//,$i);
	print divisible_check(@pan);
	print "\n";
	}
}