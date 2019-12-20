scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add gun_1

data modify entity @s[scores={Time=..60}] Pos[1] set from entity @e[tag=target,limit=1] Pos[1]
execute if entity @s[scores={Time=..60}] at @e[tag=target,limit=1] if entity @s[distance=10..] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^1 ~ ~
execute if entity @s[scores={Time=..60}] at @e[tag=target,limit=1] if entity @s[distance=8..10] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~
execute if entity @s[scores={Time=..60}] at @e[tag=target,limit=1] if entity @s[distance=..8] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-1 ~ ~

execute if entity @s[scores={Time=70}] run function medabots_server:entities/master_hand/fire_gun

tag @s[scores={Time=90}] add idle
tag @s[scores={Time=90}] remove gun_1
tag @s[scores={Time=90}] remove attack_gun_1
scoreboard players set @s[scores={Time=90}] Time 0