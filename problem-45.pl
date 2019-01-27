##problem 45

sub triangle
{
my ($t) = @_;
$triangle = ($t*($t+1))/2;
return $triangle;

}

sub pentagonal
{
my ($p) = @_;
$pentagonal = ($p*(3*$p-1))/2;
return $pentagonal;
}


sub hexagonal
{
my ($h) = @_;
$hexagonal = $h*(2*$h-1);
return $hexagonal;
}


#print triangle(55385)." ";

for($num=1;$num<100000;$num++){
#$num=285;

	for($i=1;$i<$num;$i++){
	$tri = triangle($num);
	$pent = pentagonal($i);
		if($pent==$tri){
		#print "yo";
			for($j=1;$j<$num;$j++){
			$hex = hexagonal($j);
				if($hex==$tri){
				print $num." ".$i." ".$j."\n";
				}
			}
		}
	}
}