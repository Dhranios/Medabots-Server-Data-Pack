bossbar set medabots_server:ruins_in_b/time players
bossbar set medabots_server:ruins_in_b/robattle players
scoreboard players set @a[scores={Stage=17},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=17},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=17},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=17},tag=enemy_medabot] -1620 50 -526 -180 0
scoreboard players set @s[scores={Stage=17,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=17,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=17,Battle=0}] Battle 0
teleport @s[scores={Stage=17,Battle=0}] -1620 50 -526 -180 0
tag @e[scores={Stage=17},type=!minecraft:player] add dead
data merge block -1621 51 -570 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_b/play"}}'}
setblock -1621 52 -572 minecraft:redstone_block