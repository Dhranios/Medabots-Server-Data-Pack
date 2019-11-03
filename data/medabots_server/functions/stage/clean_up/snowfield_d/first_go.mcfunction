bossbar set medabots_server:snowfield_d/time players
bossbar set medabots_server:snowfield_d/robattle players
scoreboard players set @a[scores={Stage=32},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=32},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=32},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=32},tag=enemy_medabot] -1572 51 -784 -180 0
scoreboard players set @s[scores={Stage=32,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=32,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=32,Battle=0}] Battle 0
teleport @s[scores={Stage=32,Battle=0}] -1572 51 -784 -180 0
tag @e[scores={Stage=32},type=!minecraft:player] add dead
data merge block -1573 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_d/play"}}'}
setblock -1573 53 -817 minecraft:redstone_block