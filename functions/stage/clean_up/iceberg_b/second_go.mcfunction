bossbar set medabots_server:iceberg_b/time players
bossbar set medabots_server:iceberg_b/robattle players
scoreboard players set @a[scores={Stage=15},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=15},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=15},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=15},tag=enemy_medabot] -1795 50 -419 -180 0
scoreboard players set @s[scores={Stage=15,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=15,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=15,Battle=0}] Battle 0
teleport @s[scores={Stage=15,Battle=0}] -1795 50 -419 -180 0
tag @e[scores={Stage=15},type=!minecraft:player] add dead
data merge block -1796 51 -435 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_b/play"}}'}
setblock -1796 52 -437 minecraft:redstone_block