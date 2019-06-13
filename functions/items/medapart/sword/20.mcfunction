# Set which part is activated
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:dorcus_fourvice"}}}]}] MedapartType 1
scoreboard players set @s[scores={Sword=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:nin_ninja_ninja_sword"}}}]}] MedapartType 2
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:nin_ninja_ninja_dagger"}}}]}] MedapartType 3
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:fancyroll_magicalbit"}}}]}] MedapartType 4
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:blackstag_blackvice"}}}]}] MedapartType 5
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:darknut_darksword"}}}]}] MedapartType 6
scoreboard players set @s[scores={Sword=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:zant_usurper_scimitar"}}}]}] MedapartType 7
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:zant_twilight_scimitar"}}}]}] MedapartType 8
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:suzumega_hummer_chopper_sword"}}}]}] MedapartType 9
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:master_code_master_edges"}}}]}] MedapartType 10
scoreboard players set @s[scores={Sword=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:metal_general_general_slash"}}}]}] MedapartType 11
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:smilidonad_flexor_sword"}}}]}] MedapartType 12 
scoreboard players set @s[scores={Sword=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:rokusho_sword"}}}]}] MedapartType 13

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Sword=1..},type=!minecraft:player] weapon.mainhand minecraft:iron_sword{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:sword"}}
replaceitem entity @s[scores={Sword=1..,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:iron_sword{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.sword"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.sword"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:sword"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Sword=2}] HeadUses 1