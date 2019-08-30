# Sunglasses
tellraw @s[scores={Shopping=1,Money=..63}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=1,Money=64..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.sunglasses"}]}]}
give @s[scores={Shopping=1,Money=64..}] minecraft:chainmail_helmet{Unbreakable:1b,HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sunglasses"}'},AttributeModifiers:[],medabots_server:{id:"medabots_server:sunglasses"}}
scoreboard players remove @s[scores={Shopping=1,Money=64..}] Money 64

# Espresso
tellraw @s[scores={Shopping=2,Money=..49}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=2,Money=50..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.espresso"}]}]}
give @s[scores={Shopping=2,Money=50..}] minecraft:beetroot_soup{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.espresso"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.espresso.description"}']},medabots_server:{id:"medabots_server:espresso"}}
scoreboard players remove @s[scores={Shopping=2,Money=50..}] Money 50

# Unknown crown
tellraw @s[scores={Shopping=3,Money=..12799},advancements={medabots_server:special_items/passes/dimensional=false}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=3,Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman"},{"translate":"medabots_server:message.shop.thank_you.unknown_crown"}]}
give @s[scores={Shopping=3,Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] minecraft:golden_helmet{Unbreakable:1b,HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown.description.1"}','{"italic":false,"color":"white","translate":"medabots_server:item.unknown_crown.description.2"}']},AttributeModifiers:[],medabots_server:{id:"medabots_server:unknown_crown"}}
tag @s[scores={Shopping=3,Money=12800..},advancements={medabots_server:special_items/passes/dimensional=false}] add dialog_other_magolor_appears
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

# Alien Medal
tellraw @s[scores={Shopping=6,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=6,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.alien_medal"}]}]}
execute if entity @s[scores={Shopping=6,Money=500..}] run function medabots_server:give_items/medal/alien
scoreboard players remove @s[scores={Shopping=6,Money=500..}] Money 500

# Chameleon Medal
tellraw @s[scores={Shopping=7,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=7,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.chameleon_medal"}]}]}
execute if entity @s[scores={Shopping=7,Money=500..}] run function medabots_server:give_items/medal/chameleon
scoreboard players remove @s[scores={Shopping=7,Money=500..}] Money 500

# Devil Medal
tellraw @s[scores={Shopping=8,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=8,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.devil_medal"}]}]}
execute if entity @s[scores={Shopping=8,Money=500..}] run function medabots_server:give_items/medal/devil
scoreboard players remove @s[scores={Shopping=8,Money=500..}] Money 500

# Ghost Medal
tellraw @s[scores={Shopping=9,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=9,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.ghost_medal"}]}]}
execute if entity @s[scores={Shopping=9,Money=500..}] run function medabots_server:give_items/medal/ghost
scoreboard players remove @s[scores={Shopping=9,Money=500..}] Money 500

# Kabuto Medal
tellraw @s[scores={Shopping=10,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=10,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.kabuto_medal"}]}]}
execute if entity @s[scores={Shopping=10,Money=500..}] run function medabots_server:give_items/medal/kabuto
scoreboard players remove @s[scores={Shopping=10,Money=500..}] Money 500

# Knight Medal
tellraw @s[scores={Shopping=11,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=11,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.knight_medal"}]}]}
execute if entity @s[scores={Shopping=11,Money=500..}] run function medabots_server:give_items/medal/knight
scoreboard players remove @s[scores={Shopping=11,Money=500..}] Money 500

# Kuwagata Medal
tellraw @s[scores={Shopping=12,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=12,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.kuwagata_medal"}]}]}
execute if entity @s[scores={Shopping=12,Money=500..}] run function medabots_server:give_items/medal/kuwagata
scoreboard players remove @s[scores={Shopping=12,Money=500..}] Money 500

# Mermaid Medal
tellraw @s[scores={Shopping=13,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=13,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.mermaid_medal"}]}]}
execute if entity @s[scores={Shopping=13,Money=500..}] run function medabots_server:give_items/medal/mermaid
scoreboard players remove @s[scores={Shopping=13,Money=500..}] Money 500

# Monkey Medal
tellraw @s[scores={Shopping=14,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=14,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.monkey_medal"}]}]}
execute if entity @s[scores={Shopping=14,Money=500..}] run function medabots_server:give_items/medal/monkey
scoreboard players remove @s[scores={Shopping=14,Money=500..}] Money 500

# Question Medal
tellraw @s[scores={Shopping=15,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=15,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.question_medal"}]}]}
execute if entity @s[scores={Shopping=15,Money=500..}] run function medabots_server:give_items/medal/question
scoreboard players remove @s[scores={Shopping=15,Money=500..}] Money 500

# Spider Medal
tellraw @s[scores={Shopping=16,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=16,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.spider_medal"}]}]}
execute if entity @s[scores={Shopping=16,Money=500..}] run function medabots_server:give_items/medal/spider
scoreboard players remove @s[scores={Shopping=16,Money=500..}] Money 500

# Unicorn Medal
tellraw @s[scores={Shopping=17,Money=..499}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.too_expensive"}]}
tellraw @s[scores={Shopping=17,Money=500..}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.thank_you","with":[{"translate":"medabots_server:item.unicorn_medal"}]}]}
execute if entity @s[scores={Shopping=17,Money=500..}] run function medabots_server:give_items/medal/unicorn
scoreboard players remove @s[scores={Shopping=17,Money=500..}] Money 500
