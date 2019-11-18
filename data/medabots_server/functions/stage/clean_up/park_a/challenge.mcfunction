bossbar set medabots_server:park_a/time players
bossbar set medabots_server:park_a/robattle players
bossbar set medabots_server:park_a/time max 72000
scoreboard players set @a[scores={Stage=19},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=19},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=19},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=19},tag=enemy_medabot] -1809 51 -587 -180 0
scoreboard players set @s[scores={Stage=19,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=19,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=19,Battle=0}] Battle 0
teleport @s[scores={Stage=19,Battle=0}] -1809 51 -587 -180 0
tag @e[scores={Stage=19},type=!minecraft:player] add dead
data merge block -1810 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_a/play"}}'}
setblock -1810 53 -635 minecraft:redstone_block