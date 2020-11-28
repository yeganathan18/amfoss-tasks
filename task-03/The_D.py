n=int(input())
D="D"
star="*"
i=1

while i<=n:
    d="D"*i
    out=d.center(n,"*")
    print(out)
    i=i+2

a=n-2
while a>=1:
    d="D"*a
    out=d.center(n,"*")
    print(out)
    a=a-2