scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add fast_idle

data modify entity @s[scores={Time=..60}] Pos[1] set from entity @e[tag=target,limit=1] Pos[1]
execute if entity @s[scores={Time=..60}] at @e[tag=target,limit=1] if entity @s[distance=5..] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^1 ~ ~
execute if entity @s[scores={Time=..60}] at @e[tag=target,limit=1] if entity @s[distance=3..5] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~
execute if entity @s[scores={Time=..60}] at @e[tag=target,limit=1] if entity @s[distance=..3] at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-1 ~ ~

tag @s[scores={Time=61}] remove fast_idle
tag @s[scores={Time=61}] add grab
execute if entity @s[scores={Time=61..65}] run teleport @s ^ ^ ^0.75
execute if entity @s[scores={Time=66..70}] run teleport @s ^ ^ ^0.25
execute if entity @s[scores={Time=71}] if entity @e[tag=potential_target,distance=..2,tag=!last_known_location] run tag @s add has_target
execute if entity @s[scores={Time=71},tag=has_target] run playsound medabots_server:entity.master_hand.grab hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=71},tag=!has_target] run playsound medabots_server:entity.master_hand.grab_miss hostile @a ~ ~ ~ 1

execute if entity @s[scores={Time=81..90}] run teleport @s ^ ^ ^-0.5

tag @s[scores={Time=90},tag=!has_target] add idle
tag @s[scores={Time=90},tag=!has_target] remove grab
tag @s[scores={Time=90},tag=!has_target] remove attack_grab
scoreboard players set @s[scores={Time=90},tag=!has_target] Time 0

tag @s[scores={Time=71},tag=has_target] remove grab
tag @s[scores={Time=71},tag=has_target] add grab_success
execute if entity @s[scores={Time=71..150},tag=has_target] run teleport @e[tag=target,limit=1] ~ ~ ~
execute if entity @s[scores={Time=90},tag=has_target] run effect give @e[tag=target,limit=1] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=90},tag=has_target] run playsound medabots_server:entity.master_hand.grab_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=110}] run effect give @e[tag=target,limit=1] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=110}] run playsound medabots_server:entity.master_hand.grab_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=130}] run effect give @e[tag=target,limit=1] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=130}] run playsound medabots_server:entity.master_hand.grab_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=145..147}] run teleport @s ^ ^0.5 ^
execute if entity @s[scores={Time=148..150}] run teleport @s ^ ^-0.5 ^
execute if entity @s[scores={Time=150}] run effect give @e[tag=target,limit=1] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=150}] run playsound medabots_server:entity.master_hand.grab_throw hostile @a ~ ~ ~ 1
tag @s[scores={Time=170}] add idle
tag @s[scores={Time=170}] remove grab_success
tag @s[scores={Time=170}] remove has_target
tag @s[scores={Time=170}] remove attack_grab
scoreboard players set @s[scores={Time=170}] Time 0