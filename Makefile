.DEFAULT := all
.PHONY := all clean

all: bin/drive

bin/drive:
	mkdir -p bin && export GOPATH=`pwd`/drive-gen/Godeps/_workspace && export GOBIN=`pwd`/bin && cd cmd/drive && go install .

clean:
	rm -f bin/drive
