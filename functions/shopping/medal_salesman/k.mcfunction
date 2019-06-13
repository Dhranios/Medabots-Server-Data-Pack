tag @s add success
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.medal"}]}
tellraw @s {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 10"},"with":[{"translate":"medabots_server:item.kabuto_medal"},{"text":"500"}]}
tellraw @s {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 11"},"with":[{"translate":"medabots_server:item.knight_medal"},{"text":"500"}]}
tellraw @s {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 12"},"with":[{"translate":"medabots_server:item.kuwagata_medal"},{"text":"500"}]}
