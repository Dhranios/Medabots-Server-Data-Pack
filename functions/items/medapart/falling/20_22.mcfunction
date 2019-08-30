# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=1,Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.1 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=3,Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.2 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=2,Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.3 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=1,Drop=0},tag=ally_medabot] hotbar.1 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=3,Drop=0},tag=ally_medabot] hotbar.2 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=2,Drop=0},tag=ally_medabot] hotbar.3 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=1,Drop=0},tag=enemy_medabot] hotbar.1 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=3,Drop=0},tag=enemy_medabot] hotbar.2 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Falling=2,Drop=0},tag=enemy_medabot] hotbar.3 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy"}}
replaceitem entity @s[scores={Falling=1,Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.1 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"none",strong:1b}}
replaceitem entity @s[scores={Falling=3,Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.2 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"none",strong:1b}}
replaceitem entity @s[scores={Falling=2,Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.3 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"none",strong:1b}}
replaceitem entity @s[scores={Falling=1,Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.1 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"ally",strong:1b}}
replaceitem entity @s[scores={Falling=3,Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.2 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"ally",strong:1b}}
replaceitem entity @s[scores={Falling=2,Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.3 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"ally",strong:1b}}
replaceitem entity @s[scores={Falling=1,Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.1 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy",strong:1b}}
replaceitem entity @s[scores={Falling=3,Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.2 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy",strong:1b}}
replaceitem entity @s[scores={Falling=2,Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.3 minecraft:yellow_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.falling"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.falling"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:falling",team:"enemy",strong:1b}}