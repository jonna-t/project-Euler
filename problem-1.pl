
sub sum
{
	my @sum = @_;

	for(@sum){
		$sum=$sum+$_;
	}
	return $sum;
}


for($i=2;$i<1000;$i++){
	if($i%3==0){
		push(@array,$i);
	}
	if($i%5==0){
		push(@array,$i);
	}
	
	#print $i."\n";
}
#=cut1
my @unique;
my %seen;
 
foreach my $value (@array) {	##treat each element in the array as a separate entity
  if (! $seen{$value}++ ) {
    push @unique, $value;
  }
}
## printing keys
=cut1
for $key (keys %seen) {
print "$key\n";
}
=cut1
## printing values
=cut2
for $value (values %seen){
print "$value\n";
}
=cut2
#=cut1
my @unique = keys { map { $_ => 1 } @array };

#print "@unique";
print "\n";
print sum(@unique);