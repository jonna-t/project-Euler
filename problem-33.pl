##problem-33.pl

#The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify
#it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

#We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
#There are exactly four non-trivial examples of this type of fraction, less than one in value, 
#and containing two digits in the numerator and denominator.

#If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

#!/usr/bin/perl

for ($i = 1; $i <10; $i++) {
  for ($j = 1; $j < 10; $j++) {
    for ($k = 1; $k < 10; $k++) {
      for ($l = 1; $l < 10; $l++) {
        $res = int($i . $j) / int($k . $l);
        if ($res < 1) {
          if ($i == $k && ($j / $l == $res)) {
		  push(@numerator, "$i"."$k");
			push(@denominator, "$i"."$l");
            print "$i$k / $j$l\n";
          }
          if ($i == $l && ($j / $k == $res)) {
		  push(@numerator, "$i"."$k");
			push(@denominator, "$i"."$l");
            print "$i$k / $j$l\n";
          }
          if ($j == $k && ($i / $l == $res)) {
			push(@numerator, "$i"."$k");
			push(@denominator, "$i"."$l");
            print "$i$k / $j$l\n";
          }
          if ($j == $l && ($i / $k == $res)) {
		  push(@numerator, "$i"."$k");
			push(@denominator, "$i"."$l");
            print "$i$k / $j$l\n";
          }
        }
      }
    }
  }
} 

$numerator_prod=1;
for $numerator (@numerator){
$numerator_prod=$numerator_prod*$numerator;
}
print $numerator_prod."\n";

$denominator_prod=1;
for $denominator (@denominator){
$denominator_prod=$denominator_prod*$denominator;
}
print $denominator_prod."\n";

@numeratorfactors=factors($numerator_prod);
#print "@numeratorfactors"."\n\n";
@denominatorfactors= factors($denominator_prod);
#print "@denominatorfactors\n";

$nlength=@numeratorfactors;

for($k=$nlength;$k>0;$k--){
	for(@denominatorfactors){
		push(@max,$_) if $_==$numeratorfactors[$k];
	}
}

$max = shift @max;

#print $numerator_prod/$max."\n";
print "denominator = ".$denominator_prod/$max;

#	for($l=0;$l<$nlength;$l++){
#	print $numeratorfactors[$l]."\n";

	
	
	
sub factors
{
my ($n) = @_;
my @array=();
	for(my $i=1;$i<$n;$i++){
		if($n%$i==0){
		push(@array,$i);
		}
	}
	return @array;
}