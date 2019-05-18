bossbar set medabots_server:jungle_b/time players
bossbar set medabots_server:jungle_b/robattle players
scoreboard players set @a[scores={Stage=12},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=12},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=12},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=12},tag=enemy_medabot] -1620 51 -431 -180 0
tag @e[scores={Stage=12},type=!minecraft:player] add dead
data merge block -1621 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_b/play"}}'}
setblock -1621 53 -479 minecraft:redstone_block