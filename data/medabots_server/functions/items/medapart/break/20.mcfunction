# Set which part is activated
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{tag:{medabots_server:{part:"left_arm",activated:1b,id:"medabots_server:boarbooster_woollybond"}}}]}] MedapartID 1
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{tag:{medabots_server:{part:"right_arm",activated:1b,id:"medabots_server:boarbooster_drillril"}}}]}] MedapartID 2
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{tag:{medabots_server:{part:"head",activated:1b,id:"medabots_server:god_emperor_death_break"}}}]}] MedapartID 3
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{tag:{medabots_server:{part:"right_arm",activated:1b,id:"medabots_server:yuchitang_plus_diver"}}}]}] MedapartID 4
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{tag:{medabots_server:{part:"right_arm",activated:1b,id:"medabots_server:uglyduck_feathermend"}}}]}] MedapartID 5
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{tag:{medabots_server:{part:"left_arm",activated:1b,id:"medabots_server:rob_gyro_hand"}}}]}] MedapartID 6
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{tag:{medabots_server:{part:"left_arm",activated:1b,id:"medabots_server:yuchitang_minus_diver"}}}]}] MedapartID 7
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{tag:{medabots_server:{part:"head",activated:1b,id:"medabots_server:yuchitang_power_diver"}}}]}] MedapartID 8
clear @s[tag=right_arm_selected] minecraft:fishing_rod{medabots_server:{part:"right_arm",activated:1b}}
clear @s[tag=left_arm_selected] minecraft:fishing_rod{medabots_server:{part:"left_arm",activated:1b}}
clear @s[tag=head_selected] minecraft:fishing_rod{medabots_server:{part:"head",activated:1b}}

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_selected,scores={Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_selected,scores={Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_selected,scores={Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_selected,scores={Drop=0},tag=ally_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_selected,scores={Drop=0},tag=ally_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_selected,scores={Drop=0},tag=ally_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_selected,scores={Drop=0},tag=enemy_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_selected,scores={Drop=0},tag=enemy_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_selected,scores={Drop=0},tag=enemy_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}
replaceitem entity @s[tag=left_arm_selected,scores={Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none",strong:1b}}
replaceitem entity @s[tag=right_arm_selected,scores={Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none",strong:1b}}
replaceitem entity @s[tag=head_selected,scores={Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none",strong:1b}}
replaceitem entity @s[tag=left_arm_selected,scores={Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally",strong:1b}}
replaceitem entity @s[tag=right_arm_selected,scores={Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally",strong:1b}}
replaceitem entity @s[tag=head_selected,scores={Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally",strong:1b}}
replaceitem entity @s[tag=left_arm_selected,scores={Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}
replaceitem entity @s[tag=right_arm_selected,scores={Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}
replaceitem entity @s[tag=head_selected,scores={Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}

# CPU
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^-0.2 ^ {Item:{id:"minecraft:black_wool",Count:1b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}},Tags:["break","new"],PickupDelay:32767s}
execute if entity @s[scores={ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^-0.2 ^ {Item:{id:"minecraft:black_wool",Count:1b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}},Tags:["break","new"],PickupDelay:32767s}
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
scoreboard players remove @s[tag=head_selected,scores={Time=20}] HeadUses 1