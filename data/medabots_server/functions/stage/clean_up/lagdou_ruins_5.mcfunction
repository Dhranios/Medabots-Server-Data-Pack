execute as @e[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=40}] run scoreboard players set @s Stage 40
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1318 45 -208 -1376 46 -276 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
scoreboard players set @a[scores={Stage=40},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=40},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=40},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=40},tag=medabot,distance=0.1..] -1346 50 -219 -180 0
scoreboard players set @s[scores={Stage=40,State=0}] Music 0
scoreboard players set @s[scores={Stage=40,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=40,State=0}] State 0
teleport @s[scores={Stage=40,State=0}] -1346 50 -219 -180 0
tag @e[scores={Stage=40},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=40}] StageVersion
scoreboard players reset @a[scores={Stage=40}] Stage
data merge block -1347 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_5/play"}}'}
setblock -1347 52 -230 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}