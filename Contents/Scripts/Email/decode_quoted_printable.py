import quopri, fileinput, os

line_list = []

[  line_list.append(x) for x in fileinput.input( os.environ["BB_DOC_PATH"] )  ]
line_string = "".join(line_list)


print quopri.decodestring( line_string )
