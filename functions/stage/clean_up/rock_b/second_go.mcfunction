bossbar set medabots_server:rock_b/time players
bossbar set medabots_server:rock_b/robattle players
scoreboard players set @a[scores={Stage=11},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=11},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=11},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=11},tag=enemy_medabot] -1603 51 -351 -180 0
tag @e[scores={Stage=11},type=!minecraft:player] add dead
data merge block -1605 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_b/play"}}'}
setblock -1605 53 -384 minecraft:redstone_block