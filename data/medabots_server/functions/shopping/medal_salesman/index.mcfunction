tellraw @s[scores={ShopIndex1=1..}] {"translate":"medabots_server:message.medallar_count","color":"green","with":[{"score":{"objective":"Money","name":"@s"}}]}
execute if entity @s[scores={ShopIndex1=1}] run function medabots_server:shopping/medal_salesman/a
execute if entity @s[scores={ShopIndex1=3}] run function medabots_server:shopping/medal_salesman/c
execute if entity @s[scores={ShopIndex1=4}] run function medabots_server:shopping/medal_salesman/d
execute if entity @s[scores={ShopIndex1=7}] run function medabots_server:shopping/medal_salesman/g
execute if entity @s[scores={ShopIndex1=11}] run function medabots_server:shopping/medal_salesman/k
execute if entity @s[scores={ShopIndex1=13}] run function medabots_server:shopping/medal_salesman/m
execute if entity @s[scores={ShopIndex1=19}] run function medabots_server:shopping/medal_salesman/s
execute if entity @s[scores={ShopIndex1=21}] run function medabots_server:shopping/medal_salesman/u
execute if entity @s[scores={ShopIndex1=28}] run function medabots_server:shopping/medal_salesman/question_mark

tellraw @s[tag=!success] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman","color":"green"},{"translate":"medabots_server:message.shop.no_medal"}]}
scoreboard players reset @s ShopIndex2
tag @s remove success
tag @s remove trading