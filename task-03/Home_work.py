i=int(input())
n_list=[]

while i>0:
    n=int(input())
    n_list.append(n)
    i=i-1



def output(n):
    IS = [1, 2, 3]
    for i in range(0,n):
        S=IS[i]+IS[i+1]+IS[i+2]
        IS.append(S)
    return IS

a=0
while a<len(n_list):
    j=n_list[a]
    O=output(j)
    last=O[j-1]
    Last=str(last)
    list1 = []
    list1[:0] = Last
    list1.reverse()
    b=0
    while b <= len(list1):
        if list1[0] == "0":
            list1.remove(list1[0])
        if list1[0] != "0":
            break
        b = b + 1
    result=""
    for k in range(0,len(list1)):
        result=str(result)+str(list1[k])
    print(result)
    a=a+1