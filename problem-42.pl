##problem-42.pl

for($j=1;$j<100;$j++){
$r=($j**2+$j)/2;
#print "$r\n";
push(@triangle,$r);
}

sub triangle{
	my ($num) = @_;
	for(@triangle){
	return 1 if $num==$_;
	}
}


#sub factors
#{
#my ($n) = @_;
#my @array=();

#	for(my $i=2;$i<$n;$i++){
#		if($n%$i==0){
#		push(@array,$i);
#		}
	##}
###	pop(@array);
#	return @array;
#}


%alphabet = (
	"a", 1,
	"b", 2,
	"c", 3,
	"d", 4,
	"e", 5,
	"f", 6,
	"g", 7,
	"h", 8,
	"i", 9,
	"j", 10,
	"k", 11,
	"l", 12,
	"m", 13,
	"n", 14,
	"o", 15,
	"p", 16,
	"q", 17,
	"r", 18,
	"s", 19,
	"t", 20,
	"u", 21,
	"v", 22,
	"w", 23,
	"x", 24,
	"y", 25,
	"z", 26,
);


my $filename = 'p042_words.txt';
open(my $fh, '<:encoding(UTF-8)', $filename) or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
  chomp $row;
  $row =~ s/"//g;
  @words = split(/,/,$row);
}


for(@words){
splitter($_);
}


sub splitter
{
	my ($word) = @_;
	my $sum=0;
	my $r=0;
	
	$word=lc($word);
	@word=split(//,$word);
	
	for(@word){
	$sum += $alphabet{$_};
	}
	#print "Word sum = $sum \n";

	$r = $sum*2;

	#@factors = factors($r);
	
	push(@number, $sum) if triangle($sum) == 1;
	
}

$amount = @number;
print $amount;