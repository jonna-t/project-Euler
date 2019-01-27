#! /usr/bin/perl
use strict;
use warnings;

sub permutation
{
    my $n = shift;
    my $p = 1;
    while ($n != 1)
    {
        $p *= $n;
        $n--;
    }
    
    return $p;
}

sub calculation
{
    my ($n, $r) = @_;
    return permutation($n) / (permutation($r) * permutation($n-$r)); 
}

print "Answer: ", calculation(40,20), "\n";