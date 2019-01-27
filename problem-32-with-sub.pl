##problem-32.pl


for($a=1;$a<100;$a++){
	for($b=1;$b<1000;$b++){

	## split a and b
	@a=split(//,$a);
	@b=split(//,$b);
	$r=$a*$b;
	$digits=join($r,$a,$b);
	
	$rtn=testRE($digits);
		print "$a	$b	$r\n" if $rtn == 1 && length($digits)==9;
		
	}
}


sub testRE($)
{
       my $tv = shift;
       
       my @required = (1,2,3,4,5,6,7,8,9);
       
	  
       foreach my $z (@required)
       {
              return 0 if($tv !~ /$z/);
       }
       
       return 1;
}

