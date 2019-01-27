#The decimal number, 585 = 1001001001 (binary), is palindromic in both bases.
#Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
#(Please note that the palindromic number, in either base, may not include leading zeros.)


%hash = ();

for($i=1;$i<1000000;$i++){
@yo = split(//,$i);
@diff = reverse(@yo);
$pal = join("",@diff);

	if ($i==$pal){
	#print $i."\n";
	$arg=sprintf("%b", $i);
	@split = split(//,$arg);
	@reverse = reverse(@split);
	$pal2 = join("",@reverse);
		if ($arg==$pal2){
		print "$i - $pal2 \n";
		$sum += $i;
		}
	}
}


print $sum."\n";