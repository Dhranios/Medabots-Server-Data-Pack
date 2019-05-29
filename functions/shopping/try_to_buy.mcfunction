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
