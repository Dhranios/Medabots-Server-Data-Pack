execute as @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=11}] run scoreboard players set @s Stage 11
bossbar set medabots_server:rock_b/time players
bossbar set medabots_server:rock_b/robattle players
scoreboard players set @a[scores={Stage=11},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=11},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=11},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=11},tag=enemy_medabot] -1604 51 -351 -180 0
scoreboard players set @s[scores={Stage=11,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=11,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=11,Battle=0}] Battle 0
teleport @s[scores={Stage=11,Battle=0}] -1604 51 -351 -180 0
tag @e[scores={Stage=11},type=!minecraft:player] add dead
data merge block -1605 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_b/play"}}'}
setblock -1605 53 -384 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}