##PROBLEM 22 -- names

## sum of each name * 


my $filename = 'C:\Users\j.turnbull\Desktop\Project Euler\p022_names.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
 ## create a complex data structure for the following problem
 
 @alphabet = qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);

my %alphabet;
@alphabet{@alphabet} = (1 .. $#alphabet+1);


while (($key, $value) = each(%alphabet)){
#print "$key - $value\n";
}

sub sum
{
my (@name) = @_;

for(@name){
$sum = $sum + $_;
}
return $sum;
}

sub splitter
{
	my ($ting) = @_;
	@name = split(//, $ting);
	my $sum=0;
		for(@name){
		$sum = $sum+$alphabet{$_};
		}
	return $sum;
}




while (my $row = <$fh>) {
  chomp $row;
    $row =~ s/\"//g;				##getting rid of the ""
  @array_split = split(/\,/, $row);	##splitting the string into an array
	@sorted = sort(@array_split);	##sorting the array
		for(@sorted){			
		$num++;
			push(@array, splitter($_));	
			print "$_  $num\n";
			print "Sum= " . splitter($_) . "	 Name no." . " $num\n";
			$product = splitter($_)*$num;
			print $product."\n";
				push(@sum, $product);	
		}
		#print $#sorted+1 . " names in the array" ."\n";
}

for(@sum){
$suma = $suma+$_;
}
print "\n" x 3;

print "The product sum of all numbers equals  " . $suma."\n";


#print "$alphabet{Z} $alphabet{U} $alphabet{L} $alphabet{M} $alphabet{A}";