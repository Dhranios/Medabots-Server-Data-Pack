# Give the weapon
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Hammer=1,Drop=0}] hotbar.1 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Hammer=3,Drop=0}] hotbar.2 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
execute unless entity @s[scores={ScoutTime=1..}] run replaceitem entity @s[scores={Hammer=2,Drop=0}] hotbar.3 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={Hammer=1,Drop=0,ScoutTime=1..}] hotbar.1 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={Hammer=3,Drop=0,ScoutTime=1..}] hotbar.2 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:hammer"}}
replaceitem entity @s[scores={Hammer=2,Drop=0,ScoutTime=1..}] hotbar.3 minecraft:iron_axe{Unbreakable:1b,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:item.generic.strike"}']},Enchantments:[{id:"minecraft:sharpness",lvl:1s}],medabots_server:{id:"medabots_server:hammer"}}
