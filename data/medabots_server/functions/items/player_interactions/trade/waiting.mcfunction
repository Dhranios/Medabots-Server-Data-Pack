execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=awaiting_response_location,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=awaiting_response_location,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["awaiting_response_location"],Duration:2}

execute if entity @s[scores={PlayerInteract=4}] positioned ~ ~1 ~ run function medabots_server:items/player_interactions/trade/show_item

execute unless entity @a[distance=..10,tag=asked_to_trade] run scoreboard players set @s[tag=awaiting_trade_response] PlayerInteract -2
execute unless entity @a[distance=..10,tag=awaiting_trade_response] run scoreboard players set @s[tag=asked_to_trade] PlayerInteract -2