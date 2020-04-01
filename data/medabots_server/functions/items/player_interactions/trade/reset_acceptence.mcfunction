execute if entity @s[tag=awaiting_trade_response,tag=accepted] if entity @a[distance=..10,tag=asked_to_trade,tag=accepted] run tag @s add dont_reset
execute if entity @s[tag=asked_to_trade,tag=accepted] if entity @a[distance=..10,tag=awaiting_trade_response,tag=accepted] run tag @s add dont_reset

execute if entity @s[tag=awaiting_trade_response,tag=!dont_reset] run tag @s remove accepted
execute if entity @s[tag=awaiting_trade_response,tag=!dont_reset] run tag @a[distance=..10,tag=asked_to_trade,tag=accepted] remove accepted
execute if entity @s[tag=asked_to_trade,tag=!dont_reset] run tag @s remove accepted
execute if entity @s[tag=asked_to_trade,tag=!dont_reset] run tag @a[distance=..10,tag=awaiting_trade_response,tag=accepted] remove accepted
tag @s remove dont_reset
advancement revoke @s only medabots_server:system_triggers/items/player_interactions/trade/moved_item