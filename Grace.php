#!/usr/bin/php
<?php

/*
	C'est un commentaire. Si si, j'te jure.
*/

define('STRING', '#!/usr/bin/php%4$c<?php%4$c%4$c/*%4$c%3$cC%2$cest un commentaire. Si si, j%2$cte jure.%4$c*/%4$c%4$cdefine(%2$cSTRING%2$c, %2$c%1$s%2$c);%4$c%4$cfunction write_in($file){ fprintf($file, STRING, STRING, 39, 9, 10); }%4$c%4$cfunction ft(){%4$c%3$c$file=fopen(%2$cGrace_kid.php%2$c, %2$cw%2$c);%4$c%3$cwrite_in($file);%4$c%3$cfclose($file);%4$c}%4$c%4$cft();%4$c%4$c?>');

function write_in($file){ fprintf($file, STRING, STRING, 39, 9, 10); }

function ft(){
	$file=fopen('Grace_kid.php', 'w');
	write_in($file);
	fclose($file);
}

ft();

?>