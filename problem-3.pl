

for ($i=1; $i<1000; $i++){
for ($j=1; $j<1000; $j++){
$product = $i * $j;
if ($product == reverse($product)){
#print "$product\n";
push(@array, $product);
}
}
}

print max(@array);

sub max {
    my ($max, @vars) = @_;
    for (@vars) {
        $max = $_ if $_ > $max;
    }
    return $max;
}