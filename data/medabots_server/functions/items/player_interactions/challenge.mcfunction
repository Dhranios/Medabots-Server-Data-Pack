execute if entity @a[scores={Stage=0},distance=..60] run tellraw @s {"translate":"medabots_server:message.player_interactions.challenge.too_close","color":"red"}
execute if entity @a[scores={Stage=0},distance=..60] run tag @s add failed

execute if entity @a[tag=awaiting_challenge_response,distance=..60] run tellraw @s {"translate":"medabots_server:message.player_interactions.challenge.too_close","color":"red"}
execute if entity @a[tag=awaiting_challenge_response,distance=..60] run tag @s add failed

execute if entity @a[tag=challenged_to_robattle,distance=..60] run tellraw @s {"translate":"medabots_server:message.player_interactions.challenge.too_close","color":"red"}
execute if entity @a[tag=challenged_to_robattle,distance=..60] run tag @s add failed

execute if entity @s[tag=!failed] positioned ^ ^ ^1 run function medabots_server:items/player_interactions/challenge/target

tag @s[tag=!failed] add awaiting_challenge_response

scoreboard players set @s[tag=failed] PlayerInteract 0

tag @s remove failed