##problem-40


for($i=0;$i<1000000;$i++){
#print $i."\n";
push(@array,$i);
}
$digits=join("",@array);
@array=split(//,$digits);
$number = $array[1]*$array[10]*$array[100]*$array[1000]*$array[10000]*$array[100000]*$array[1000000];

print $number;