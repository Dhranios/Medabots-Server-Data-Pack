# Set which part was activated
scoreboard players set @s[tag=selected_left_arm,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:hellphoenix_flame_gun"}}}]}] MedapartID 1
scoreboard players set @s[tag=selected_head,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:helphoenix_blast_gun"}}}]}] MedapartID 2
scoreboard players set @s[tag=selected_right_arm,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:hellphoenix_fire_gun"}}}]}] MedapartID 3
scoreboard players set @s[tag=selected_left_arm,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_rat"}}}]}] MedapartID 4
scoreboard players set @s[tag=selected_head,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_dog"}}}]}] MedapartID 5
scoreboard players set @s[tag=selected_right_arm,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_cat"}}}]}] MedapartID 6
scoreboard players set @s[tag=selected_left_arm,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_arm"}}}]}] MedapartID 7
scoreboard players set @s[tag=selected_head,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_head"}}}]}] MedapartID 8
scoreboard players set @s[tag=selected_right_arm,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_hand"}}}]}] MedapartID 9
scoreboard players set @s[tag=selected_head,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_breathfire"}}}]}] MedapartID 10
scoreboard players set @s[tag=selected_left_arm,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:sphere_doomers_fire_doomer"}}}]}] MedapartID 11
scoreboard players set @s[tag=selected_left_arm,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:galleom_flaming_engine"}}}]}] MedapartID 12

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:fire_charge{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.melt"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],medabots_server:{id:"medabots_server:melt"}}
replaceitem entity @s[scores={ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:fire_charge{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.melt"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:2s}],medabots_server:{id:"medabots_server:melt"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=selected_head] HeadUses 1