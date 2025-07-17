FT = lambda: [(f.write(CODE % CODE), f.close) for f in [open(FILENAME, mode="w")]]
FILENAME = "Grace_kid.py"
CODE = 'FT = lambda: [(f.write(CODE %% CODE), f.close) for f in [open(FILENAME, mode="w")]]\nFILENAME = "Grace_kid.py"\nCODE = %r\n#useless comment\nFT()'
#useless comment
FT()