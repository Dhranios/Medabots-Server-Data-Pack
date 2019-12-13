execute as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=10}] run scoreboard players set @s Stage 10
bossbar set medabots_server:grassland_b/time players
bossbar set medabots_server:grassland_b/robattle players
scoreboard players set @a[scores={Stage=10},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=10},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=10},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=10},tag=enemy_medabot] -1540 51 -367 -180 0
scoreboard players set @s[scores={Stage=10,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=10,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=10,Battle=0}] Battle 0
teleport @s[scores={Stage=10,Battle=0}] -1540 51 -367 -180 0
tag @e[scores={Stage=10},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=10}] StageVersion
scoreboard players reset @a[scores={Stage=10}] Stage
data merge block -1541 52 -414 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_b/play"}}'}
setblock -1541 53 -416 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}