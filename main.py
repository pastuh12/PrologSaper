from pyswipl import Prolog
prolog = Prolog()
prolog.consult("mineseeper.pl")
prolog.consult("play.pl")
prolog.consult("test.pl")
for soln in prolog.query("main"):
    print(soln["X"], "is the female")
prolog.query("main.")
print(prolog.query("main"))