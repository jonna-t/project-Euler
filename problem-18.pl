#! /usr/bin/perl
use strict;
use warnings;
use List::Util qw ( max );

sub exampleTree()
{
    my @t = ();
    my $tree = <<EOF;
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23    
EOF

    my @rows = split(/\n/, $tree);
    for my $row (@rows) 
    {
        my $_t = [];
        for (split(/\s/, $row))
        {
            push(@$_t, $_);
        }
        push(@t, $_t);
    } 
    return @t;
}


sub printTree($)
{
    my $t = shift;
    for my $_elmt (@$t)
    {
        print " "x (scalar(@$t)-scalar(@$_elmt)+1);
        foreach my $_sub_elmt (@$_elmt) { print $_sub_elmt, " "; }
        print "\n";
    }   
}

sub calMaxPathCost($)
{
    my @t = @{$_[0]};
    for my $row (@t)
    {
        # no. of element in @$row = row number
        # there is a child row as long as it's not the last row
        if ( $#{$row} != $#t )
        {
            # save the children row, this is used to compare the cost of the path to the child
            my @children = @{$t[$#{$row}+1]};
            
            # now calculate the cost from parent to child
            for(my $p=0; $p <= $#{$row}; $p++)
            {
                for(my $c=$p; $c<=$p+1; $c++)
                {
                    # children
                    # here, i update the cost to reach the child,
                    # I update the tree when parent + child > current child
                    if ( ${$t[$#{$row}+1]}[$c] < $children[$c] + ${$t[$#{$row}]}[$p] )
                    {
                        ${$t[$#{$row}+1]}[$c] = $children[$c] + ${$t[$#{$row}]}[$p];
                    }
                }
            }
        }   
    }
    return max(@{$t[$#t]}); 
}

my @t = exampleTree();
my $maxCost = calMaxPathCost(\@t);
print "answer: ${maxCost}\n";       