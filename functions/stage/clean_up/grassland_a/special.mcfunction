bossbar set medabots_server:grassland_a/time players
bossbar set medabots_server:grassland_a/robattle players
scoreboard players set @a[scores={Stage=1},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=1},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=1},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=1},tag=enemy_medabot] -1539 51 -151 -180 0
scoreboard players set @s[scores={Stage=1,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=1,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=1,Battle=0}] Battle 0
teleport @s[scores={Stage=1,Battle=0}] -1539 51 -151 -180 0
tag @e[scores={Stage=1},type=!minecraft:player] add dead
data merge block -1540 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_a/play"}}'}
setblock -1540 53 -182 minecraft:redstone_block