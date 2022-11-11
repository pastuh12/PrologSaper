import os

FILEPATH = "./map.txt"

def parsingCordString(content):
    content = content.replace(")", "")
    content = content.replace("mine(", "")

    
    strings = content.split("\n")
    length = len(strings)
    strings = strings[2:length-2]

    return strings

def createCordArray(strings):
    cords = []
    for item in strings:
        cord = item.split(",")
        for i in cord:
            cords.append(int(i))
    return cords

def parseCord(path = FILEPATH):
    file = open(path, "r")
    content = file.read()
    file.close()

    strings = parsingCordString(content)
    print(strings)

    cords = createCordArray(strings)
    return cords

