#problem-39.pl

#	a2 + b2 = c2 (1)

#	a + b+ c = p (2)

#	Thus we can rewrite (2) as c = p  – a – b and insert it into (1) yielding

#	a2 + b2 = (p-a-b)2 = p2 + a2 + b2 -2pa – 2pb + 2ab

#	Isolating b on one side of that equation yields

#	b = (p2 -2pa) / (2p-2a)

#So for all values of p and a where b is an integer is a Pythagorean triplet with the perimeter p...
#We can further make a bit of analysis on (1)
#if a and b is even so is c and thus p is even
#if a or b (but not both) is odd then c is odd and thus p is even
#if both a and b is odd then c is even and thus p is even
#Therefore we only need to check the numbers where p is even.
#Furthermore we know a < c and b < c and without loss of generality we can assume that a ≤ b (otherwise we could switch them) 
#which gives us that a ≤ b < c.  That implies  a < p/3 and thus we don’t need to check values higher than that.


$result = 0, $resultSolutions = 0;
 
for ($p = 2; $p <= 1000; $p += 2) {	##even
    $numberOfSolutions = 0;
    for ($a = 2; $a < ($p/3); $a++) {	##a ≤ b < c. That implies  a < p/3 and thus we don’t need to check values higher than that.
          if($p*($p-2*$a) % (2*($p-$a)) == 0){
              $numberOfSolutions++;
          }
      }
      if($numberOfSolutions > $resultSolutions){
        $resultSolutions = $numberOfSolutions;
        $result = $p;
    }
}
	
	print "$result\n";