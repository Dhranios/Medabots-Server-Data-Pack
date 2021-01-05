# Give back the original medal
clear @s minecraft:fishing_rod{medabots_server:{part:"medal",activated:1b}}
replaceitem entity @s[tag=hostile] hotbar.4 minecraft:gold_ingot{CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.devil_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.devil_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:devil_medal",move:"charge_medaforce",part:"medal",activated:1b,version:1}} 50

# Finish the move
scoreboard players set @s Medaforce 0
scoreboard players set @s Time 0
scoreboard players set @s Charge 0

# Give back the medal to alien user
replaceitem entity @s[tag=random_change,tag=hostile] hotbar.4 minecraft:gold_ingot{CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{id:"medabots_server:alien_medal",move:"charge_medaforce",part:"medal",activated:1b,version:1}} 50
tag @s[tag=random_change] remove random_change