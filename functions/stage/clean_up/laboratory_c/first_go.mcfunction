bossbar set medabots_server:laboratory_c/time players
bossbar set medabots_server:laboratory_c/robattle players
scoreboard players set @a[scores={Stage=28},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=28},tag=enemy_medabot] MusicType 22
scoreboard players set @a[scores={Stage=28},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=28},tag=enemy_medabot] -1586 50 -599 -180 0
scoreboard players set @s[scores={Stage=28,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=28,Battle=0}] MusicType 22
scoreboard players set @s[scores={Stage=28,Battle=0}] Battle 0
teleport @s[scores={Stage=28,Battle=0}] -1586 50 -599 -180 0
tag @e[scores={Stage=28},type=!minecraft:player] add dead
data merge block -1587 51 -619 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_c/play"}}'}
setblock -1587 52 -621 minecraft:redstone_block