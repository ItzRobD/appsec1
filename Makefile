giftcardreader: giftcardreader.c giftcard.h
	gcc -g -o giftcardreader giftcardreader.c giftcard.h

all: giftcardreader test

test: test0 test1

test0: giftcardreader
	# Run initial project files
	./giftcardreader 1 examplefile.gft

test1: giftcardreader
	# Run first crash file
	./giftcardreader 1 crash1/crash1.gft
