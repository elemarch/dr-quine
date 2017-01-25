#!/usr/bin/php
<?php

/*
	COMMENT 1
*/

function printCode($string) { echo sprintf($string, 39,9,10,$string) ; }

/*
	COMMENT 2
*/

printCode('#!/usr/bin/php%3$c<?php%3$c%3$c/*%3$c%2$cCOMMENT 1%3$c*/%3$c%3$cfunction printCode($string) { echo sprintf($string, 39,9,10,$string) ; }%3$c%3$c/*%3$c%2$cCOMMENT 2%3$c*/%3$c%3$cprintCode(%1$c%4$s%1$c);%3$c%3$c?>');

?>