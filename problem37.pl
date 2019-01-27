##problem-37

sub checker
{
my ($prime) = @_;	

	for(my $j=2;$j<$prime;$j++){
		return 0 if $prime%$j==0;
	}
	return 1;	
}

sub primechecker
{
my ($num)= @_;

my @array = split(//,$num);

	if(checker($num)==1){
	shift(@array);
	$num = join("",@array);
	}else{
	return 0;
	}

	if(@array){
	primechecker($num);
	}else{
	return 1;
	}
}

sub primechecker2
{
my ($num)= @_;

my @array = split(//,$num);

	if(checker($num)==1){
	pop(@array);
	$num = join("",@array);
	}else{
	return 0;
	}

	if(@array){
	primechecker2($num);
	}else{
	return 1;
	}
}

#$start = 3797;

for($i=10;$i<739399;$i++){		
	if(primechecker($i)==1){
		if(primechecker2($i)==1){
		push(@tructable_primes,$i) if $i !~ m/(^1)/ && $i !~ m/(1$)/;	##cant be 1 at the front or at the end
		}
	}
	print $i."\n";
}

print @tructable_primes."\n";
for(@tructable_primes){
	$sum+=$_;
}
print $sum;

#print "truncateable Prime" if primechecker(3797)==1;

