tag @a remove achieve_screw_you_all
scoreboard players set @a[scores={Stage=46}] Music 0
scoreboard players set @a[scores={Stage=46}] MusicType 1
scoreboard players set @a[scores={Stage=46}] Battle 0
teleport @a[scores={Stage=46}] -1440 51 -158 -180 0
tag @e[scores={Stage=46},type=!minecraft:player] add dead
data merge block -1441 52 -210 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ricco_harbor/play"}}'}
setblock -1441 53 -212 minecraft:redstone_block