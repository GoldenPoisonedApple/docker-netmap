```bash
# ~/.docker$
mkdir cli-plugins

cd cli-plugins/

# 作成
# echo "test"
nano docker-netmap
sudo chmod +x docker-netmap 
```

```bash
docker ps --format '{{.Names}}' | while read c; do   echo "$c:"; docker inspect -f '{{range $k, $v := .NetworkSettings.Networks}}{{println "  " $k}}{{end}}' "$c"; done
```


[CLIプラグインドキュメントが消えたのですか?号 #10852 ·docker/docs](https://github.com/docker/docs/issues/10852)

どうやら既にcli-pluginsは推奨されていない模様


使われてないネットワークも表示
名前解決表示
### DRIVER
ネットワークの実現方法
- bridge: 通常使用: 同一ホスト内の仮想ブリッジネットワーク
- host: 高速通信、ネットワーク分離不要な場合: ホストのIP・Portを直接利用
- overlay: 異なるホスト間(swarmなど)を跨ぐ場合: VXLANなどを利用
- macvlan: 既存のネットワークに直接参加させたい場合: コンテナに物理NICのようなMACアドレスを割り当て
- ipvlan: 大規模ネットワーク等: macvlanのIPレベル版
- null: 完全分離環境: ネットワーク無し

### SCOPE
そのネットがどの範囲で有効か
- local: そのホスト内のみ
- swarm: そのswarmクラスタで有効
- global: 全ホストで有効(ほぼ見ない)
