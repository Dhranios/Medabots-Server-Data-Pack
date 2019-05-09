bossbar set medabots_server:ruins_in_b/time players
bossbar set medabots_server:ruins_in_b/robattle players
scoreboard players set @a[scores={Stage=17}] Music 0
scoreboard players set @a[scores={Stage=17}] MusicType 1
scoreboard players set @a[scores={Stage=17}] Battle 0
teleport @a[scores={Stage=17}] -1620 50 -526 -180 0
tag @e[scores={Stage=17},type=!minecraft:player] add dead
data merge block -1621 51 -570 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_b/play"}}'}
setblock -1621 52 -572 minecraft:redstone_block