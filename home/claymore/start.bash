export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

./ethdcrminer64 -epool eth-us-east1.nanopool.org:9999 -ewal 0x8D9d68A3dbD7946db662DdD3Cd5A97F766d075a0/miner000/algohash@gmail.com -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal 721581047ea2e44150f76a10c55a4d2a626b67d4d360e31ecbed11ded9c6cd898222e3accb34/miner000/algohash@gmail.com -dcoin sia -dcri 120
