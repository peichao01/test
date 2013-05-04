package one

type ReadWriter interface {
	Read(but []byte)(n int, err error)
	Write(buf []byte)(n int, err error)
}
