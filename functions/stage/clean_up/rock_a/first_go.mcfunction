bossbar set medabots_server:rock_a/time players
bossbar set medabots_server:rock_a/robattle players
scoreboard players set @a[scores={Stage=2},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=2},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=2},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=2},tag=enemy_medabot] -1604 51 -149 -180 0
tag @e[scores={Stage=2},type=!minecraft:player] add dead
data merge block -1605 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_a/play"}}'}
setblock -1605 53 -182 minecraft:redstone_block