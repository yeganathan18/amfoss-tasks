Input=input()
A=list(Input.split(" "))
Array=input()
Array_l=list((Array.split(" ")))
i=int(A[0])
S=[]
while i>0:
    if len(Array_l)>=2:
        for i in range(0,len(Array_l)-1):
            s=int(Array_l[i])+int(Array_l[i+1])
            S.append(s)
    Array_l.remove(Array_l[0])


    i=i-1
if int(A[1]) in S:
    print("True")
else:
    print("False")