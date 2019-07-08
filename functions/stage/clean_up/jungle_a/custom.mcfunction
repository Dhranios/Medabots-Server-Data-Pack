bossbar set medabots_server:jungle_a/time players
tag @e[scores={Stage=3},type=!minecraft:player] add dead
data merge block -1674 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_a/play"}}'}
setblock -1674 53 -181 minecraft:redstone_block