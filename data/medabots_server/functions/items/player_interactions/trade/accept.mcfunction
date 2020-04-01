tellraw @a[distance=..10,tag=awaiting_trade_response] {"translate":"medabots_server:message.player_interactions.trade.accepted","color":"green"}
scoreboard players set @a[distance=..10,tag=awaiting_trade_response] PlayerInteract 4
tellraw @s {"translate":"medabots_server:message.player_interactions.trade.accepted","color":"green"}
scoreboard players set @s PlayerInteract 4

