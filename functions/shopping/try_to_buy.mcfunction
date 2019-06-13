# Sunglasses
tellraw @s[scores={Shopping=1,Money=..63}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=1,Money=64..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.sunglasses"}]}]}
give @s[scores={Shopping=1,Money=64..}] minecraft:chainmail_helmet{Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.sunglasses\"}"},AttributeModifiers:[],medabots_server:{id:"medabots_server:sunglasses"}}
scoreboard players remove @s[scores={Shopping=1,Money=64..}] Money 64

# Espresso
tellraw @s[scores={Shopping=2,Money=..49}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=2,Money=50..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.espresso"}]}]}
give @s[scores={Shopping=2,Money=50..}] minecraft:beetroot_soup{display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.espresso\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.espresso.description\"}"]},medabots_server:{id:"medabots_server:espresso"}}
scoreboard players remove @s[scores={Shopping=2,Money=50..}] Money 50

# Unknown crown
tellraw @s[scores={Shopping=3,Money=..12799},advancements={medabots_server:special_items/passes/dimensional=false}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=3,Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you.unknown_crown"}]}
give @s[scores={Shopping=3,Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] minecraft:golden_helmet{Unbreakable:1b,HideFlags:4,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.unknown_crown\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.unknown_crown.description.1\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.unknown_crown.description.2\"}"]},AttributeModifiers:[],medabots_server:{id:"medabots_server:unknown_crown"}}
tag @s[scores={Shopping=3,Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] add dialog_magolor
advancement grant @s[scores={Shopping=3,Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] only medabots_server:wave_1/you_you_traitor
scoreboard players remove @s[scores={Shopping=3,Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] Money 12800

# Sell 50 iron nuggets
execute store result score #temp Money run clear @s[scores={Shopping=4}] minecraft:iron_nugget 0
execute if score #temp Money matches ..49 run tellraw @s[scores={Shopping=4}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mineral_buyer"},{"translate":"medabots_server:message.shop.too_expensive"}]}
execute if score #temp Money matches 50.. run tellraw @s[scores={Shopping=4}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mineral_buyer"},{"translate":"medabots_server:message.shop.sold"}]}
execute if score #temp Money matches 50.. run clear @s[scores={Shopping=4}] minecraft:iron_nugget 50
execute if score #temp Money matches 50.. run scoreboard players add @s[scores={Shopping=4}] Money 1

# Sell 2 iron ingots
execute store result score #temp Money run clear @s[scores={Shopping=5}] minecraft:iron_ingot 0
execute if score #temp Money matches ..1 run tellraw @s[scores={Shopping=5}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mineral_buyer"},{"translate":"medabots_server:message.shop.too_expensive"}]}
execute if score #temp Money matches 2.. run tellraw @s[scores={Shopping=5}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mineral_buyer"},{"translate":"medabots_server:message.shop.sold"}]}
execute if score #temp Money matches 2.. run clear @s[scores={Shopping=5}] minecraft:iron_ingot 2
execute if score #temp Money matches 2.. run scoreboard players add @s[scores={Shopping=5}] Money 1
