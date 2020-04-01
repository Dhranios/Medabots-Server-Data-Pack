execute if entity @a[tag=awaiting_trade_response,distance=..20] run tellraw @s {"translate":"medabots_server:message.player_interactions.trade.too_close","color":"red"}
execute if entity @a[tag=awaiting_trade_response,distance=..20] run tag @s add failed

execute if entity @a[tag=asked_to_trade,distance=..20] run tellraw @s {"translate":"medabots_server:message.player_interactions.trade.too_close","color":"red"}
execute if entity @a[tag=asked_to_trade,distance=..20] run tag @s add failed

execute if entity @s[tag=!failed] positioned ^ ^ ^1 run function medabots_server:items/player_interactions/trade/target

tag @s[tag=!failed] add awaiting_trade_response

scoreboard players set @s[tag=failed] PlayerInteract 0

tag @s remove failed