

$power=5;
$i=1;



while($limit<6){

$i++;
@digits=split(//,$i);



my $sum=0;
for(@digits){

$sum = $sum + $_**$power;
}

push(@number,$sum) if $sum == $i;

$limit=@number;

}
print "\n"x3;
print "@number\n";

for(@number){
$sum = $sum + $_;
}

print "The sum of numbers = ".$sum;
