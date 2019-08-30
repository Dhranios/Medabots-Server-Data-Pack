# Set which part was activated
scoreboard players set @s[scores={Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:hellphoenix_flame_gun"}}}]}] MedapartType 1
scoreboard players set @s[scores={Melt=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:helphoenix_blast_gun"}}}]}] MedapartType 2
scoreboard players set @s[scores={Melt=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:hellphoenix_fire_gun"}}}]}] MedapartType 3
scoreboard players set @s[scores={Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_rat"}}}]}] MedapartType 4
scoreboard players set @s[scores={Melt=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_dog"}}}]}] MedapartType 5
scoreboard players set @s[scores={Melt=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:poison_scorpi_scorpion_cat"}}}]}] MedapartType 6
scoreboard players set @s[scores={Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_arm"}}}]}] MedapartType 7
scoreboard players set @s[scores={Melt=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_head"}}}]}] MedapartType 8
scoreboard players set @s[scores={Melt=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:flame_tisara_sala_hand"}}}]}] MedapartType 9
scoreboard players set @s[scores={Melt=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_breathfire"}}}]}] MedapartType 10
scoreboard players set @s[scores={Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:sphere_doomers_fire_doomer"}}}]}] MedapartType 11
scoreboard players set @s[scores={Melt=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:galleom_flaming_engine"}}}]}] MedapartType 12

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Melt=1..},type=!minecraft:player] weapon.mainhand minecraft:fire_charge{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.melt"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:1s}],medabots_server:{id:"medabots_server:melt"}}
replaceitem entity @s[scores={Melt=1..,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:fire_charge{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.melt"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:2s}],medabots_server:{id:"medabots_server:melt"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Melt=2}] HeadUses 1