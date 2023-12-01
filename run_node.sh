geth account new --datadir /root/Roburna-Chain/data/testnet/node 

geth --datadir /root/Roburna-Chain/data/testnet/node init /root/Roburna-Chain/data/testnet/config/genesis.json

#geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode "full" --http --http.api "personal,eth,net,web3,txpool,miner,admin" --http.corsdomain="*" --networkid 159 --allow-insecure-unlock console

clef --keystore /root/Roburna-Chain/data/testnet/node/keystore --configdir /root/Roburna-Chain/data/testnet/clef --chainid 159 --suppress-bootwarn init

clef --keystore /root/Roburna-Chain/data/testnet/node/keystore --configdir /root/Roburna-Chain/data/testnet/clef --chainid 159 --suppress-bootwarn setpw 0xeE01e167aaA23D82306a61c4B33D09FF1295c860

clef --keystore /root/Roburna-Chain/data/testnet/node/keystore --configdir /root/Roburna-Chain/data/testnet/clef --chainid 159 --suppress-bootwarn attest  `sha256sum rules.js | cut -f1`

clef --keystore /root/Roburna-Chain/data/testnet/node/keystore --configdir /root/Roburna-Chain/data/testnet/clef --chainid 159 --suppress-bootwarn --rules ./rules.js


#geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --mine --bootnodes="enode://62714acf44e378b5f857326d2e10773bb5c5a774a2b344a470a7b905160c64aa5b84b1e193d3905233ae8bea3354aa75b71a517126778dac3112ae24d7cb24d5@127.0.0.1:0?discport=30301"

geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --mine --signer /root/Roburna-Chain/data/testnet/clef/clef.ipc

geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --mine --unlock 0x1f88339f79A908b98bbC7abF027A80909B8688d2  --password ./password.txt console
geth --datadir /root/Roburna-Chain/data/testnet/node --unlock 0x1f88339f79A908b98bbC7abF027A80909B8688d2  --password ./password.txt console
