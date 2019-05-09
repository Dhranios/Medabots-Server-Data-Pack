bossbar set medabots_server:laboratory_b/time players
bossbar set medabots_server:laboratory_b/robattle players
scoreboard players set @a[scores={Stage=18}] Music 0
scoreboard players set @a[scores={Stage=18}] MusicType 1
scoreboard players set @a[scores={Stage=18}] Battle 0
teleport @a[scores={Stage=18}] -1727 50 -575 -180 0
tag @e[scores={Stage=18},type=!minecraft:player] add dead
data merge block -1728 51 -604 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_b/play"}}'}
setblock -1728 52 -606 minecraft:redstone_block