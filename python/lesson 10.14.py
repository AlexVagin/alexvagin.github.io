a=[1,3,7]
a.append (5)
a.insert(0,-1)
a.extend([6,8,11])
a.append([2,4])
print(a)

print ('*'*6)
b=a
c=a[:]
b.append(34)
c.append (45)
print(a)
print(b)
print(c)