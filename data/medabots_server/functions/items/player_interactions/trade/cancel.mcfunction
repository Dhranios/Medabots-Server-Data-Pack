tellraw @s {"translate":"medabots_server:message.player_interactions.trade.canceled","color":"red"}
tag @s remove asked_to_trade
tag @s remove awaiting_trade_response
tag @s remove interacting_with_player
scoreboard players set @s PlayerInteract 0