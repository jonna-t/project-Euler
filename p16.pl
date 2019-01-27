$result = 0;
 
$number = 2**1000;
 
while ($number > 0) {
    $result += $number % 10;
    $number /= 10;
}

print "$result";