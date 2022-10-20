#!/bin/bash

cd $(dirname $(readlink -f $0))
cd ..

npx -p @mermaid-js/mermaid-cli mmdc -i images/themenfeldanalyse.mmd -o images/themenfeldanalyse.png -t forest -b transparent --width 2000
say "done"
