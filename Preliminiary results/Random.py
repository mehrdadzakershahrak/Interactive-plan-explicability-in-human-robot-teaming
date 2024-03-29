import random
import fileinput
numbers = []
obsc = []
location = []
rooms=[]
obstacles = []
toolnumber = []
tools = []
obstacleloc=[]
roomSize = 5
answerSize = 0
locationSize = 15
outputlocation = 0
obsSize = 15
obslocation = 0
toolSize = 15
toollocation = 0

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
    txt.write("(human-acted)")
    txt.write("\n\n")
    txt.write("     )\n\n")
    txt.write("\n")
    txt.write("     (:goal\n")
    txt.write("        ")
    txt.write(" (and\n")

def print_CanMoverow(s,arr):
    k = 0
    while (k+1<5):
        f = open(text,'a')
        txt.write(''.join([" ",'(',s,' loc'+str(arr[k]),' ','loc'+str(arr[k+1]),')']))
        k+=1
        f.close()
    k = 0
    write_new_line()
    while (k+1<5):
        f = open(text,'a')
        txt.write(''.join([" ",'(',s,' loc'+str(arr[k+1]),' ','loc'+str(arr[k]),')']))
        k+=1
        f.close()

def print_CanMovecol(s,arr):
    k = 0
    while (k+1<4):
        f =open(text,'a')
        txt.write(''.join(['(',s,' loc'+str(arr[k]),' ','loc'+str(arr[k+1]),')']))
        k+=1
        f.close()
    k = 0
    write_new_line()
    while (k+1<4):
        f =open(text,'a')
        txt.write(''.join(['(',s,' loc'+str(arr[k+1]),' ','loc'+str(arr[k]),')']))
        k+=1
        f.close()

def print_Visiblerow(s,arr,locationObs):
    k = 0
    while (k+1<5 and arr[k+1] not in locationObs):
        f = open(text,'a')
        txt.write(''.join([' ','(',s,' loc'+str(arr[k]),' ','loc'+str(arr[k+1]),')']))
        k+=1
        f.close()
    k = 0
    write_new_line()
    while (k+1<5 and arr[k] not in locationObs):
        f = open(text,'a')
        txt.write(''.join([' ','(',s,' loc'+str(arr[k+1]),' ','loc'+str(arr[k]),')']))
        k+=1
        f.close()

def print_Visiblecol(s,arr,locationObs):
    k = 0
    while (k+1<4 and arr[k+1] not in locationObs):
        f = open(text,'a')
        txt.write(''.join([' ','(',s,' loc'+str(arr[k]),' ','loc'+str(arr[k+1]),')']))
        k+=1
        f.close()
    k = 0
    write_new_line()
    while (k+1<4 and arr[k] not in locationObs):
        f = open(text,'a')
        txt.write(''.join([' ','(',s,' loc'+str(arr[k+1]),' ','loc'+str(arr[k]),')']))
        k+=1
        f.close()

