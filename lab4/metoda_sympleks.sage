A = ([1, -1], [-1, 1])
b = (1, 2)
c = (1,0)

LP = InteractiveLPProblemStandardForm(A, b, c, ["x1", "x2"])
show(LP)

X = LP.initial_dictionary()
show(X)

print X.possible_entering()
X.enter("x1")
print X.possible_leaving()
X.leave("x3")
show(X)

X.update()
show(X)

X.enter("x2")
print X.possible_leaving()
print "Problem jest nieograniczony - mozemy wziac dowolnie duze x2 i przykladowo x1 = 1 + x2"
LP.plot()

#gotowa metoda sympleks Sage
A = ([1, -1], [-1, 1])
b = (1, 2)
c = (1,0)

LP = InteractiveLPProblemStandardForm(A, b, c, ["x1", "x2"])
show(LP)
LP.run_simplex_method()
#LP.plot()
