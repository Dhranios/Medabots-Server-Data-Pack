bossbar set medabots_server:jungle_d/time players
bossbar set medabots_server:jungle_d/robattle players
scoreboard players set @a[scores={Stage=31},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=31},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=31},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=31},tag=enemy_medabot] -1635 51 -737 -180 0
scoreboard players set @s[scores={Stage=31,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=31,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=31,Battle=0}] Battle 0
teleport @s[scores={Stage=31,Battle=0}] -1635 51 -737 -180 0
tag @e[scores={Stage=31},type=!minecraft:player] add dead
data merge block -1636 52 -767 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_d/play"}}'}
setblock -1636 53 -769 minecraft:redstone_block