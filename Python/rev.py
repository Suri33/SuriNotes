num = 121
num_copy = num 
rev = 0
while num > 0:
    rev = num%10 + rev*10
    num = num//10
    pass
if rev == num_copy:
    print("Palindorme")  
    pass
else:
    print("Not a Palindrome")    