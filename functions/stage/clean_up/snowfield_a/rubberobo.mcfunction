bossbar set medabots_server:snowfield_a/time players
tag @e[scores={Stage=5},type=!minecraft:player] add dead
data merge block -1621 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_a/play"}}'}
setblock -1621 53 -249 minecraft:redstone_block