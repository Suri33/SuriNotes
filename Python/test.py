primary_number = 1
secondary_number =2
print(primary_number,end=',')
print(secondary_number,end=',')
temp_number = secondary_number
sum = 2
while primary_number + secondary_number < :
    temp_number = primary_number + secondary_number
    # if temp_number is even add it to sum
    if temp_number%2 == 0:
        sum = sum+temp_number
    print(temp_number,end=',')
    primary_number = secondary_number
    secondary_number = temp_number
    if sum%2 == 0:
        sum = sum
print("")        
print(f"Sum of even Nums below 90 is: {sum}")