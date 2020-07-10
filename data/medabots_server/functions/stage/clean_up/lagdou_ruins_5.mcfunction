execute as @e[x=0,y=47,z=0,dx=58,dy=10,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=40}] run scoreboard players set @s Stage 40
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
scoreboard players set @a[scores={Stage=40},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=40},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=40},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=40},tag=medabot,distance=0.1..] 30 58 57 -180 0
scoreboard players set @s[scores={Stage=40,State=0}] Music 0
scoreboard players set @s[scores={Stage=40,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=40,State=0}] State 0
teleport @s[scores={Stage=40,State=0}] 30 58 57 -180 0
tag @e[scores={Stage=40},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=40},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=40},distance=0.1..] Stage
data merge block 29 59 48 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_5/play"}}'}
setblock 29 60 46 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}