#!/usr/bin/php
<?php

define('STRING', '#!/usr/bin/php%4$c<?php%4$c%4$cdefine(%2$cSTRING%2$c, %2$c%1$s%2$c);%4$c%4$c%4$c$x = %3$d;%4$c%4$cif ($file=fopen(%2$cSully_5.php%2$c, %2$cx%2$c)) { $x++; }%4$celse {$file=fopen(%2$cSully_%2$c . ($x - 1) . %2$c.php%2$c, %2$cw%2$c); }%4$c%4$cfprintf($file, STRING, STRING, 39, $x - 1, 10);%4$c%4$cif ($x > 1) { system(%2$cphp Sully_%2$c . ($x - 1) . %2$c.php%2$c); }%4$c%4$c?>');


$x = 5;

if ($file=fopen('Sully_5.php', 'x')) { $x++; }
else {$file=fopen('Sully_' . ($x - 1) . '.php', 'w'); }

fprintf($file, STRING, STRING, 39, $x - 1, 10);

if ($x > 1) { system('php Sully_' . ($x - 1) . '.php'); }

?>