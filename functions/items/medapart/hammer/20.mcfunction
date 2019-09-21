# Set which part is activated
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:dorcus_intensebeat"}}}]}] MedapartID 1
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_strike_hit"}}}]}] MedapartID 2
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_crab_hit"}}}]}] MedapartID 3
scoreboard players set @s[tag=head_selected,nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:boarbooster_boartusk"}}}]}] MedapartID 4
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:blackstag_blackbeat"}}}]}] MedapartID 5
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:amelia_silver_axe"}}}]}] MedapartID 6
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:ashton_ash_buster"}}}]}] MedapartID 7
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:smilidonad_straw_hammer"}}}]}] MedapartID 8
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:rokusho_pipo_hammer"}}}]}] MedapartID 9
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:suzumega_hummer_light_hammer"}}}]}] MedapartID 10
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:galleom_jet_engine"}}}]}] MedapartID 11

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=left_arm_selected,scores={Drop=0}] hotbar.1 minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=right_arm_selected,scores={Drop=0}] hotbar.2 minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[tag=head_selected,scores={Drop=0}] hotbar.3 minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[tag=left_arm_selected,scores={Drop=0,ScoutTime=1..}] hotbar.1 minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[tag=right_arm_selected,scores={Drop=0,ScoutTime=1..}] hotbar.2 minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[tag=head_selected,scores={Drop=0,ScoutTime=1..}] hotbar.3 minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:hammer"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=head_selected] HeadUses 1