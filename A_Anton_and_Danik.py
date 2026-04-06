n=int(input())
score=input().upper()
ANTON=0
DANIK=0
for x in score:
    if x=="A":
        ANTON+=1
    else:
        DANIK+=1
if ANTON>DANIK:
    print("Anton")
elif ANTON<DANIK:
    print("Danik")
else:
    print("Friendship")