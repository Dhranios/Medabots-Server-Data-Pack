# Set which part is activated
scoreboard players set @s[scores={Break=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:boarbooster_woolybond"}}}]}] MedapartType 1
scoreboard players set @s[scores={Break=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:boarbooster_drillril"}}}]}] MedapartType 2
scoreboard players set @s[scores={Break=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:god_emperor_death_break"}}}]}] MedapartType 3
scoreboard players set @s[scores={Break=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:yuchitang_plus_diver"}}}]}] MedapartType 4
scoreboard players set @s[scores={Break=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:uglyduck_feathermend"}}}]}] MedapartType 5
scoreboard players set @s[scores={Break=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:rob_gyro_hand"}}}]}] MedapartType 6
scoreboard players set @s[scores={Break=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:yuchitang_minus_diver"}}}]}] MedapartType 7
scoreboard players set @s[scores={Break=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:yuchitang_power_diver"}}}]}] MedapartType 8

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^-0.2 ^ {Item:{id:"minecraft:black_wool",Count:1b,tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}},Tags:["break","new"]}
execute if entity @s[scores={ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^-0.2 ^ {Item:{id:"minecraft:black_wool",Count:1b,tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}},Tags:["break","new"]}
execute if entity @s[type=!minecraft:player] anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.2 ^0.3 {CustomName:'{"translate":"medabots_server:move.break"}',Tags:["break"],Duration:1}
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosX run data get entity @s Pos[0] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosY run data get entity @s Pos[1] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosZ run data get entity @s Pos[2] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherX run data get entity @e[type=minecraft:area_effect_cloud,tag=break,limit=1] Pos[0] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherY run data get entity @e[type=minecraft:area_effect_cloud,tag=break,limit=1] Pos[1] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherZ run data get entity @e[type=minecraft:area_effect_cloud,tag=break,limit=1] Pos[2] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherX -= @s PosX
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherY -= @s PosY
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherZ -= @s PosZ
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[0] double 0.01 run scoreboard players get @s OtherX
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[1] double 0.01 run scoreboard players get @s OtherY
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[2] double 0.01 run scoreboard players get @s OtherZ
execute if entity @s[type=!minecraft:player] run tag @e[type=minecraft:item,tag=break,distance=..6,sort=nearest,limit=1,tag=new] remove new
execute if entity @s[type=!minecraft:player] run kill @e[type=minecraft:area_effect_cloud,tag=break]

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Break=2,Time=20}] HeadUses 1