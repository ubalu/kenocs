import re, sys, typing

to_lineno: typing.Callable[[int], int] = lambda i: i+1

if __name__=="__main__":
	if len(sys.argv) < 3:
		raise RuntimeError("No arguments provided")
	infile = sys.argv[1]
	outfile = sys.argv[2]
	

	with open(infile) as f:
		raw = [i.split("rem")[0] for i in f.readlines() if i and not i.startswith("rem")]

	labels: dict[str, str] = {m.group(0): str(to_lineno(i)) for i, r in enumerate(raw) if (m := re.match("&.+?&", r))}

	s: str = "".join(raw)
	for label, value in labels.items():
		s = s.replace(label, value)
	s = "\n".join([f"{to_lineno(i)}{row}" if re.match("^\\d+?\\D", row) is None else row for i, row in enumerate(s.splitlines())])

	with open(outfile, "w") as f:
		f.write(s)