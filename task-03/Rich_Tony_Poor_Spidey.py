i=int(input())
N_list=[]
K_list=[]
M_list=[]
while i>0:
    N_K=input()
    N_K_list=list(N_K.split(" "))
    N_list.append(N_K_list[0])
    K_list.append(N_K_list[1])
    M=input()
    M_list.append(M)
    i=i-1
for i in range(0,len(N_list)):
    O=M_list[i]
    O_list=list(O.split(" "))
    B=max(O_list)
    K=K_list[i]
    P=int(B)-int(K)
    O_list.remove(B)
    O_list.append(P)
    output=1
    for j in O_list:
        output=output*int(j)
    print(output)