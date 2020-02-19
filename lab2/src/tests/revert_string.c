#include "revert_string.h"
#include <string.h>
void RevertString(char *str)
{
	char temp, *end_ptr;
	if( str == NULL || !(*str) )
		return;

	end_ptr = str + strlen(str) - 1;

	while( end_ptr > str ) {
		temp = *str;
		*str = *end_ptr;
		*end_ptr = temp;
		str++;
		end_ptr--;
	}
}

