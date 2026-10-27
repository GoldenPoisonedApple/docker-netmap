# docker netmap
docker のネットワーク情報を表示するスクリプト
**NOT VIBE CODING!**

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Bash](https://img.shields.io/badge/Bash-4.3+-blue.svg)
![Docker](https://img.shields.io/badge/Docker-25.0+-blue.svg)

## Sample
```bash
$ docker netmap
NETWORK                  DRIVER              SCOPE
CONTAINER                PORTS               STATUS                     DNS
                  
bridge                   bridge              local
host                     host                local
none                     null                local                      
                  
xxxxx_default            bridge              local                      1/3 up
├ xxxxx-frontend-1       -                   Created                    xxxxx-frontend-1,frontend
├ xxxxx-backend-1        3000/tcp            Exited (255) 4 months ago  xxxxx-backend-1,backend,xxxxxxxxxxxx
└ xxxxx-db-1             5432/tcp            Up 24 hours (healthy)      xxxxx-db-1,db,xxxxxxxxxxxx
                  
worker_default           bridge              local                      0/1 up
└ worker-xxx-1           6006/tcp, 8888/tcp  Exited (255) 8 days ago    worker-xxx-1,xxx,xxxxxxxxxxxx
```

## Installation


## Specification
- docker cli plugins の機能により実装していますが、[参考](https://github.com/docker/docs/issues/10852)より既に推奨されていない機能のため、動かなくなる可能性が十分にあります。
- docker ps, docker inspect, docker network ls の出力を利用、整形して表示しています。
- UP/TOTAL は、ネットワークに所属するコンテナ数と Up の数を表示しています。
- UPは、docker ps の STATUS が Up で始まるコンテナ数をカウントしています。

## Requirements
- 使用ユーザがdockerグループに所属していること
- Bash 4.3+: local -n を使用
- Docker 25.0+: docker inspect の .DNSNames を使用

## License
[MIT](LICENSE)