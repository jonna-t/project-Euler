
#We are looking for an 8 member family. 
#The smallest member of the family has repeated digits 0, 1 or 2. Otherwise we wont be able to make an eight member family.

##A number can be divided by 3 if the digit sum is is divisible by 3

#Result	Number of repeated digits
##–		1	2	3	4	5
##0		4	4	10	4	4
##1		3	3	0	3	3
##2		3	3	0	3	3

##If the number we have has 1 repeated digit then the result n%3 will be 0, 4 times, 
##namely for 0, 3, 6 and 9. It will be 1 a total of 3 times and 2 a total number of 3 times.

## I assume that the prime will be 5 or 6 digits. It must have 3 digit being 0,1 or 2 excluding the last digit of the number.

##generate all patterns of repeating and non repeating digits and then loop
##Since I assume that we are looking for a 5-6 digit number we need to loop 
##the non repeating digits over 11-999 and we need to loop the repeating digits over 0-2.

sub get5digitPatterns() 
{
    my @retVal;
 
    $retVal[0] = (1,0,0,0,1);
    $retVal[1] = (0,1,0,0,1);
    $retVal[2] = (0,0,1,0,1);
    $retVal[3] = (0,0,0,1,1);
 
    return @retVal;
}
 
sub get6digitPatterns() 
{
    my @retVal;
 
    $retVal[0] = ( 1, 1, 0, 0, 0, 1 );
    $retVal[1] = ( 1, 0, 1, 0, 0, 1 );
    $retVal[2] = ( 1, 0, 0, 1, 0, 1 );
    $retVal[3] = ( 1, 0, 0, 0, 1, 1 );
    $retVal[4] = ( 0, 1, 1, 0, 0, 1 );
    $retVal[5] = ( 0, 1, 0, 1, 0, 1 );
    $retVal[6] = ( 0, 1, 0, 0, 1, 1 );
    $retVal[7] = ( 0, 0, 1, 1, 0, 1 );
    $retVal[8] = ( 0, 0, 1, 0, 1, 1 );
    $retVal[9] = ( 0, 0, 0, 1, 1, 1 );
 
    return @retVal;
}

sub fillPattern() {

	my (@pattern, $number) = @_;
	$length = @pattern;

    my $temp = $number;
 
    for (my $i = $length - 1; 0 <= $i; $i--) {
        if ($pattern[$i] == 1) {
            $filledPattern[$i] = $temp % 10;
            $temp /= 10;
        } else {
            $filledPattern[$i] = -1;
        }
    }
    return @filledPattern;
}
 
sub generateNumber() 
{
	my ($repNumber, @filledPattern) = @_;
	my $length = @filledPattern;
    my $temp = 0;
    for (my $i = 0; $i < $length; $i++) {
        $temp = $temp * 10;
        $temp += ($filledPattern[$i] == -1) ? $repNumber : $filledPattern[$i];
    }
    return $temp;
}

sub familySize()
{
	my ($repeatingNumber, @pattern) = @_;
    my $familySize = 1;
 
    for (my $i = $repeatingNumber + 1; $i < 10; $i++) {
        $familySize++ if isPrime(generateNumber($i, @pattern)) == 1;
    }
 
    return $familySize;
}

    sub isPrime() 
	{
		
		my ($n) = @_;
		
            return 0 if ($n <= 1);            
            return 1 if ($n == 2);            
            return 0 if ($n % 2 == 0);            
            return 1 if ($n < 9);            
            return 0 if ($n % 3 == 0);
            
            my $counter = 5;
            while (($counter * $counter) <= $n) {
                return 0 if ($n % $counter == 0);                
                return 0 if ($n % ($counter + 2) == 0);                
                $counter += 6;
            }

            return 1;
        }

my @fiveDigitPattern = get5digitPatterns();
my @sixDigitPattern = get6digitPatterns();
my $result;
 
for (my $i = 11; $i < 1000; $i += 2) {
 
    ##Only 1,3,7,9 are valid endings, as these are prime endings
    continue if ($i % 5 == 0);
 
    my @patterns = ($i < 100) ? @fiveDigitPattern : @sixDigitPattern;	
		
	my $stump = @patterns;
	my $length = $stump - 1;

                for(my $j = 0; $j < $length; $j++){
                    for(my $k = 0; $k <= 2; $k++){

                        ##Don't generate candidates with leading zero
                        continue if ($patterns[$j][0] == 0 && $k == 0);
                        
                        my @pattern = fillPattern($patterns[$j], $i);
                        my $candidate = generateNumber($k, pattern);
                                                
                        if ($candidate < $result && isPrime($candidate)) {
                            if (familySize($k, pattern) == 8)
                                $result = $candidate;                                                            
                            last;                            
                        }
                    }                   
                }
            }
	
}