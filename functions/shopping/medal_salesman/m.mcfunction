tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/mermaid_medal=false,medabots_server:wave_1/get_all_medabots/monkey_medal=false}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.not_available.medal"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.medal.which"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/mermaid_medal=true}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 13"},"with":[{"translate":"medabots_server:item.mermaid_medal"},{"text":"500"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/monkey_medal=true}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 14"},"with":[{"translate":"medabots_server:item.monkey_medal"},{"text":"500"}]}
