tellraw @s[scores={ShopIndex1=1..}] {"translate":"medabots_server:message.medallar_count","color":"green","with":[{"score":{"objective":"Money","name":"@s"}}]}
execute if entity @s[scores={ShopIndex1=1}] run function medabots_server:shopping/medal_salesman/a
execute if entity @s[scores={ShopIndex1=2}] run function medabots_server:shopping/medal_salesman/b
execute if entity @s[scores={ShopIndex1=6}] run function medabots_server:shopping/medal_salesman/f
execute if entity @s[scores={ShopIndex1=11}] run function medabots_server:shopping/medal_salesman/k
execute if entity @s[scores={ShopIndex1=12}] run function medabots_server:shopping/medal_salesman/l
execute if entity @s[scores={ShopIndex1=13}] run function medabots_server:shopping/medal_salesman/m
execute if entity @s[scores={ShopIndex1=14}] run function medabots_server:shopping/medal_salesman/n
execute if entity @s[scores={ShopIndex1=19}] run function medabots_server:shopping/medal_salesman/s
execute if entity @s[scores={ShopIndex1=21}] run function medabots_server:shopping/medal_salesman/u
execute if entity @s[scores={ShopIndex1=22}] run function medabots_server:shopping/medal_salesman/v
execute if entity @s[scores={ShopIndex1=26}] run function medabots_server:shopping/medal_salesman/z
execute if entity @s[scores={ShopIndex1=28}] run function medabots_server:shopping/medal_salesman/question_mark

tellraw @s[tag=!success] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman","color":"green"},{"translate":"medabots_server:message.shop.no_medal"}]}
scoreboard players reset @s ShopIndex1
tag @s remove success