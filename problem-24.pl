#!/usr/bin/perl
use strict;
use warnings;

#my @digits = (0 .. 9);
#print findNthPermutation(1000000, \@digits);
my @digits = (0,1,2,3,4,5,6,7,8,9);
print findNthPermutation(1000000, \@digits);



sub findNthPermutation {
	my $index = shift;						##index - is the number what you need to stop at
	my $arrayRef = shift;
	my @digits = sort(@$arrayRef);			##dereferencing the array
	my $nbDigits = $#digits + 1;			##adding one to the array index
	my $nbPermuts = factorial($nbDigits);	##10!
	
	if ($nbDigits == 1) {							
		return $digits[0];
	} else {
		my $step = $nbPermuts / $nbDigits;	##10!/10
		my %start;
		my %stop;
		for my $i (0..$#digits) {
			$start{$i} = 1 + $i*$step;
			$stop{$i} = ($i+1)*$step;
			
			if ($index >= $start{$i} && $index <= $stop{$i}) {
				my $firstChar = $digits[$i];
				my @subArray = grep { $_ != $firstChar } @digits;
					return $firstChar.findNthPermutation(($index-$start{$i}+1),\@subArray);
			}
		}
	}
}


sub factorial {
	my $nb = shift;
	if ($nb == 0) {return 1; }
	else { return $nb * factorial($nb - 1); }
}