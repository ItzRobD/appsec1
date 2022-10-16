giftcardreader: giftcardreader.c giftcard.h
	gcc -g -o giftcardreader giftcardreader.c giftcard.h

all: giftcardreader test

test: test0 test1 test2 test3 test4 test5 test6 test7

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

# Fuzzer generated files
test4: giftcardreader
	# Cov 1
	./giftcardreader 1 fuzz/cov1.gft

test5: giftcardreader
	# Cov 2
	./giftcardreader 1 fuzz/cov2.gft

test6: giftcardreader
	# Fuzzer 1
	./giftcardreader 1 fuzz/fuzzer1.gft

test7: giftcardreader
	# Fuzzer 2
	./giftcardreader 1 fuzz/fuzzer2.gft