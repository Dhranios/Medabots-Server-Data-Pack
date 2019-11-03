tag @s remove achieve_screw_you_all
tag @e[scores={Stage=46},type=!minecraft:player] add dead
data merge block -1441 52 -210 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ricco_harbor/play"}}'}
setblock -1441 53 -212 minecraft:redstone_block