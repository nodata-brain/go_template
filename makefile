ifdef COMSPEC
	EXE_EXT := .exe
else
	EXE_EXT :=
endif

name ?= nodaata_brain
mod_name ?= $(basename pwd)

.PHONY: run
run:
	go run ./cmd/main.go

build:
	go build -o ${name}$(EXE_EXT) ./cmd/main.go

build_win:
	GOOS=windows GOARCH=amd64 go build -o ${name}.exe ./cmd/main.go

mod:
	go mod init ${mod_name}
