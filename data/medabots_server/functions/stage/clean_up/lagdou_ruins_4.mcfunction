execute as @e[x=-1376,y=39,z=-205,dx=62,dy=10,dz=86,type=!minecraft:player] unless entity @s[scores={Stage=39}] run scoreboard players set @s Stage 39
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
scoreboard players set @a[scores={Stage=39},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=39},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=39},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=39},tag=enemy_medabot] -1345 51 -127 -180 0
scoreboard players set @s[scores={Stage=39,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=39,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=39,Battle=0}] Battle 0
teleport @s[scores={Stage=39,Battle=0}] -1345 51 -127 -180 0
tag @e[scores={Stage=39},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=39}] StageVersion
scoreboard players reset @a[scores={Stage=39}] Stage
data merge block -1346 52 -133 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_4/play"}}'}
setblock -1346 53 -135 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}