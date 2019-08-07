bossbar set medabots_server:ruins_out_c/time players
bossbar set medabots_server:ruins_out_c/robattle players
scoreboard players set @a[scores={Stage=27},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=27},tag=enemy_medabot] MusicType 22
scoreboard players set @a[scores={Stage=27},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=27},tag=enemy_medabot] -1635 50 -673 -180 0
scoreboard players set @s[scores={Stage=27,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=27,Battle=0}] MusicType 22
scoreboard players set @s[scores={Stage=27,Battle=0}] Battle 0
teleport @s[scores={Stage=27,Battle=0}] -1635 50 -673 -180 0
tag @e[scores={Stage=27},type=!minecraft:player] add dead
data merge block -1636 51 -704 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_c/play"}}'}
setblock -1636 52 -706 minecraft:redstone_block