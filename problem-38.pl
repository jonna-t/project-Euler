
#@array=(0,1,2,0,3,4,5,6,0,7,8,9);



sub pandigital
{
my ($num)=@_;

$tester=123456789;

my @arrays=();
my @array=();
my $product;

##test if pandigital
for(my $i=1;$i<1000000;$i++)
{
my $product=$num*$i;
my @array = split(//,$product);

		for(@array){
			return 0 if $_ =~ m/0/g;
		}

		push(@arrays,@array);
		@sorted = sort(@arrays);
		$var = join("",@sorted);

			if($var == $tester )
			{
				#print "@arrays\n";
				$mo=join("",@arrays);
				print $max=$mo."\n" if $mo>$max;
				next;
			}
}

}

for($n=1;$n<1000000;$n++){
pandigital($n);
}


print $max."\n";
