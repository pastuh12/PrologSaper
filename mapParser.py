import os

FILEPATH = "./map.txt"

def parsingMapString(content):
    content = content.replace("-", "")
    content = content.replace("|", "")
    content = content.replace("+", "")
    content = content.replace(" ", "")
    
    strings = content.split("\n")
    length = len(strings)
    strings = strings[2:length-2]
    for i in range(0, len(strings)):
        l = len(strings[i])
        strings[i] = strings[i][1:l-1]
        strings[i] = strings[i]
    return strings

    
def fillMatrix(strings):
    value = 0
    rows = len(strings)
    matrix = []
    for i in range(0, rows):
        columns  = len(strings[i])
        row = list()
        for j in range(0, columns):
            if(strings[i][j] == "."):
                value = 0
            else:
                if(strings[i][j] == "o"):
                    value = 9
                else:
                    value = int(strings[i][j])
            row.append(value)
        matrix.append(row)

    return matrix

def parseMap(path= FILEPATH):


    file = open(path, "r")
    content = file.read()
    file.close()

    strings = parsingMapString(content)

    mapMatrix = fillMatrix(strings)

    return mapMatrix