for i in range(1,6):
    text = "output"+str(i)+".pddl"
    txt = open(text, "w")
        #'''Start of the plan'''
    pddl_initial()
    #'''Get random room numbers'''
    for i in range(1,5):
            while answerSize < roomSize:
                r = random.randint(1,15)
                if r not in numbers:
                    answerSize += 1
                    numbers.append(r)
            ro = 'room' + str(numbers[i])
            txt.write(" ")
            rooms.append(ro)
            txt.write(ro)
    txt.write("\n")
    write_sentence_with_space("dummy-room\n\n")

    for i in range(0,8):
            while obslocation < obsSize:
                m = random.randint(1,20)
                if m not in obsc:
                    obslocation += 1
                    obsc.append(m)
            if obsc[i] not in numbers:
                ob = 'obstacle' + str(obsc[i])
                txt.write(" ")
                obstacles.append(ob)
                txt.write(ob)
    write_new_line()
    txt.write("\n\n")
    write_sentence_with_space("rover1\n\n")
    #'''Get locations'''
    for j in range(1,21):
            lo = 'loc' + str(j)
            txt.write(" ")
            txt.write(lo)
            location.append(('loc'+str(j)))
    txt.write(' - loc')
    txt.write("\n\n")
    txt.write("     )\n\n")
    txt.write("     (:init\n")
    txt.write("        ")
    #'''Get the rooms and dummy-room'''
    for i in range(1,5):
            roo = 'room' + str(numbers[i])
            ru = ''.join(['(','room',' ',roo,')', ' '])
            txt.write(ru)
    txt.write("\n")
    txt.write("        (room dummy-room)\n")
    txt.write("        ")
    for i in range(1,8):
        if (obsc[i] not in numbers):
            ob = 'obstacle' + str(obsc[i])
            obo = ''.join(['(','obstacle',' ',ob,')', ' '])
            txt.write(obo)
    write_new_line()
    #'''Get total number of locations'''
    for j in range(1,6):
            loo = 'loc' + str(j)
            lu = ''.join(['(','loc',' ',loo,')',' '])
            txt.write(lu)
    write_new_line()
    for k in range(6,11):
            lo6 = 'loc' + str(k)
            lu6 = ''.join(['(','loc',' ',lo6,')',' '])
            txt.write(lu6)
    write_new_line()
    for k in range(11,15):
            lo6 = 'loc' + str(k)
            lu6 = ''.join(['(','loc',' ',lo6,')',' '])
            txt.write(lu6)
    write_new_line()
    for k in range(15,21):
            lo6 = 'loc' + str(k)
            lu6 = ''.join(['(','loc',' ',lo6,')',' '])
            txt.write(lu6)
    locationObs =[]

    write_new_line()
    write_new_line()
    write_new_line()
    write_new_line()

    mat= [0 for i in range (5)]
    matcol= [0 for i in range (4)]
    s = "can-move"
    v = "visible"
    for i in range (0,4):
        for j in range (1,6):
            mat[j-1]=((5*i)+j)
        print_CanMoverow(s,mat)
        print_Visiblerow(v,mat,locationObs)
    for j in range(1,6):
        for i in range(0,4):
            matcol[i] = (5*i)+j
        print_CanMovecol(s,matcol)
        print_Visiblecol(v,matcol,locationObs)

    write_new_line()
    #'''Find where the rover is in which room'''
    for i in range(1,5):
            roo = 'room' + str(numbers[i])
            rand = random.randint(1,5)
            lor = 'loc' + str(numbers[i])
            ru = ''.join(['(','is-in',' ',roo,' ',lor,')'])
            txt.write(ru)
    write_new_line()
    txt.write("(rover rover1)")
    write_new_line()
    rand = random.randint(15,20)
    rov = 'loc' + str(rand)
    rover = ''.join(['(','at',' ','rover1',' ',rov,')'])
    txt.write(rover)
    write_new_line()
    #'''Give random location to tools'''
    for k in range (1,8):
        if obsc[k] not in numbers:
            obloc = 'loc'+str(obsc[k])
            obst = ''.join(['(','is-in',' ','obstacle'+str(obsc[k]),' ',obloc,')',' '])
            txt.write(obst)
    write_new_line()
    write_new_line()
    #'''Give random locations to obstacles'''
    write_new_line()
    txt.write("(visited dummy-room)\n")
    #'''Find which all rooms are precedented'''
    txt.write("        ")
    prec = []
    for k in range(len(numbers)):
        roomprec = ''.join(['room'+str(numbers[k])])
        prec.append(roomprec)
    dum = ''.join(['(','room-prec',' ','dummy-room',' ',prec[1],')'])
    txt.write(dum)
    txt.write("\n")
    for j in range (len(numbers)-2):
        dume= ''.join(['        ','(','room-prec',' ',prec[j+1],' ', prec[j+2],')'])
        txt.write(dume)
        txt.write("\n")
    pddl_end()
    #'''Find which all rooms are visited'''
    visited = []
    for i in range(1,5):
            txt.write("            ")
            roo = 'room' + str(numbers[i])
            ru = ''.join(['(','visited',' ',roo,')'])
            visited.append(roo)
            txt.write(ru)
            txt.write("\n")
    txt.write("        ")
    txt.write(" )\n")
    txt.write("     )\n")
    txt.write(")\n")
    random.shuffle(numbers)
txt.close()
