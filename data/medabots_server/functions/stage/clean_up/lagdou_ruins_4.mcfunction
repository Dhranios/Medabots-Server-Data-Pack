execute as @e[x=0,y=46,z=0,dx=62,dy=10,dz=86,type=!minecraft:player] unless entity @s[scores={Stage=39}] run scoreboard players set @s Stage 39
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1314 47 -119 -1376 49 -200 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
scoreboard players set @a[scores={Stage=39},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=39},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=39},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=39},tag=medabot,distance=0.1..] 31 58 78 -180 0
scoreboard players set @s[scores={Stage=39,State=0}] Music 0
scoreboard players set @s[scores={Stage=39,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=39,State=0}] State 0
teleport @s[scores={Stage=39,State=0}] 31 58 78 -180 0
tag @e[scores={Stage=39},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=39},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=39},distance=0.1..] Stage
data merge block 30 59 72 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_4/play"}}'}
setblock 30 60 70 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}