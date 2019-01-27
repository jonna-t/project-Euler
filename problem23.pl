##problem 23.pl

##PERFECT NUMBERS

sub factors
{
	my ($n) = @_;
	my @factors;
	for(my $i=2;$i<$n;$i++){
		if($n%$i==0){push(@factors, $i);}
	}
	if(sum(@factors)>$n){	##abundant_numbers
	return $n;
	}
	#if(sum(@factors)<$n){	##deficient numbers
	#print "deficient". $n."\n";
	#}
	#if(sum(@factors)==$n){	##perfect numbers
	#return $n."\n";
	#}
}
my $j=1;

$limit=300;

while($ans<$limit){	#124

$rtns = factors($j);

if ($rtns!=undef){				##filtering non-zero values
push(@abundant_numbers,$rtns);	##rtns == abundant_numbers

for(@abundant_numbers){
	$ans=$_+$rtns;
	print "$ans\n";
	if($ans>$limit){next;}
	for(my $n=$non[-1]+2;$n<$ans;$n++){
			if($n!=$ans){
			push(@non,$n);		
		}
	}
}
}
$j++;
}

print "@non";
print "\n\n\n\n";
print sum(@non);

sub sum
{
my (@array) = @_;
my $sum = 0;
for(@array){
$sum = $sum+$_;
}
return $sum;
}


