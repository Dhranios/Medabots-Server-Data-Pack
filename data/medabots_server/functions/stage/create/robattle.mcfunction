scoreboard players set @a[distance=..10,tag=awaiting_robattle_response,scores={State=3}] State 1
scoreboard players set @a[distance=..10,tag=challenged_to_robattle,scores={State=3}] State 1
tag @a[distance=..10,tag=awaiting_robattle_response,scores={State=1}] add main
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @a[distance=..10,tag=awaiting_robattle_response,scores={State=1}] Music 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @a[distance=..10,tag=challenged_to_robattle,scores={State=1}] Music 0
scoreboard players set @a[distance=..10,tag=awaiting_robattle_response,scores={State=1}] MusicType 0
scoreboard players set @a[distance=..10,tag=challenged_to_robattle,scores={State=1}] MusicType 0
summon minecraft:armor_stand ^2 ^ ^ {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","robattle_center"]}
execute positioned ^2 ^ ^ as @e[type=minecraft:armor_stand,distance=..0.7,limit=1] run teleport @s ~ ~ ~ facing ^-2 ^ ^
execute positioned ^2 ^ ^ run scoreboard players set @e[type=minecraft:armor_stand,distance=..0.7,limit=1] Stage 0
scoreboard players set @a[distance=..10,tag=awaiting_robattle_response,scores={State=1}] PlayerInteract 0
scoreboard players set @a[distance=..10,tag=challenged_to_robattle,scores={State=1}] PlayerInteract 0
tag @a[distance=..10,tag=awaiting_robattle_response,scores={State=1}] remove awaiting_robattle_response
tag @a[distance=..10,tag=challenged_to_robattle,scores={State=1}] remove challenged_to_robattle