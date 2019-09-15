# Set which part is activated
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:dorcus_fourvice"}}}]}] MedapartID 1
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:nin_ninja_ninja_sword"}}}]}] MedapartID 2
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:nin_ninja_ninja_dagger"}}}]}] MedapartID 3
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:fancyroll_magicalbit"}}}]}] MedapartID 4
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:blackstag_blackvice"}}}]}] MedapartID 5
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:darknut_darksword"}}}]}] MedapartID 6
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:zant_usurper_scimitar"}}}]}] MedapartID 7
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:zant_twilight_scimitar"}}}]}] MedapartID 8
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:suzumega_hummer_chopper_sword"}}}]}] MedapartID 9
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:master_core_master_edges"}}}]}] MedapartID 10
scoreboard players set @s[tag=left_arm_selected,nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:metal_general_general_slash"}}}]}] MedapartID 11
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:smilidonad_flexor_sword"}}}]}] MedapartID 12 
scoreboard players set @s[tag=right_arm_selected,nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:rokusho_sword"}}}]}] MedapartID 13

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:iron_sword{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:sword"}}
replaceitem entity @s[scores={ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:iron_sword{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:sword"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[tag=head_selected] HeadUses 1