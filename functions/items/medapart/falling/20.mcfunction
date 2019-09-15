# Set which part is activated
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:baroncastle_gatemonarch"}}}]}] MedapartID 1
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:magicalcard_onetwotree"}}}]}] MedapartID 2
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:aimflash_strobe"}}}]}] MedapartID 3
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:baroncastle_king_balcony"}}}]}] MedapartID 4

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^-0.2 ^ {Item:{id:"minecraft:yellow_wool",Count:1b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy"}}},Tags:["falling","new"],PickupDelay:32767s}
execute if entity @s[scores={ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^-0.2 ^ {Item:{id:"minecraft:yellow_wool",Count:1b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy",strong:1b}}},Tags:["falling","new"],PickupDelay:32767s}
execute if entity @s[type=!minecraft:player] anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.2 ^0.3 {CustomName:'{"translate":"medabots_server:move.falling"}',Tags:["falling"],Duration:1}
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosX run data get entity @s Pos[0] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosY run data get entity @s Pos[1] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosZ run data get entity @s Pos[2] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherX run data get entity @e[type=minecraft:area_effect_cloud,tag=falling,limit=1] Pos[0] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherY run data get entity @e[type=minecraft:area_effect_cloud,tag=falling,limit=1] Pos[1] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherZ run data get entity @e[type=minecraft:area_effect_cloud,tag=falling,limit=1] Pos[2] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherX -= @s PosX
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherY -= @s PosY
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherZ -= @s PosZ
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[0] double 0.01 run scoreboard players get @s OtherX
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[1] double 0.01 run scoreboard players get @s OtherY
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[2] double 0.01 run scoreboard players get @s OtherZ
execute if entity @s[type=!minecraft:player] run tag @e[type=minecraft:item,tag=falling,distance=..6,sort=nearest,limit=1,tag=new] remove new
execute if entity @s[type=!minecraft:player] run kill @e[type=minecraft:area_effect_cloud,tag=falling]

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=head_selected] HeadUses 1