bossbar set medabots_server:grassland_c/time players
bossbar set medabots_server:grassland_c/robattle players
scoreboard players set @a[scores={Stage=23},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=23},tag=enemy_medabot] MusicType 22
scoreboard players set @a[scores={Stage=23},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=23},tag=enemy_medabot] -1539 50 -449 -180 0
scoreboard players set @s[scores={Stage=23,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=23,Battle=0}] MusicType 22
scoreboard players set @s[scores={Stage=23,Battle=0}] Battle 0
teleport @s[scores={Stage=23,Battle=0}] -1539 50 -449 -180 0
tag @e[scores={Stage=23},type=!minecraft:player] add dead
data merge block -1540 51 -480 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_c/play"}}'}
setblock -1540 52 -482 minecraft:redstone_block