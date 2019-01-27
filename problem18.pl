### PROBLEM 18

#use Data::Dumper;

my $path = 'C:\Users\j.turnbull\Desktop\Project Euler\problem18text.txt';
open(my $fh, '<:encoding(UTF-8)', $path)
  or die "Could not open file '$path' $!";
  
  my $i=0;

while ($line = <$fh>){
   chomp $line;
   @a = split(/\s+/, $line);
   $array[$i] =	[@a];			
	$i++;
}

$y = 0;
$x = 0;

$choice = $array[$x][$y];
print $choice."\n";

while($y<16){
$y++;
$choice = $array[$y][$x];
if ($choice > $array[$y][$x+1]){
$choice = $array[$y][$x];
}else{
$x++;
$choice = $array[$y][$x];
}
push(@results, $choice);
}
print &sum(@results) + 75;

##iterating through 2-d array
for my $row (@array) {
    for my $col (@$row) {
#        print $col . ", ";
    }
#    print 'done with this row' . "\n";
	push(@sum, $r);
}

sub sum {
my (@sum)=@_;
for(@sum){$sum = $sum + $_;}
return $sum;
}


#$answer = 75+95+47+87+82+75+73+28+83+47+43+73+91+67+98;
#print $answer;

	
	