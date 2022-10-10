giftcardreader: giftcardreader.c giftcard.h
	gcc -g -o giftcardreader giftcardreader.c giftcard.h

all: giftcardreader test

test: test0 test1 test2 test3

test0: giftcardreader
	# Run initial project files
	./giftcardreader 1 examplefile.gft

test1: giftcardreader
	# Run first crash file
	./giftcardreader 1 tests/crash1.gft

test2: giftcardreader
	# Run second crash file
	./giftcardreader 1 tests/crash2.gft

test3: giftcardreader
	# Run hang file
	./giftcardreader 1 tests/hang.gft