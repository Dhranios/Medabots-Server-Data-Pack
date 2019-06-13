# Remove the weapon from user
clear @s minecraft:tipped_arrow{medabots_server:{id:"medabots_server:bullet"}}
clear @s minecraft:bow{medabots_server:{id:"medabots_server:ultra_shot"}}
replaceitem entity @s[type=!minecraft:player] weapon.offhand minecraft:air
replaceitem entity @s[type=!minecraft:player] weapon.mainhand minecraft:air

# Give back the original medal
replaceitem entity @s hotbar.4 minecraft:gold_ingot{CustomModelData:2,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s Medaforce 0
scoreboard players set @s Time 0
scoreboard players set @s Charge 0

# Give back the medal to alien user
replaceitem entity @s[tag=random_change] hotbar.4 minecraft:gold_ingot{CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:1b,version:1}} 50
tag @s[tag=random_change] remove random_change