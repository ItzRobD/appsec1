giftcardreader: giftcardreader.c giftcard.h
	gcc -g -o giftcardreader giftcardreader.c giftcard.h

all: giftcardreader test

test: test0

test0: giftcardreader
	./giftcardreader 1 examplefile.gft