bossbar set medabots_server:park_b/time players
bossbar set medabots_server:park_b/robattle players
scoreboard players set @a[scores={Stage=20},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=20},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=20},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=20},tag=enemy_medabot] -1811 51 -683 -180 0
scoreboard players set @s[scores={Stage=20,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=20,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=20,Battle=0}] Battle 0
teleport @s[scores={Stage=20,Battle=0}] -1811 51 -683 -180 0
tag @e[scores={Stage=20},type=!minecraft:player] add dead
data merge block -1812 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_b/play"}}'}
setblock -1812 53 -732 minecraft:redstone_block