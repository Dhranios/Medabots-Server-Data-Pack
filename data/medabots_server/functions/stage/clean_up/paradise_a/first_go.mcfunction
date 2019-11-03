bossbar set medabots_server:paradise_a/time players
bossbar set medabots_server:paradise_a/robattle players
scoreboard players set @a[scores={Stage=21},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=21},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=21},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=21},tag=enemy_medabot] -1714 51 -683 -180 0
scoreboard players set @s[scores={Stage=21,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=21,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=21,Battle=0}] Battle 0
teleport @s[scores={Stage=21,Battle=0}] -1714 51 -683 -180 0
tag @e[scores={Stage=21},type=!minecraft:player] add dead
data merge block -1715 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/paradise_a/play"}}'}
setblock -1715 53 -732 minecraft:redstone_block