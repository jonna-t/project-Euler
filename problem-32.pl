##problem-32.pl


@range = (1,2,3,4,5,6,7,8,9);


for($a=1;$a<1000;$a++){
	for($b=1;$b<10000;$b++){
	## split a and b
	@a=split(//,$a);
	@b=split(//,$b);
	$r=$a*$b;
	$digits=join($r,$a,$b);
	
				
	if(length($digits)==9){
		if($digits=~s/$range[0]//g){
			if($digits=~s/$range[1]//g){
				if($digits=~s/$range[2]//g){
					if($digits=~s/$range[3]//g){
						if($digits=~s/$range[4]//g){
							if($digits=~s/$range[5]//g){
								if($digits=~s/$range[6]//g){
									if($digits=~s/$range[7]//g){
										if($digits=~s/$range[8]//g){
										print "$a	$b	$r\n";
										
										push(@array,$r);
	}}}}}}}}}}
				
	}
}


my %hash=();
for(@array) {
    $hash{$_}=$num;
}

while (($key, $value) = each(%hash)){
$sum+=$key;
}

print $sum."\n";