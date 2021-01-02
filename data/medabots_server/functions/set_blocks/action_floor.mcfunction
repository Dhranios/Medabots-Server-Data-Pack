summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:block.action_floor"}',Tags:["action_floor"],Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:10,Unbreakable:1b,CustomModelData:35}}]}
execute store result score @e[distance=..0.7,tag=action_floor,limit=1] ActionFloorNr run data get storage medabots_server:data unique_id.action_floor
execute store result storage medabots_server:data unique_id.action_floor int 1 run scoreboard players add @e[distance=..0.7,tag=action_floor,limit=1] ActionFloorNr 1
scoreboard players set @e[distance=..0.7,tag=action_floor] Time -100
scoreboard players set @e[distance=..0.7,tag=action_floor] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=action_floor] PowerAmount 0