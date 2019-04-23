bossbar set medabots_server:seashore_a/time players
bossbar set medabots_server:seashore_a/robattle players
scoreboard players set @a[scores={Stage=4}] Music 0
scoreboard players set @a[scores={Stage=4}] MusicType 1
scoreboard players set @a[scores={Stage=4}] Battle 0
teleport @a[scores={Stage=4}] -1539 51 -216 -180 0
tag @e[scores={Stage=4},type=!minecraft:player] add dead
data merge block -1540 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_a/play"}}'}
setblock -1540 53 -249 minecraft:redstone_block