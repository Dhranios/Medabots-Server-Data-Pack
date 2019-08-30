# Set which part is activated
scoreboard players set @s[scores={Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:dorcus_intensebeat"}}}]}] MedapartType 1
scoreboard players set @s[scores={Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_strike_hit"}}}]}] MedapartType 2
scoreboard players set @s[scores={Hammer=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:attack_tyrano_crab_hit"}}}]}] MedapartType 3
scoreboard players set @s[scores={Hammer=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:boarbooster_boartusk"}}}]}] MedapartType 4
scoreboard players set @s[scores={Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:blackstag_blackbeat"}}}]}] MedapartType 5
scoreboard players set @s[scores={Hammer=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:amelia_silver_axe"}}}]}] MedapartType 6
scoreboard players set @s[scores={Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:ashton_ash_buster"}}}]}] MedapartType 7
scoreboard players set @s[scores={Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:smilidonad_straw_hammer"}}}]}] MedapartType 8
scoreboard players set @s[scores={Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:rokusho_pipo_hammer"}}}]}] MedapartType 9
scoreboard players set @s[scores={Hammer=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:suzumega_hummer_light_hammer"}}}]}] MedapartType 10
scoreboard players set @s[scores={Hammer=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:galleom_jet_engine"}}}]}] MedapartType 11

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Hammer=1..},type=!minecraft:player] weapon.mainhand minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={Hammer=1..,ScoutTime=1..},type=!minecraft:player] weapon.mainhand minecraft:iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:hammer"}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Hammer=2}] HeadUses 1