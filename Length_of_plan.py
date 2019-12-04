from __future__ import division
f = open ("EXP_labels.txt",'r')
lookup = "TRUE"
lookup2 = "FALSE"
#lookup3 = "set-prec"
#lookup4 = "remove-obstacle"
#lookup5  ="set-to-visit"
TRUE = 0
FALSE = 0
#set = 0
#obstacle = 0
#settovisit = 0
for line in f:
    if lookup in line:
        TRUE+=1
    if lookup2 in line:
        FALSE+=1
    '''if lookup3 in line:
        set+=1
    if lookup4 in line:
        obstacle+=1
    if lookup5 in line:
        settovisit+=1'''

print("Number of TRUEs",TRUE)
print("Number of FALSEs",FALSE)
sum = TRUE + FALSE
print("Total is", sum)
score = TRUE / sum
print("Explicability score is: ", score)
#print("Number of set-prec",set)
#print("Number of removed obstacles",obstacle)
#print("Number of set-to-visit",settovisit)
