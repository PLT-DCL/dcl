void main() {
	
	string[] g;
	g = ['hello', 'from', 'the', 'other', 'side'];
	print_line(g{|0|});
	int value = g{|2|}; 

}

/* verifies that setting string to int fails */
