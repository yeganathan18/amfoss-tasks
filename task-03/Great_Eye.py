def solve():
    k = int(input())
    lst = [ i for i in input().strip().split()]
    sum = 0
    if len(lst) <= k :
        return -1;
    else :
        for i in lst[k] :

            sum += ord(i)
    return sum


n = int(input())
for i in range(n):
    print(solve())
