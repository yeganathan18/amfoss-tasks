N=int(input())
A=input()
B=input()
A_list=list(A.split(" "))
B_list=list(B.split(" "))
output=[]
for i in range(0,len(B_list)):
    a=int(A_list[i])
    b=int(B_list[i])
    q=b//a
    output.append(q)
print(min(output))
