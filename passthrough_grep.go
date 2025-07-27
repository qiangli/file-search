package filesearch

type passthroughGrep struct {
	printer printer
}

func (g passthroughGrep) grep(path string, buf []byte) {
	match := match{path: path, lines: []line{line{}}}
	g.printer.print(match)
}
