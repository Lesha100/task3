<?php

header('Content-Type: text/plain');
$x = $_GET["x"] ?? null;
$y = $_GET["y"] ?? null;

if (
    !preg_match('/^[1-9]\d*$/', $x ?? '') || !preg_match('/^[1-9]\d*$/', $y ?? '')
) {
    echo 'NaN';
    exit;
}

$a = $x;
$b = $y;

while ($b !== '0') {
    $t = bcmod($a, $b);
    $a = $b;
    $b = $t;
}

echo bcmul(bcdiv($x, $a), $y);