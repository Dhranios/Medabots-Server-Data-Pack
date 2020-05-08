scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add drill

teleport @s[scores={Time=..50}] ~ ~ ~ ~79.11 ~

execute if entity @s[scores={Time=1}] run playsound medabots_server:entity.master_hand.spin_start hostile @a ~ ~ ~ 1
teleport @s[scores={Time=4..9}] ~ ~6 ~
teleport @s[scores={Time=10}] ~ ~2 ~

execute if entity @s[scores={Time=10}] if entity @e[tag=target,limit=1] store result entity @s Pos[0] double 0.01 run data get entity @e[tag=target,limit=1] Pos[0] 100
execute if entity @s[scores={Time=10}] if entity @e[tag=target,limit=1] store result entity @s Pos[2] double 0.01 run data get entity @e[tag=target,limit=1] Pos[2] 100

teleport @s[scores={Time=11..19}] ~ ~-4 ~
execute if entity @s[scores={Time=11}] run playsound medabots_server:entity.master_hand.spin_land hostile @a ~ ~-40 ~ 1
execute if entity @s[scores={Time=19}] run playsound medabots_server:entity.master_hand.spin_stop hostile @a ~ ~ ~ 1

execute if entity @s[scores={Time=1..60}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=60}] unless block ~ ~-3 ~ minecraft:air run playsound medabots_server:entity.master_hand.spin_return hostile @a ~ ~ ~ 1
teleport @s[scores={Time=68}] ~ ~1 ~
teleport @s[scores={Time=70}] ~ ~-3 ~

tag @s[scores={Time=70}] add idle
tag @s[scores={Time=70}] remove drill
tag @s[scores={Time=70}] remove has_target
tag @s[scores={Time=70}] remove attack_drill
scoreboard players set @s[scores={Time=70}] Time 0