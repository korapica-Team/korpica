#!/usr/bin/env bash
cd $HOME/korpica
while(true) do
rm -fr ../.telegram-cli
screen -S korpica -X kill
screen -S korpica ./korpica
done
