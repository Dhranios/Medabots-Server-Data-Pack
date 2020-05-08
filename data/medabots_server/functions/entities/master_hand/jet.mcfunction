scoreboard players add @s Time 1
effect give @s minecraft:resistance 1 9 true
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add jet

execute if entity @s[scores={Time=1}] run playsound medabots_server:entity.master_hand.rocket_start hostile @a ~ ~ ~ 1
teleport @s[scores={Time=1..10}] ~ ~ ~ ~-9 ~
teleport @s[scores={Time=10..19}] ~ ~4 ~
execute store result entity @s[scores={Time=20}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute at @s[scores={Time=20}] run teleport @s ^ ^40 ^-25 ~ ~

execute if entity @s[scores={Time=31}] run playsound medabots_server:entity.master_hand.rocket_background hostile @a ^ ^-10 ^17 1
execute if entity @s[scores={Time=10..19}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^1 ^ minecraft:air if block ^ ^2 ^ minecraft:air if block ^ ^3 ^ minecraft:air if block ^ ^4 ^ minecraft:air run teleport @s ^ ^4 ^
execute if entity @s[scores={Time=21..30}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^-1 ^1 minecraft:air if block ^ ^-2 ^1 minecraft:air if block ^ ^-3 ^1 minecraft:air run teleport @s ^ ^-3 ^0.8
execute if entity @s[scores={Time=31..40}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^-1 ^1 minecraft:air run teleport @s ^ ^-1 ^0.8
execute if entity @s[scores={Time=41..60}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^0.8
execute if entity @s[scores={Time=61..70}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^1 ^1 minecraft:air run teleport @s ^ ^1 ^0.8
execute if entity @s[scores={Time=71..80}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^1 ^1 minecraft:air if block ^ ^2 ^1 minecraft:air if block ^ ^3 ^1 minecraft:air run teleport @s ^ ^3 ^0.8
execute if entity @s[scores={Time=81..101}] as @e[tag=potential_target,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^ ^2 minecraft:air run teleport @s ^ ^ ^1.8
execute if entity @s[scores={Time=10..101}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=21..30}] facing entity @e[tag=target,limit=1] feet run teleport @s ~ ~ ~ ~ 0
execute at @s[scores={Time=21..30}] run teleport @s ^ ^-3 ^0.8
execute if entity @s[scores={Time=31..40}] run teleport @s ^ ^-1 ^0.8
execute if entity @s[scores={Time=41..60}] run teleport @s ^ ^ ^0.8
execute if entity @s[scores={Time=50}] run playsound medabots_server:entity.master_hand.rocket_foreground hostile @a ^ ^ ^ 1
execute if entity @s[scores={Time=61..70}] run teleport @s ^ ^1 ^0.8
execute if entity @s[scores={Time=71..80}] run teleport @s ^ ^3 ^0.8

execute store result entity @s[scores={Time=81}] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[scores={Time=81}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s[scores={Time=81}] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s[scores={Time=81}] Rotation[0] float 1 run scoreboard players get @s HomeRot
execute at @s[scores={Time=81}] run playsound medabots_server:entity.master_hand.rocket_stop hostile @a ~ ~ ~ 1
execute at @s[scores={Time=81}] run teleport @s ^ ^ ^-20
execute at @s[scores={Time=82..101}] run teleport @s ^ ^ ^1

effect clear @s[scores={Time=119}] minecraft:resistance
tag @s[scores={Time=119}] add idle
tag @s[scores={Time=119}] remove jet
tag @s[scores={Time=119}] remove attack_jet
scoreboard players set @s[scores={Time=119}] Time 0