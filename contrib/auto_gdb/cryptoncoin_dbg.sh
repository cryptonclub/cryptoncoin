#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.cryptoncoincore/cryptoncoind.pid file instead
cryptoncoin_pid=$(<~/.cryptoncoincore/testnet3/cryptoncoind.pid)
sudo gdb -batch -ex "source debug.gdb" cryptoncoind ${cryptoncoin_pid}
