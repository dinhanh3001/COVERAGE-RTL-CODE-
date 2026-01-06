# RTL COVERAGE CODE 
## What does this project do?

This repository explains:

- What is corner testing and how to design them
- How to write constrained random tests
- How to generate and evaluate coverage reports (line, branch, condition, toggle, FSM)

## First, what are corner tests, constrained random tests, and RTL coverage?

- A corner test is a type of directed test. Engineers predict corner cases that are likely to cause failures and design test cases to verify these situations.

- A constrained random test is a testing method where random test cases are generated under specific constraints. These constraints divide test cases into groups that share common behaviors.

- Coverage code is used to evaluate how thoroughly the testbench exercises the design. It measures the percentage of the design that has been executed during simulation. There are five basic coverage types:
  - Line coverage (how many lines are executed)
  - Branch/Decision coverage (whether all branches of if/else or case statements are executed)
  - Condition coverage
  - Toggle coverage (how many signals transition from 0→1 and 1→0)
  - FSM coverage

## Example: 2-bit adder

- In practice, only five test cases are sufficient to achieve 100% coverage:
  - (a = 0, b = 0, cin = random)
  - (a = 2'b11, b = 2'b11, cin = random)
  - (a = 2'b01, b = 2'b11, cin = random)
  - (a = 2'b01, b = 2'b01, cin = 1'b1)

- However, in this project, I want to demonstrate the full process of coverage evaluation. Therefore, I divide 32 test cases into 4 groups with common behaviors, and in each group, I test 50% of the cases.

- You can find the full list of test cases at the following link:  
  https://docs.google.com/spreadsheets/d/193wmhlbT23gKpbj-lhOqXWLFIP-LWbb1HDkXRKt6r3g/edit?usp=sharing  

  The first row is A, the second row is Cin, and the last row is B.

## We have three input A, B, Cin and two output Count, sum.
<img width="817" height="311" alt="image" src="https://github.com/user-attachments/assets/70060815-4e27-485b-b7da-1002cab6d9c9" />

## We have 5 bits input so it have 32 test cases and they are divided into 4 groups: 
<img width="895" height="469" alt="image" src="https://github.com/user-attachments/assets/c6b60186-3745-42e3-af5e-ac31d8875916" />
<img width="801" height="379" alt="image" src="https://github.com/user-attachments/assets/e24dffd6-1c6c-4f70-b144-f01470f9320e" />
<img width="901" height="467" alt="image" src="https://github.com/user-attachments/assets/227a44ce-aaeb-481a-94ca-fb9a2aa8770f" />

## I am using questa sim to do this project. And you can see the coverage code of this test bench below:

<img width="652" height="406" alt="image" src="https://github.com/user-attachments/assets/b09a63b3-512e-44f0-8e70-4aeb41b413e7" />
<img width="654" height="422" alt="image" src="https://github.com/user-attachments/assets/57c77689-de67-4b60-8009-4b286badf504" />

## NOTE 
* You can see that the coverage is 100 %. It's mean, my test bench is passed all of my RTL code, it includes: Line, branch/decision, condition, toggle and FSM. But you have to remember that the 100 % coverage just ensure your code is traversed and executed all paths in your design and it doesn't ensure you have a right result. You must compare the result of design and your result in these case.

<img width="556" height="375" alt="image" src="https://github.com/user-attachments/assets/511a9e31-0f8e-44a1-a614-513b9b039590" />

## Contact: 
* Author: Nguyen Dinh Anh
* Email: anhdinh30012005@gmail.com

