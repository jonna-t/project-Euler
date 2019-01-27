##problem-51.pl

@poss = 10000..100000;
#print "@poss";

for(@poss){
	push(@new,$_) if prime_checker($_)==1;
}

print "@new";

sub prime_checker
{
	my ($number) = @_;
	
	@array = ();
	
	for($j=2;$j<$number;$j++){
		if($number%$j!=0){
			next;
		}else{
			push(@array,$j);;
		}
	}
	if(!@array){
		return 1;
	}

}