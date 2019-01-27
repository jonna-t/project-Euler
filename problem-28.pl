##problem-28.pl

##insert grid size
print "Insert grid size: ";
my $gridsize = <STDIN>;

#calculate starting grid position 

$num=$gridsize**2;
$grid[$x][$y];
$sum=$sum+$num;

while($num!=1){

for($x=$gridsize-1;$x>=0;$x--){
$y=0;
$grid[$x][$y]=$num;
$num--;
}
print "Top left corner = ".$grid[0][0]."\n";
$sum = $sum+$grid[0][0];

for($y=1;$y<$gridsize;$y++){
$x=0;
$grid[$x][$y]=$num;
$num--;
}
print "Bottom left corner = ".$grid[0][$gridsize-1]."\n";
$sum = $sum+$grid[0][$gridsize-1];

for($x=1;$x<$gridsize;$x++){
$y=$gridsize-1;
$grid[$x][$y]=$num;
$num--;
}
print "Bottom right corner = ".$grid[$gridsize-1][$gridsize-1]."\n";
$sum = $sum+$grid[$gridsize-1][$gridsize-1];

for($y=$gridsize-2;$y>=0;$y--){
$x=$gridsize-1;
$grid[$x][$y]=$num;
$num--;
}
print "Top right corner = ".$grid[$gridsize-1][0]."\n";
$sum = $sum+$grid[$gridsize-1][0];
$num++;
#$num++;
#$diff=sqrt($num);
#$r=$diff - int($diff);
#print "$num\n" if $r==0;


$gridsize=$gridsize-2;
}
print $sum;

#print $grid[0][0]."\n";
#print $grid[$gridsize-1][0]."\n";
#print $grid[0][$gridsize-1]."\n";
#print $grid[$gridsize-1][$gridsize-1]."\n";

