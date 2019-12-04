import random
import fileinput
rooms = []
location = []
numbers = []
allobstacles =[29,30,32,35,16,4,8,9,10,19,20]
invisible = [29,30,32,35,4,8,9,10,19,20]
roomnumbers = [1,3,25,33]
obstaclelocation = [16]
rov = 'loc' + str(6)

def pddl_initial():
    txt.write("(define (problem rover-1)\n\n")
    txt.write("     (:domain\n")
    txt.write("         rover-domain-modified\n")
    txt.write("     )\n\n")
    txt.write("     (:objects\n")
    txt.write("        ")

def write_sentence_with_space(s):
    txt.write("         " + s)
    txt.write("        ")

def write_new_line():
    txt.write("\n\n")
    txt.write("        ")

def pddl_end():
    txt.write("        ")
#    txt.write("(human-acted)")
    txt.write("\n\n")
    txt.write("     )\n\n")
    txt.write("\n")
    txt.write("     (:goal\n")
    txt.write("        ")
    txt.write(" (and\n")

def print_CanMoverow(s,arr):
    k = 0
    while (k+1<6):
        f = open(text,'a')
        if ((arr[k+1] not in invisible) and (arr[k] not in invisible)):
            txt.write(''.join(['(',s,' loc'+str(arr[k]),' ','loc'+str(arr[k+1]),')']))
        k+=1
        f.close()
    k = 0
    write_new_line()
    while (k+1<6):
        f = open(text,'a')
        if ((arr[k+1] not in invisible) and (arr[k] not in invisible)):
            txt.write(''.join(['(',s,' loc'+str(arr[k+1]),' ','loc'+str(arr[k]),')']))
        k+=1
        f.close()

def print_CanMovecol(s,arr):
    k = 0
    while (k+1<6):
        f =open(text,'a')
        if ((arr[k]not in invisible) and (arr[k+1] not in invisible)):
            txt.write(''.join(['(',s,' loc'+str(arr[k]),' ','loc'+str(arr[k+1]),')']))
        if ((arr[k+1] not in invisible) and (arr[k] not in invisible)):
            txt.write(''.join(['(',s,' loc'+str(arr[k+1]),' ','loc'+str(arr[k]),')']))
        k+=1
        f.close()
    k = 0
    write_new_line()

def print_Visiblerow(s,arr):
    k = 0
    while (k+1<6):
        f = open(text,'a')
        if ((arr[k+1] not in allobstacles) and (arr[k] not in invisible)):
            txt.write(''.join([" ",'(',s,' loc'+str(arr[k]),' ','loc'+str(arr[k+1]),')']))
        if ((arr[k] not in allobstacles) and (arr[k+1] not in invisible)):
            txt.write(''.join([" ",'(',s,' loc'+str(arr[k+1]),' ','loc'+str(arr[k]),')']))
        k+=1
        f.close()
    k = 0
    write_new_line()

def print_Visiblecol(s,arr):
    k = 0
    while (k+1<6):
        f =open(text,'a')
        if ((arr[k+1] not in allobstacles) and (arr[k] not in invisible)) :
            txt.write(''.join(['(',s,' loc'+str(arr[k]),' ','loc'+str(arr[k+1]),')']))
        if ((arr[k] not in allobstacles) and (arr[k+1] not in invisible)):
            txt.write(''.join(['(',s,' loc'+str(arr[k+1]),' ','loc'+str(arr[k]),')']))
        k+=1
        f.close()
    k = 0
    write_new_line()
text = "output"+str(21)+".pddl"
txt = open(text, "w")
pddl_initial()
for i in range(1,5):
        numbers.append(i)
        ro = 'room' + str(i)
        txt.write(" ")
        rooms.append(ro)
        txt.write(ro)
txt.write("\n")
write_sentence_with_space("dummy-room\n\n")
obstacleLocation = []
for i in range(1,4):
        ob = 'obstacle' + str(i)
        txt.write(" ")
        txt.write(ob)
write_new_line()
txt.write("\n\n")
write_sentence_with_space("rover1\n\n")
for j in range(1,37):
        lo = 'loc' + str(j)
        txt.write(" ")
        txt.write(lo)
        location.append(('loc'+str(j)))
txt.write(' - loc')
locations = []
for k in range (1,37):
    locations.append(k)
txt.write("\n\n")
txt.write("     )\n\n")
txt.write("     (:init\n")
txt.write("        ")
for i in range(1,5):
        roo = 'room' + str(i)
        ru = ''.join(['(','room',' ',roo,')', ' '])
        txt.write(ru)
txt.write("\n")
txt.write("        (room dummy-room)\n")
txt.write("        ")
for i in range(1,4):
    ob = 'obstacle' + str(i)
    obo = ''.join(['(','obstacle',' ',ob,')', ' '])
    txt.write(obo)
write_new_line()
for j in range(1,37):
        loo = 'loc' + str(j)
        lu = ''.join(['(','loc',' ',loo,')',' '])
        txt.write(lu)
write_new_line()
locationObs =[]

write_new_line()
write_new_line()
#write_new_line()
#write_new_line()

mat= [0 for i in range (6)]
matcol= [0 for i in range (6)]
s = "can-move"
v = "visible"
for i in range (0,6):
    for j in range (1,7):
        mat[j-1]=((6*i)+j)
    print_CanMoverow(s,mat)
    print_Visiblerow(v,mat)
for j in range(1,7):
    for i in range(0,6):
        matcol[i] = (6*i)+j
    print_CanMovecol(s,matcol)
    print_Visiblecol(v,matcol)
write_new_line()
for i in range(0,4):
    roo = 'room' + str(i+1)
    lor = 'loc' + str(roomnumbers[i])
    ru = ''.join(['(','is-in',' ',roo,' ',lor,')'])
    txt.write(ru)
write_new_line()
txt.write("(rover rover1)")
write_new_line()
rover = ''.join(['(','at',' ','rover1',' ',rov,')'])
txt.write(rover)
write_new_line()

for i in range(len(obstaclelocation)):
    obloc = 'loc'+str(obstaclelocation[i])
    obst = ''.join(['(','is-in',' ','obstacle'+ str(i+1),' ',obloc,')',' '])
    txt.write(obst)

write_new_line()
write_new_line()
write_new_line()
txt.write("(visited dummy-room)\n")
write_new_line()

prec = []
for k in range(1,5):
    roomprec = ''.join(['room'+str(k)])
    prec.append(roomprec)
dum = ''.join(['(','room-prec',' ','dummy-room',' ',prec[0],')'])
txt.write(dum)
txt.write("\n")
for j in range (len(numbers)-1):
    dume= ''.join(['        ','(','room-prec',' ','dummy-room',' ', prec[j+1],')'])
    txt.write(dume)
    txt.write("\n")
roomprecedence = ''.join(['        ','(','to-visit',' ',prec[0],')'])
txt.write(roomprecedence)
txt.write("\n")
pddl_end()

visited = []
for i in range(1,5):
        txt.write("            ")
        roo = 'room' + str(i)
        ru = ''.join(['(','visited',' ',roo,')'])
        visited.append(roo)
        txt.write(ru)
        txt.write("\n")
txt.write("        ")
txt.write(" )\n")
txt.write("     )\n")
txt.write(")\n")
txt.close()
