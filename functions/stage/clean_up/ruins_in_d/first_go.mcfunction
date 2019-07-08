bossbar set medabots_server:ruins_in_d/time players
bossbar set medabots_server:ruins_in_d/robattle players
scoreboard players set @a[scores={Stage=34},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=34},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=34},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=34},tag=enemy_medabot] -1763 50 -755 -180 0
scoreboard players set @s[scores={Stage=34,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=34,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=34,Battle=0}] Battle 0
teleport @s[scores={Stage=34,Battle=0}] -1763 50 -755 -180 0
tag @e[scores={Stage=34},type=!minecraft:player] add dead
data merge block -1764 51 -770 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_d/play"}}'}
setblock -1764 52 -772 minecraft:redstone_block