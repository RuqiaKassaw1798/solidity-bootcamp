n=int(input())
for i in range(n):
    t=int(input())
    a=list(map(int,input().split()))
    k=set(a)
    while True:
        count=len(k)
        if count in k:
            print(count)
            break
        else:
            k.add(count)

