#include <reg51.h>
#include <stdio.h>

char convertCase(char c) {
	if(c >= 'a' && c <= 'z') {
		return c - ('a' - 'A');
	} else if(c >= 'A' && c <= 'Z') {
		return c + ('a' - 'A');
	}
	return c;
}

int main() {
	char str[] = "Hello world!";
	int i;
	for(i=0; str[i]!='\0'; i++) {
		str[i] = convertCase(str[i]);
	}
	return 0;
}
