tag @s add success
execute if entity @s[advancements={medabots_server:get_all_medabots/wave_1/kuwagata_medal=false}] run tag @s add out_of_stock
tellraw @s[tag=out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman","color":"green"},{"translate":"medabots_server:message.shop.not_available.medal"}]}
tellraw @s[tag=!out_of_stock] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman","color":"green"},{"translate":"medabots_server:message.shop.medal.which"}]}
tag @s remove out_of_stock
tellraw @s[advancements={medabots_server:get_all_medabots/wave_1/kuwagata_medal=true}] {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 12"},"with":[{"translate":"medabots_server:item.kuwagata_medal"},{"text":"500"}]}
