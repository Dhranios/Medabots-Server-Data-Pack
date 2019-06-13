tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.greeting"}]}
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.medabot_salesman"},{"translate":"medabots_server:message.shop.buy_or_sell"}]}
tellraw @s {"translate":"medabots_server:message.shop.buy_or_sell.buy","clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 1"},"extra":[{"text":" "},{"translate":"medabots_server:message.shop.buy_or_sell.sell","clickEvent":{"action":"run_command","value":"/trigger ShopIndex0 set 2"}}]}
scoreboard players set @s ShopIndex0 -1
scoreboard players enable @s ShopIndex0
tag @s add trading_with_medabot_salesman