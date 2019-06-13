bossbar set medabots_server:grassland_d/time players
bossbar set medabots_server:grassland_d/robattle players
scoreboard players set @a[scores={Stage=30},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=30},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=30},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=30},tag=enemy_medabot] -1570 51 -720 -180 0
scoreboard players set @s[scores={Stage=30,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=30,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=30,Battle=0}] Battle 0
teleport @s[scores={Stage=30,Battle=0}] -1570 51 -720 -180 0
tag @e[scores={Stage=30},type=!minecraft:player] add dead
data merge block -1571 52 -750 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_d/play"}}'}
setblock -1571 53 -752 minecraft:redstone_block