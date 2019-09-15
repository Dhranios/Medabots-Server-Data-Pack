# Set which part is activated
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_veryweighter"}}}]}] MedapartID 1
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_hardweighter"}}}]}] MedapartID 2
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:dragonbeetle_heavyweighter"}}}]}] MedapartID 3
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:king_pharaoh_dark_hall"}}}]}] MedapartID 4
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:uglyduck_featherdone"}}}]}] MedapartID 5
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:rob_stack_arm"}}}]}] MedapartID 6
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:ashton_ash_breaker"}}}]}] MedapartID 7
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:magolor_magic_hand"}}}]}] MedapartID 8
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:king_pharaoh_black_hall"}}}]}] MedapartID 9

# Give the weapon
# Give the weapon to user
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^-0.2 ^ {CustomName:'{"translate":"medabots_server:move.press"}',Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.press"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:press"}}},Tags:["press","enemy_team"],NoGravity:1b,Tags:["press","new"]}
execute if entity @s[scores={ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^-0.2 ^ {CustomName:'{"translate":"medabots_server:move.press"}',Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.press"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.throw"}']},medabots_server:{id:"medabots_server:press"}}},Tags:["press","enemy_team","strong"],NoGravity:1b,Tags:["press","new"]}
execute if entity @s[type=!minecraft:player] anchored eyes run summon minecraft:area_effect_cloud ^ ^-0.2 ^2 {CustomName:'{"translate":"medabots_server:move.press"}',Tags:["press"],Duration:1}
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosX run data get entity @s Pos[0] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosY run data get entity @s Pos[1] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result score @s PosZ run data get entity @s Pos[2] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherX run data get entity @e[type=minecraft:area_effect_cloud,tag=press,limit=1] Pos[0] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherY run data get entity @e[type=minecraft:area_effect_cloud,tag=press,limit=1] Pos[1] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result score @s OtherZ run data get entity @e[type=minecraft:area_effect_cloud,tag=press,limit=1] Pos[2] 100
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherX -= @s PosX
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherY -= @s PosY
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] run scoreboard players operation @s OtherZ -= @s PosZ
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[0] double 0.01 run scoreboard players get @s OtherX
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[1] double 0.01 run scoreboard players get @s OtherY
execute if entity @s[type=!minecraft:player] as @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] store result entity @s Motion[2] double 0.01 run scoreboard players get @s OtherZ
execute if entity @s[type=!minecraft:player] run tag @e[type=minecraft:snowball,tag=press,distance=..6,sort=nearest,limit=1,tag=new] remove new
execute if entity @s[type=!minecraft:player] run kill @e[type=minecraft:area_effect_cloud,tag=press]

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=head_selected] HeadUses 1