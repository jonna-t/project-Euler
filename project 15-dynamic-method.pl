

##21x21 grid points
$gridSize = 20;
my @matrix;
 
$matrix[$gridSize+1][$gridSize+1];
 
##Setting up the grid with boundary conditions
for (my $i = 0; $i < $gridSize; $i++) {
    $matrix[$i][$gridSize] = 1;
    $matrix[$gridSize][$i] = 1;
}
for ($i = $gridSize - 1; $i >= 0; $i--) {
    for ($j = $gridSize - 1; $j >= 0; $j--) {
        $matrix[$i][$j] = $matrix[$i+1][$j] + $matrix[$i][$j+1];
    }
}

