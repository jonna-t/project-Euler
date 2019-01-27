

sub add_numbers
{
  my $array_ref =  shift;
}  

@numbers = (11,2,3,45);

$array_ref = add_numbers(\@numbers);
print $array_ref;