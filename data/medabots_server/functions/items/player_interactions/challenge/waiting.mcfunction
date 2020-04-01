execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=awaiting_response_location,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=awaiting_response_location,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["awaiting_response_location"],Duration:2}

execute unless entity @a[distance=..10,tag=challenged_to_robattle] run scoreboard players set @s[tag=awaiting_challenge_response] PlayerInteract -1
execute unless entity @a[distance=..10,tag=awaiting_challenge_response] run scoreboard players set @s[tag=challenged_to_robattle] PlayerInteract -1