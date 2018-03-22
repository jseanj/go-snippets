# go-snippets
some Go code snippets

### 统计所有工程中import最多的第三方库
sh importsStat.sh

```
  14 github.com/golang/protobuf/proto
   5 github.com/micro/go-log
   5 github.com/julienschmidt/httprouter
   5 github.com/golang/snappy
   5 github.com/go-martini/martini
   4 github.com/skynetservices/skynet
   4 github.com/micro/misc/lib/addr
   4 github.com/gogo/protobuf/proto
   4 github.com/garyburd/redigo/redis
   4 github.com/PuerkitoBio/goquery
   3 github.com/xtaci/smux
   3 github.com/xtaci/kcp-go
   3 github.com/urfave/cli
   3 github.com/skynetservices/skynet/log
   3 github.com/richmonkey/cfg
   3 github.com/micro/misc/lib/tls
   3 github.com/micro/misc/lib/net
   3 github.com/kataras/golog
   3 github.com/hashicorp/consul/api
   3 github.com/golang/glog
   3 github.com/BurntSushi/toml
   2 github.com/x86kernel/htmlcolor
   2 github.com/valyala/gorpc
   2 github.com/ugorji/go/codec
   2 github.com/tidwall/gjson
   2 github.com/stathat/go
   2 github.com/spf13/pflag
   2 github.com/skynetservices/skynet/config
   2 github.com/skynetservices/skynet/client/loadbalancer
   2 github.com/skynetservices/skynet/client/conn
   2 github.com/sirupsen/logrus
   2 github.com/robfig/config
   2 github.com/prometheus/procfs
   2 github.com/prometheus/common/model
   2 github.com/prometheus/common/expfmt
   2 github.com/prometheus/client_model/go
   2 github.com/pkg/errors
   2 github.com/pborman/uuid
   2 github.com/opentracing/opentracing-go
   2 github.com/nwidger/jsoncolor
   2 github.com/motain/gocheck
   2 github.com/mattn/go-runewidth
   2 github.com/jondot/gosigar
   2 github.com/hashicorp/hcl
   2 github.com/gorilla/securecookie
   2 github.com/gorilla/context
   2 github.com/go-sql-driver/mysql
   2 github.com/fatih/color
   2 github.com/cpuguy83/go-md2man/md2man
   2 github.com/beorn7/perks/quantile
   2 github.com/Yawning/chacha20
   1 github.com/vaughan0/go-ini
   1 github.com/tidwall/match
   1 github.com/stretchr/testify/suite
   1 github.com/stretchr/testify/assert
   1 github.com/streadway/handy/breaker
   1 github.com/spf13/cobra
   1 github.com/sony/gobreaker
   1 github.com/smartystreets/logging
   1 github.com/smartystreets/assertions
   ...
```

### 统计Go项目的代码行数

sh lineStat.sh project_name

eg: sh lineStat.sh cmux
```

--------------------------------------------------
    path: /Users/jseanj/gopath/src/github.com/soheilhy/cmux
--------------------------------------------------
     179 /Users/jseanj/gopath/src/github.com/soheilhy/cmux/patricia.go
      67 /Users/jseanj/gopath/src/github.com/soheilhy/cmux/buffer.go
     270 /Users/jseanj/gopath/src/github.com/soheilhy/cmux/cmux.go
      18 /Users/jseanj/gopath/src/github.com/soheilhy/cmux/doc.go
     267 /Users/jseanj/gopath/src/github.com/soheilhy/cmux/matchers.go
     801 total
--------------------------------------------------
     562
--------------------------------------------------

```