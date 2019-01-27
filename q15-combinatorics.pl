##problem 15 solved by combinatorics

$gridSize = 20;
$paths = 1;
for ($i = 0; $i < $gridSize; $i++) {
    $paths *= (2 * $gridSize) - $i;
    $paths /= $i + 1;
}
print $paths;