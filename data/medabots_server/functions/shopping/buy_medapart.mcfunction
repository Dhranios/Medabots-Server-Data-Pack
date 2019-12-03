tellraw @s[scores={Shopping=1..,Dialog=1..}] {"translate":"medabots_server:message.shop.dialog","color":"green"}
tellraw @s[scores={Shopping=1..,Stage=1..}] {"translate":"medabots_server:message.shop.stage","color":"green"}

execute unless entity @s[scores={Stage=1..}] if entity @e[type=minecraft:villager,distance=..4] run tellraw @s[scores={Dialog=0,Money=..99}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.salesman","color":"green"},{"translate":"medabots_server:message.shop.too_expensive"}]}
execute unless entity @s[scores={Stage=1..}] if entity @e[type=minecraft:villager,distance=..4] if entity @s[scores={Dialog=0,Money=100..}] run function medabots_server:shopping/try_to_buy_medapart
