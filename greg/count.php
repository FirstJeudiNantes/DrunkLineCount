<?php

$file = fopen($argv[1], 'r');
$size = filesize($argv[1]);
$sub_size = (int) $size / 10;

$string = fread($file, $sub_size);
$count = substr_count($string, "\n");
$chunk_size = $sub_size;
$ratios = [];
do
{
    $pl_string = chunk_split($string, $chunk_size);
    $pl_count = substr_count($pl_string, "\n");
    $ratio = $pl_count / $count;
    $ratios[] = $ratio;

    $chunk_size = (int) $chunk_size / sqrt(2);
} while ($ratio < 10);

$diffs = [];
for($i = 0; $i < count($ratios) - 1; $i++)
{
    $diffs[] = $ratios[$i] - $ratios[$i + 1];
}

asort($diffs, SORT_NUMERIC);
$diffs = array_keys($diffs);
$index = (float) $chunk_size * $diffs[0] / sqrt(2);


printf("%f\n", $size / $index);
