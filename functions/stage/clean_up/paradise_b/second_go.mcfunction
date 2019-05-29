bossbar set medabots_server:paradise_b/time players
bossbar set medabots_server:paradise_b/robattle players
scoreboard players set @a[scores={Stage=22},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=22},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=22},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=22},tag=enemy_medabot] -1634 51 -606 -180 0
scoreboard players set @s[scores={Stage=22,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=22,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=22,Battle=0}] Battle 0
teleport @s[scores={Stage=22,Battle=0}] -1634 51 -606 -180 0
tag @e[scores={Stage=22},type=!minecraft:player] add dead
data merge block -1635 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/paradise_b/play"}}'}
setblock -1635 53 -639 minecraft:redstone_block