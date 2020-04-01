execute if entity @a[distance=..10,tag=awaiting_trade_response,nbt={Inventory:[{Slot:-106b}]}] run tag @s add can_accept
execute if entity @a[distance=..10,tag=asked_to_trade,nbt={Inventory:[{Slot:-106b}]}] run tag @s add can_accept
tag @s[tag=can_accept] add accepted
tag @s remove can_accept

execute if entity @a[distance=..10,tag=asked_to_trade,tag=accepted] if entity @a[distance=..10,tag=awaiting_trade_response,tag=accepted] run function medabots_server:items/player_interactions/trade/trade_item