##problem-37

sub checker
{
my ($num) = @_;	

	for(my $j=2;$j<$number;$j++){
		return 0 if $number%$j==0;
	}
	return 1;
	
}

sub truncatable_prime
{
my ($num) = @_;

	my @split=split(//,$num);
	$number=$num;
	
	for(@split){
	@split=split(//,$number);
	shift @split if checker($number)==1;
	$number=join("",@split);
	#print "$number ";
	}
	
	$length=@split;
	
	if($length==1){
	@split=split(//,$number);
	shift @split if checker($number)==1;
	$number=join("",@split);
	}
	$length=@split;
	return 1 if $length==0;

}



for($num=10;$num<4000;$num++){		

	if(truncatable_prime($num) == 1){
	print $num."\n";
	$r=reverse($num);
		my @rsplit=split(//,$r);
		$reverse=$r;

		for(@rsplit){
		@rsplit=split(//,$reverse);
		shift @rsplit if checker($reverse)==1;
		$reverse=join("",@rsplit);
		#print "$r   $reverse\n";
		}
		
		$rlength=@rsplit;
		#print $reverse."\n" if $rlength==1;
		
			if($rlength==1){
			
			}
		
		
		
	}
	
}




