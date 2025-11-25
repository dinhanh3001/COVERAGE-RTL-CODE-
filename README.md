#Firstly, what is the corner test, random test with constraint and coverage-rtl code ? 
- Corner test is a directed test, engineers wil predit the case that can be wrong and conduct a test in these situation.
- Random test with constraint is a way to divided in some groups test case that have a common behaviorals.
- Coverage code is a way to evaluate the coverage of your test bench. It's mean, it caculate how many percent that your test case passed.
It includes 5 basic level: Line coverage( how many line executed ?), Branch/Decision coverage ( Do it pass all of the case command or if-else command ?),Condition coverage, Toggle coverage (how many percent nets,regs in the design passed 0-> 1 and 1->0),FSM coverage.  
 #I will use adder 2 bit in this example. In reality, we just need 5 test case ( (a =0,b=0, cin = random), (a =2'b11, b = 2'b11, c=random), (a = 2'b01, b = 2'b11,c = random), (a= 2'b01,b=2'b01 ,cin =1'b1)) to have 100 % coverage, but this project, i want to introduce full steps to evaluate the coverage. So I will divided 32 test case
in 4 groups that have common behavioral and in each test case, i will test 50 % of them.
# We have three input A, B, Cin and two output Count, sum.
<img width="817" height="311" alt="image" src="https://github.com/user-attachments/assets/70060815-4e27-485b-b7da-1002cab6d9c9" />

# We have 5 bits input so it have 32 test case and they are divided in 4 group: 
<img width="895" height="469" alt="image" src="https://github.com/user-attachments/assets/c6b60186-3745-42e3-af5e-ac31d8875916" />
<img width="801" height="379" alt="image" src="https://github.com/user-attachments/assets/e24dffd6-1c6c-4f70-b144-f01470f9320e" />
<img width="901" height="467" alt="image" src="https://github.com/user-attachments/assets/227a44ce-aaeb-481a-94ca-fb9a2aa8770f" />

# I am using questa sim to do this project. And you can see the coverage code of this test bench below:

<img width="652" height="406" alt="image" src="https://github.com/user-attachments/assets/b09a63b3-512e-44f0-8e70-4aeb41b413e7" />
<img width="654" height="422" alt="image" src="https://github.com/user-attachments/assets/57c77689-de67-4b60-8009-4b286badf504" />

# You can see that the coverage is 100 %. It's mean, my test bench is passed all of my RTL code, it includes: Line, branch/decision, condition, toggle and FSM. But you have to remember that the 100 % coverage just ensure your code is travedsed and executed all path in your design and it doesn't ensure you have a right result. You must compare the result of design and your result in these case.
<img width="556" height="375" alt="image" src="https://github.com/user-attachments/assets/511a9e31-0f8e-44a1-a614-513b9b039590" />


