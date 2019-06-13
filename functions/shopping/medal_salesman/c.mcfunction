tag @s add success
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medal_salesman"},{"translate":"medabots_server:message.shop.medal"}]}
tellraw @s {"translate":"medabots_server:message.shop.buy","clickEvent":{"action":"run_command","value":"/trigger Shopping set 7"},"with":[{"translate":"medabots_server:item.chameleon_medal"},{"text":"500"}]}
