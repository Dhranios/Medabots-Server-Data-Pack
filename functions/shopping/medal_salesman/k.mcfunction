tag @s add success
execute if entity @s[advancements={medabots_server:wave_1/get_all_medabots/kabuto_medal=false,medabots_server:wave_1/get_all_medabots/knight_medal=false,medabots_server:wave_1/get_all_medabots/kuwagata_medal=false}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.not_available.medal"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.medal.which"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/kabuto_medal=true}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 10"},"with":[{"translate":"medabots_server:item.kabuto_medal"},{"text":"500"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/knight_medal=true}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 11"},"with":[{"translate":"medabots_server:item.knight_medal"},{"text":"500"}]}
tellraw @s[advancements={medabots_server:wave_1/get_all_medabots/kuwagata_medal=true}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 12"},"with":[{"translate":"medabots_server:item.kuwagata_medal"},{"text":"500"}]}
