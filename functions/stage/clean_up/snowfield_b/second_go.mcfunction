bossbar set medabots_server:snowfield_b/time players
bossbar set medabots_server:snowfield_b/robattle players
scoreboard players set @a[scores={Stage=14},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=14},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=14},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=14},tag=enemy_medabot] -1715 51 -492 -180 0
tag @e[scores={Stage=14},type=!minecraft:player] add dead
data merge block -1716 52 -538 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_b/play"}}'}
setblock -1716 53 -540 minecraft:redstone_block