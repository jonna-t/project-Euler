##problem 21

#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
#The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#Evaluate the sum of all the amicable numbers under 10000.

for($n=1; $n<10000; $n++){
##factors
#$n=220;				#$n=a
@a = factors($n);	
$rtn = sum(@a);		#$rtn=b
@a1 = factors($rtn);
$rtn1 = sum(@a1);	#$n=b

if ($n == $rtn1 && $rtn!=$rtn1){
print "$n\n";
push(@leptons, $n);
}
}
print sum(@leptons);

sub factors
{
my ($n) = @_;
my @array;
my $sum=0;


for($i=1; $i<$n; $i++){
if($n%$i==0){
#print "$i ";
push(@array, $i);
}
}
return @array;
}

sub sum
{
my (@values) = @_;
my $sum;
for(@values){
$sum = $_ + $sum;
}
return $sum;
}

