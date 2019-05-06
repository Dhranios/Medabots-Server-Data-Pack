bossbar set medabots_server:boxer/robattle players
bossbar set medabots_server:boxer/time players
scoreboard players set @a[scores={Stage=29}] Music 0
scoreboard players set @a[scores={Stage=29}] MusicType 22
scoreboard players set @a[scores={Stage=29}] Battle 0
teleport @a[scores={Stage=29}] -1890 50 -571 -180 0
tag @e[scores={Stage=29},type=!minecraft:player] add dead
data merge block -1891 51 -603 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/boxer/play"}}'}
setblock -1891 52 -605 minecraft:redstone_block