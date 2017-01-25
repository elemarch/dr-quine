all: Colleen Grace Sully Bonus

Colleen:
	@echo "\n\033[1;32mLaunching Colleen\033[0m"
	@echo "\033[1;34mCreating objects files...\033[0m"
	@clang -Wall -Werror -Wextra -c Colleen.c
	@echo "\033[1;34mCreating executable...\033[0m"
	@clang Colleen.o -o Colleen
	@echo "Executable name: \033[33m$ Colleen\033[0m"
	@echo "\033[1;34mExecute...\033[0m"
	@./Colleen
	@echo "\n\033[1;34mChecking differences\033[0m"
	@echo "\033[1;34m>\033[0m./Colleen > tmp_Colleen ; diff tmp_Colleen Colleen.c"
	@./Colleen > tmp_Colleen ; diff tmp_Colleen Colleen.c
	@read

Grace:
	@echo "\n\033[1;32mLaunching Grace\033[0m"
	@echo "\033[1;34mCreating objects files...\033[0m"
	@clang -Wall -Werror -Wextra -c Grace.c
	@echo "\033[1;34mCreating executable...\033[0m"
	@clang Grace.o -o Grace
	@echo "Executable name: \033[33m$ Grace\033[0m"
	@echo "\033[1;34mExecute...\033[0m"
	@./Grace
	@echo "\n\033[1;34mChecking differences\033[0m"
	@echo "\033[1;34m>\033[0m diff Grace_kid.c Grace.c"
	@diff Grace.c Grace_kid.c 2> /dev/null
	@read

Sully:
	@echo "\n\033[1;32mLaunching Sully\033[0m"
	@echo "\033[1;34mCreating objects files...\033[0m"
	@clang -Wall -Werror -Wextra -c Sully.c
	@echo "\033[1;34mCreating executable...\033[0m"
	@clang Sully.o -o Sully
	@echo "Executable name: \033[33m$ Sully\033[0m"
	@echo "\033[1;34mExecute...\033[0m"
	@./Sully
	@echo "\n\033[1;34mListing files\033[0m"
	@ls -1 . | grep Sully_
	@read
	@echo "\n\033[1;34mChecking differences\033[0m"
	@echo "\n\033[1;34m>\033[0m diff Sully.c Sully_5.c"
	@-diff Sully.c Sully_5.c
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.c Sully_4.c"
	@-diff Sully.c Sully_4.c
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.c Sully_3.c"
	@-diff Sully.c Sully_3.c
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.c Sully_2.c"
	@-diff Sully.c Sully_2.c
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.c Sully_1.c"
	@-diff Sully.c Sully_1.c
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.c Sully_0.c"
	@-diff Sully.c Sully_0.c
	@read

Bonus:
	@echo "\n\033[1;32mBonus done in php\033[0m"
	@echo "\n\033[1;32mLaunching Colleen\033[0m"
	@php Colleen.php
	@read
	@echo "\n\033[1;34mChecking differences\033[0m"
	@echo "\033[1;34m>\033[0mColleen.php > php_Colleen ; diff php_Colleen Colleen.php"
	@php Colleen.php > php_Colleen ; diff php_Colleen Colleen.php
	@read
	@echo "\n\033[1;32mLaunching Grace\033[0m"
	@php Grace.php
	@echo "\n\033[1;34m>\033[0m diff Grace.php Grace_kid.php"
	@-diff Grace.php Grace_kid.php
	@read
	@echo "\n\033[1;32mLaunching Sully\033[0m"
	@php Sully.php
	@echo "\n\033[1;34mListing files\033[0m"
	@ls -1 . | grep 'Sully_.*'
	@read
	@echo "\n\033[1;34mChecking differences\033[0m"
	@echo "\n\033[1;34m>\033[0m diff Sully.php Sully_5.php"
	@-diff Sully.php Sully_5.php
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.php Sully_4.php"
	@-diff Sully.php Sully_4.php
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.php Sully_3.php"
	@-diff Sully.php Sully_3.php
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.php Sully_2.php"
	@-diff Sully.php Sully_2.php
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.php Sully_1.php"
	@-diff Sully.php Sully_1.php
	@read
	@echo "\n\033[1;34m>\033[0m diff Sully.php Sully_0.php"
	@-diff Sully.php Sully_0.php
	@read


clean:
	@echo "\033[31mRemoving \033[1mobjects files\033[0;31m...\033[0m"
	@rm -f Colleen.o Grace.o Sully.o

fclean: clean
	@echo "\033[31mRemoving \033[1mexecutable files\033[0;31m...\033[0m"
	@rm -f Colleen Grace Sully
	@echo "\033[31mRemoving \033[1mother files\033[0;31m...\033[0m"
	@rm -rf Grace_kid.c Grace_kid.php Sully_* tmp_Colleen php_Colleen

re: fclean all

.PHONY: re clean fclean