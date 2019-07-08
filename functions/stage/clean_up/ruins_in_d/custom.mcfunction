bossbar set medabots_server:ruins_in_d/time players
tag @e[scores={Stage=34},type=!minecraft:player] add dead
data merge block -1764 51 -770 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_d/play"}}'}
setblock -1764 52 -772 minecraft:redstone_block