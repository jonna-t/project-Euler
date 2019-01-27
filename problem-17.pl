##PROBLEM 17 - PROJECT EULER

@array1 = qw{
1one	
2two	
3three	
4four	
5five	
6six	
7seven	
8eight	
9nine
};
@array2 = qw{	
10ten	
11eleven
12twelve
13thirteen
14fourteen
15fifteen
16sixteen
17seventeen
18eighteen
19nineteen
};
@array3 = qw{
20twenty
30thirty
40fourty
50fifty
60sixty
70seventy
80eighty
90ninety
};
##add 4
#1000onethousand

##1-9

for($i=1;$i<10;$i++){
$rtn = onetonine($i);
#print "$rtn\n";
push(@values, $rtn);
}

sub onetonine{
my ($i) = @_;

for(@array1){
if($_=~/$i/){
$_ =~ s/$i//;
return length($_);
}
}
}

for(@values){
$addition = $addition + $_;
}
print $addition . "\n" x 5;

##10-19

for($i=10;$i<20;$i++){
$return = tentonineteen($i);
#print "$return\n";
push(@values2, $return);
}

sub tentonineteen{
my ($i) = @_;

for(@array2){
if($_=~/^$i/){
$_ =~ s/^$i//;
return length($_);
}
}
}

for(@values2){
$adding = $adding + $_;
}
print $adding . "\n" x 5;

$total = $addition + $adding;
print $total . "\n";

##20-99

for($i=20;$i<100;$i+=10){
$rtnlength = tens($i) * 10;
print $rtnlength . "\n";
push(@values3, $rtnlength);
}

sub tens{
my ($i) = @_;

for(@array3){
if($_=~/$i/){
$_ =~ s/$i//;
return length($_);
}
}
}

for(@values3){
$add100 = $add100 + $addition + $_;
}
$fin = $add100 - 10;
$hun = 36+70+$fin;

print "$hun\n";
##100-1000
 

$r1 = 36*100; ##1-9 occuring 100 times
$r2 = 9*854;	#1-99 occurring 9 times
$r3 = 7*9;	##hundred mentioned 9 times with 7 letters
$r4 = 9*99*10;	##“hundred and” occurring 9*99 times with 10 letters

$result1 = $r1+$r2+$r3+$r4;
print $result1 . "\n";

print $result1+$hun+11 . "\n";
