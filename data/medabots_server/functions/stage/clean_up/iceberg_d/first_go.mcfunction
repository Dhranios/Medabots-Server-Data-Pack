bossbar set medabots_server:iceberg_d/time players
bossbar set medabots_server:iceberg_d/robattle players
scoreboard players set @a[scores={Stage=33},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=33},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=33},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=33},tag=enemy_medabot] -1700 50 -769 -180 0
scoreboard players set @s[scores={Stage=33,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=33,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=33,Battle=0}] Battle 0
teleport @s[scores={Stage=33,Battle=0}] -1700 50 -769 -180 0
tag @e[scores={Stage=33},type=!minecraft:player] add dead
data merge block -1701 51 -793 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_d/play"}}'}
setblock -1701 52 -795 minecraft:redstone_block