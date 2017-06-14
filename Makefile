.DEFAULT := all
.PHONY := all clean vendor

all: bin/drive

vendor:
	export GOPATH=`pwd` && go get ...

bin/drive:
	mkdir -p bin && export GOPATH=`pwd` && export GOBIN=`pwd`/bin && cd cmd/drive && go install .

clean:
	rm -f bin/drive
