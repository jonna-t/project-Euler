##problem 52


sub compareArray
{
	my ($num, $double, $treble, $quad, $five, $six) = @_;
	
	my @digits = ();
	my @double = ();
	my @treble = ();
	my @quad = ();
	my @five = ();
	my @six = ();
	
	@digits=split(//,$num);
	@double=split(//,$double);
	@treble=split(//,$treble);
	@quad=split(//,$quad);
	@five=split(//,$five);
	@six=split(//,$six);
	
	@digits = sort { $a cmp $b } @digits;
	@double = sort { $a cmp $b } @double;
	@treble = sort { $a cmp $b } @treble;
	@quad = sort { $a cmp $b } @quad;
	@five = sort { $a cmp $b } @five;
	@six = sort { $a cmp $b } @six;
	
	$digits = join("",@digits);
	$double = join("",@double);
	$treble = join("",@treble);
	$quad = join("",@quad);
	$five = join("",@five);
	$six = join("",@six);

	if($digits==$double){
		if($digits==$treble){
			if($digits==$quad){
				if($digits==$five){
					if($digits==$six){	
						return 1;
					}
				}
			}
		}
	}
}


#125874 251748

for(my $i=2;$i<200000;$i++){
my $double=0;
	$double = $i*2;
	$treble = $i*3;
	$quad = $i*4;
	$five = $i*5;
	$six = $i*6;

	if (compareArray($i, $double, $treble, $quad, $five, $six)==1){
		print "$i $double\n";
	}
		
}

