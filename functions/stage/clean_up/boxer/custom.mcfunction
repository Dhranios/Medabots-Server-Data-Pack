bossbar set medabots_server:boxer/robattle players
tag @e[scores={Stage=29},type=!minecraft:player] add dead
data merge block -1891 51 -603 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/boxer/play"}}'}
setblock -1891 52 -605 minecraft:redstone_block