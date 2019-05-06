bossbar set medabots_server:laboratory_a/time players
bossbar set medabots_server:laboratory_a/robattle players
scoreboard players set @a[scores={Stage=9}] Music 0
scoreboard players set @a[scores={Stage=9}] MusicType 1
scoreboard players set @a[scores={Stage=9}] Battle 0
teleport @a[scores={Stage=9}] -1772 50 -285 -180 0
tag @e[scores={Stage=9},type=!minecraft:player] add dead
data merge block -1773 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_a/play"}}'}
setblock -1773 52 -323 minecraft:redstone_block