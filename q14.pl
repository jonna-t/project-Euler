

use strict;
use warnings;

my @vals;
my $n;

for($n=2;$n<1000000;$n++){
my $rtn = checker($n);

push(@vals, $rtn);
}

my %fields;
@fields{@vals} = (0 .. $#vals);
#while ((my $key, my $value) = each(%fields)){
#print "$key - $value\n";
#}

my $arrayno = max(@vals);
my $nth = $fields{$arrayno}+2;
print "The longest chain is from number $nth\n\n";


sub max {
    my ($max, @vars) = @_;
    for (@vars) {
        $max = $_ if $_ > $max;
    }
    return $max;
}


sub checker
{
my ($n) = @_;

my @returns;
#my $rtn_val;
my $number;
my $rtn_val = recursive($n);

while($rtn_val!=1){
$rtn_val = recursive($n);
#print "$rtn_val\n";
push(@returns, $rtn_val);
$number = @returns;
$n = $rtn_val;
}

my $value = $number+1;

return $value;
}

sub recursive
{
my ($start) = @_;

if($start%2==0){
my $even = $start/2;
return $even;
}else{
my $odd = (3*$start)+1;
return $odd;
}

}