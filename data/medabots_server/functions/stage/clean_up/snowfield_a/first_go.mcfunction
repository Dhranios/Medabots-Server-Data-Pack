bossbar set medabots_server:snowfield_a/time players
bossbar set medabots_server:snowfield_a/robattle players
scoreboard players set @a[scores={Stage=5},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=5},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=5},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=5},tag=enemy_medabot] -1620 51 -216 -180 0
scoreboard players set @s[scores={Stage=5,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=5,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=5,Battle=0}] Battle 0
teleport @s[scores={Stage=5,Battle=0}] -1620 51 -216 -180 0
tag @e[scores={Stage=5},type=!minecraft:player] add dead
data merge block -1621 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_a/play"}}'}
setblock -1621 53 -249 minecraft:redstone_block