

# link   : https://codeforces.com/problemset/problem/1214/C
# author : Mohamed Ibrahim



input()
k = 0

for ch in input():
    if ch == '(':
        k += 1
    elif k < 0:
        print('No')
        break
    else:
        k -= 1
else:
    print('No' if k else 'Yes')
    
    
    
    
