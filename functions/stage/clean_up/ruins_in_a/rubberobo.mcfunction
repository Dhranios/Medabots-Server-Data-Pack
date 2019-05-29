fill -1651 46 -286 -1650 46 -286 minecraft:air
setblock -1651 46 -287 minecraft:wall_torch[facing=east]
setblock -1650 46 -287 minecraft:wall_torch[facing=west]
setblock -1662 47 -336 minecraft:air
setblock -1662 46 -336 minecraft:wall_torch[facing=east]
bossbar set medabots_server:ruins_in_a/time players
bossbar set medabots_server:ruins_in_a/robattle players
scoreboard players set @a[scores={Stage=8},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=8},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=8},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=8},tag=enemy_medabot] -1683 50 -259 -180 0
scoreboard players set @s[scores={Stage=8,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=8,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=8,Battle=0}] Battle 0
teleport @s[scores={Stage=8,Battle=0}] -1683 50 -259 -180 0
tag @e[scores={Stage=8},type=!minecraft:player] add dead
data merge block -1683 51 -277 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_a/play"}}'}
setblock -1685 52 -277 minecraft:redstone_block