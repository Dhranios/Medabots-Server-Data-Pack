# Give the weapon to user
execute if entity @s[nbt={Inventory:[{Slot:34b,tag:{medabots_server:{id:"medabots_server:bullet_placeholder"}}}]}] run item entity @s[type=minecraft:player] inventory.25 replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:15066419,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:4b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
item entity @s[type=!minecraft:player] weapon.offhand replace minecraft:tipped_arrow{CustomModelData:1,Potion:"minecraft:water",CustomPotionColor:15066419,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.bullet"}'},CustomPotionEffects:[{Id:18b,Amplifier:4b,Duration:0,Ambient:1b,ShowParticles:0b}],medabots_server:{id:"medabots_server:bullet"}}
execute unless entity @s[scores={ScoutTime=1..}] run item entity @s[scores={Drop=0}] hotbar.4 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:20s}],medabots_server:{id:"medabots_server:ultra_shot"}}
execute unless entity @s[scores={ScoutTime=1..}] run item entity @s[type=!minecraft:player] weapon.mainhand replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:20s}],medabots_server:{id:"medabots_server:ultra_shot"}}
item entity @s[scores={Drop=0,ScoutTime=1..}] hotbar.4 replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:30s}],medabots_server:{id:"medabots_server:ultra_shot"}}
item entity @s[scores={ScoutTime=1..},type=!minecraft:player] weapon.mainhand replace minecraft:bow{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.shoot"}']},Enchantments:[{id:"minecraft:power",lvl:30s}],medabots_server:{id:"medabots_server:ultra_shot"}}
clear @s minecraft:fishing_rod{medabots_server:{part:"medal",activated:1b}}
