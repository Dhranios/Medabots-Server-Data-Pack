# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=1,Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=3,Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=2,Drop=0},tag=!ally_medabot,tag=!enemy_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=1,Drop=0},tag=ally_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=3,Drop=0},tag=ally_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=2,Drop=0},tag=ally_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=1,Drop=0},tag=enemy_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=3,Drop=0},tag=enemy_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Break=2,Drop=0},tag=enemy_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy"}}
replaceitem entity @s[scores={Break=1,Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none",strong:1b}}
replaceitem entity @s[scores={Break=3,Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none",strong:1b}}
replaceitem entity @s[scores={Break=2,Drop=0,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"none",strong:1b}}
replaceitem entity @s[scores={Break=1,Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally",strong:1b}}
replaceitem entity @s[scores={Break=3,Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally",strong:1b}}
replaceitem entity @s[scores={Break=2,Drop=0,ScoutTime=1..},tag=ally_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"ally",strong:1b}}
replaceitem entity @s[scores={Break=1,Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.1 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}
replaceitem entity @s[scores={Break=3,Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.2 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}
replaceitem entity @s[scores={Break=2,Drop=0,ScoutTime=1..},tag=enemy_medabot] hotbar.3 minecraft:black_wool{CustomModelData:1,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.break"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop"}']},medabots_server:{id:"medabots_server:break",team:"enemy",strong:1b}}
