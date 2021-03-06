rm -rf $GOPATH/src $GOPATH/pkg

go get -d -u -v github.com/getgauge/gauge && go get github.com/tools/godep

cd $GOPATH/src/github.com/getgauge/gauge && $GOPATH/bin/godep restore

cd $GOPATH/src/github.com/getgauge/gauge && go run build/make.go && go run build/make.go --install --prefix=$GAUGE_ROOT

go get -d -u -v github.com/getgauge/gauge-java

cd $GOPATH/src/github.com/getgauge/gauge-java && go run make.go && go run make.go --install

export PATH=$PATH:$GAUGE_ROOT/bin
