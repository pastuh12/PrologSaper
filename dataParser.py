import argparse
from mapParser import parseMap, FILEPATH
from cordMinesParser import parseCord
from ast import arg
import os.path
import random
from xxlimited import new
import argparse


ACTIONS = ['cords', 'map']

parser = argparse.ArgumentParser()

parser.add_argument(
    "-a",
    "--action",
    help="Какое действие вы хотите выполнить (cords/map)")
parser.add_argument("-p", "--path", help="Путь к файлу с данными", default=FILEPATH)

args = parser.parse_args()

if (args.action in ACTIONS):
    if (args.action == ACTIONS[0]):
        parseMap(args.path)
    else:
        if (args.action == ACTIONS[1]):
            parseMap(args.path)
else:
    print("Ты ввел что то не то, попробуй еще раз")

