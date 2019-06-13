# Set which part is activated
scoreboard players set @s[scores={Falling=1},nbt={Inventory:[{Slot:1b,tag:{medabots_server:{id:"medabots_server:baroncastle_gatemonarch"}}}]}] MedapartType 1
scoreboard players set @s[scores={Falling=3},nbt={Inventory:[{Slot:2b,tag:{medabots_server:{id:"medabots_server:magicalcard_onetwotree"}}}]}] MedapartType 2
scoreboard players set @s[scores={Falling=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:aimflash_strobe"}}}]}] MedapartType 3
scoreboard players set @s[scores={Falling=2},nbt={Inventory:[{Slot:3b,tag:{medabots_server:{id:"medabots_server:baroncastle_king_balcony"}}}]}] MedapartType 4

# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Falling=1..},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^ ^2.5 {Item:{id:"minecraft:yellow_wool",Count:1b,tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy"}}}}
execute if entity @s[scores={Falling=1..,ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:item ^ ^ ^2.5 {Item:{id:"minecraft:yellow_wool",Count:1b,tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy",strong:1b}}}}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Falling=2}] HeadUses 1