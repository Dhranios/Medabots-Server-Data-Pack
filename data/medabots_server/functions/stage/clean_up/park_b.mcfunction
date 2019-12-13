execute as @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=20}] run scoreboard players set @s Stage 20
fill -1857 50 -730 -1764 44 -637 minecraft:air replace minecraft:barrier
bossbar set medabots_server:park_b/time players
bossbar set medabots_server:park_b/robattle players
scoreboard players set @a[scores={Stage=20},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=20},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=20},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=20},tag=enemy_medabot] -1811 51 -683 -180 0
scoreboard players set @s[scores={Stage=20,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=20,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=20,Battle=0}] Battle 0
teleport @s[scores={Stage=20,Battle=0}] -1811 51 -683 -180 0
tag @e[scores={Stage=20},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=20}] StageVersion
scoreboard players reset @a[scores={Stage=20}] Stage
tag @e[scores={Stage=20},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=20},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1812 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_b/play"}}'}
setblock -1812 53 -732 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}