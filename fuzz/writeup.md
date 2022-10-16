### Testing

The next step that I took was to begin work on the coverage report. I utilized the lcov program to generate the coverage report. From this I saw that only 34% of the the program was being tested.
After seeing this I was able to determine two test cases could be created by targeting the switch within the animate function. Case 0x01 was not touched and while looking at this I realized it's
another issue. There is no bounds checking for the regs array. I generated a test case with the op code as 0x01 and an arg1 value out of bounds. This caused a crash. In order to fix this I
added a check to make sure that arg1 would not exceed the bounds of the regs array.

Additionally, case 0x02 was not covered. To test this I created a file with the op code as 0x02 and a random value for arg1 and arg2. The test ran successfully.


Fuzzing with AFL was the next part of the assignment. I ran it overnight to generate a significant amount of of test cases. I went through each one to determine what was causing the crashes and hangs.
The first hang I found which I was able to fix is fuzzer1.gft. The issue was caused within the animate function in case 0x09. I removed the cast to an signed char which solved the problem of the infinite
loop.

I worked through the fuzzer2.gft file through gdb with gef and I can conclude that the segmentation fault is caused by the inability to access the memory location of gcd_ptr->number_of_gift_card_records
variable. I believe this is due to the fuzzer generated file having a number higher than whan it should be however when I tried to fix this I wasn't able to. If the problem is memory access then it
would most likely be referencing a null pointer. When I tried to check if this was the case using if (pc == NULL) or if (*pc == NULL) but this didn't solve the problem. I couldn't find a solution
to this even after a lot of research on the topic. It's possible this program has further underlying issues that I'm not seeing in the debugger that is leading to this issue.