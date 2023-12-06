geth account new --datadir /root/Roburna-Chain/data/testnet/node 

geth --datadir /root/Roburna-Chain/data/testnet/node init /root/Roburna-Chain/data/testnet/config/genesis.json



#geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode "full" --http --http.api "personal,eth,net,web3,txpool,miner,admin" --http.corsdomain="*" --networkid 159 --allow-insecure-unlock console

clef --keystore /root/Roburna-Chain/data/testnet/node/keystore --configdir /root/Roburna-Chain/data/testnet/clef --chainid 159 --suppress-bootwarn init

clef --keystore /root/Roburna-Chain/data/testnet/node/keystore --configdir /root/Roburna-Chain/data/testnet/clef --chainid 159 --suppress-bootwarn setpw 0xeE01e167aaA23D82306a61c4B33D09FF1295c860

clef --keystore /root/Roburna-Chain/data/testnet/node/keystore --configdir /root/Roburna-Chain/data/testnet/clef --chainid 159 --suppress-bootwarn attest  `sha256sum rules.js | cut -f1`

clef --keystore /root/Roburna-Chain/data/testnet/node/keystore --configdir /root/Roburna-Chain/data/testnet/clef --chainid 159 --suppress-bootwarn --rules ./rules.js

geth attach http://127.0.0.1:8545

#geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --mine --bootnodes="enode://62714acf44e378b5f857326d2e10773bb5c5a774a2b344a470a7b905160c64aa5b84b1e193d3905233ae8bea3354aa75b71a517126778dac3112ae24d7cb24d5@127.0.0.1:0?discport=30301"

geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --mine --signer /root/Roburna-Chain/data/testnet/clef/clef.ipc

geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --mine --unlock 0xd8c5B59b73888118c1D5fBCe80ef0A23E7BA9D63  --password ./password.txt console

geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --mine --unlock 0xDa103442F4C60ac7629B74a2Ab186C44aba64A5C  --password ./password.txt --bootnodes "enode://c7047cfbf273718a7105e0f4c4873e56c0385e4552cfd0d453bf4259abfc8848f12f8fe3ddbcadf270ac3393e7b48686ac90d8958a717926fab2fd9ef18d89b7@127.0.0.1:0?discport=30301" console 

geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --mine --unlock 0xDa103442F4C60ac7629B74a2Ab186C44aba64A5C  --password ./password.txt --cache 8000 --rpc.allow-unprotected-txs --txlookuplimit 0 --log.file bsc.log console 


geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config.toml --unlock 0xDa103442F4C60ac7629B74a2Ab186C44aba64A5C  --password ./password.txt --authrpc.port 8555 

geth --datadir /root/Roburna-Chain/data/testnet/node --syncmode full --config /root/Roburna-Chain/data/testnet/config/config2.toml --unlock 0xD4BcCE223eF1cB76Aa37c63AF3132E756dd678F8  --password ./password.txt --authrpc.port 8555 












geth --datadir ./node2 --syncmode "full" --port 30305 --http --http.addr "localhost" --http.api "personal,eth,net,web3,txpool,miner,admin" --http.corsdomain="*" --networkid 2345 --allow-insecure-unlock --authrpc.port 8555 console

geth --datadir ./node1 --syncmode "full" --http --http.addr "localhost" --http.api "personal,eth,net,web3,txpool,miner,admin" --http.corsdomain="*" --networkid 2345 --allow-insecure-unlock --authrpc.port 8553 console