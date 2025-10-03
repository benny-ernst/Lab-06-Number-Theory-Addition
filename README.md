# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
This lab went pretty smoothly, the only hiccup was that the Vivado simulation runtime was set to 1000ns, which ended up cutting off the test results (fixed by setting to 50000ns). Overall, we were familiarized with the logic behind adders (both half adders and full adders) and learned more about advanced combinatorial logic equations and circuits.

## Lab Questions

### 1 - How might you add more than two bits together?
Adding more than two bits (e.g., 4 bits or more) require linking adders to adders (creating a sort of chain). In this lab, we combined two one bit adders to create a two bit adder. If I am understanding the logic correctly, the result of adding `n` bits would be `n + 1` bits (as seen when adding two 2-bits together, creating a 3-bit sum).

### 2 - What is the importance of the XOR gate in an adder?
The XOR gate for adders are essentially the mastermind behind the mathematics for the logic circuits. It determines the sum of bits, and, for our lab, we used it alongside the AND gate to determined the sum and the carry when adding to bits together.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
The largest number a two bit adder can handle would be 7. For this lab, the largest we went was 6 since we just had four main inputs. If we had a fifth input where we could add an extra 1 (least significant bit), the sum would end up being 7, or 111 in binary. However, if we went over and added another 1, logically, the result would be 1000. But, since we are only dealing with a 3 bit sum, we would just get 000 in binary, or 0. I believe binary addition can also be seen as a modulo function since, in this lab, our bound is 7 and loops to 0 if an overflow happens.

