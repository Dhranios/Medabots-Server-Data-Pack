scoreboard players add @s Time 1
effect give @s minecraft:resistance 1 9 true
execute if entity @s[scores={Time=1}] store result score @s OtherX run data get entity @s Pos[0]
execute if entity @s[scores={Time=1}] store result score @s OtherY run data get entity @s Pos[1]
execute if entity @s[scores={Time=1}] store result score @s OtherZ run data get entity @s Pos[2]
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add ram

execute if entity @s[scores={Time=1}] run playsound medabots_server:entity.master_hand.background_punch_start hostile @a ~ ~ ~ 1
teleport @s[scores={Time=1..19}] ~ ~2 ~
execute store result entity @s[scores={Time=20}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute at @s[scores={Time=20}] run teleport @s ^-25 ^40 ^ ~-90 ~

execute if entity @s[scores={Time=31}] run playsound medabots_server:entity.master_hand.background_punch hostile @a ^ ^-10 ^17 1
execute if entity @s[scores={Time=21..30}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^-1 ^1 minecraft:air if block ^ ^-2 ^1 minecraft:air if block ^ ^-3 ^1 minecraft:air run teleport @s ^ ^-3 ^0.8
execute if entity @s[scores={Time=31..40}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^-1 ^1 minecraft:air run teleport @s ^ ^-1 ^0.8
execute if entity @s[scores={Time=41..60}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^0.8
execute if entity @s[scores={Time=61..70}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^1 ^1 minecraft:air run teleport @s ^ ^1 ^0.8
execute if entity @s[scores={Time=71..80}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air if block ^ ^1 ^1 minecraft:air if block ^ ^2 ^1 minecraft:air if block ^ ^3 ^1 minecraft:air run teleport @s ^ ^3 ^0.8
execute if entity @s[scores={Time=21..80}] run effect give @e[tag=target,limit=1,distance=..3] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=21..30}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^ ^-3 ^0.8 ~ 0
execute if entity @s[scores={Time=31..40}] run teleport @s ^ ^-1 ^0.8
execute if entity @s[scores={Time=41..60}] run teleport @s ^ ^ ^0.8
execute if entity @s[scores={Time=61..70}] run teleport @s ^ ^1 ^0.8
execute if entity @s[scores={Time=71..80}] run teleport @s ^ ^3 ^0.8

execute store result entity @s[scores={Time=81}] Pos[0] double 1 run scoreboard players get @s OtherX
execute store result entity @s[scores={Time=81}] Pos[1] double 1 run scoreboard players get @s OtherY
execute store result entity @s[scores={Time=81}] Pos[2] double 1 run scoreboard players get @s OtherZ
execute at @s[scores={Time=81}] run playsound medabots_server:entity.master_hand.background_punch_stop hostile @a ~ ~ ~ 1
execute at @s[scores={Time=81}] run teleport @s ~ ~38 ~
execute at @s[scores={Time=82..100}] run teleport @s ~ ~-2 ~
scoreboard players reset @s[scores={Time=81}] OtherX
scoreboard players reset @s[scores={Time=81}] OtherY
scoreboard players reset @s[scores={Time=81}] OtherZ

effect clear @s[scores={Time=99}] minecraft:resistance
tag @s[scores={Time=99}] add idle
tag @s[scores={Time=99}] remove ram
tag @s[scores={Time=99}] remove has_target
tag @s[scores={Time=99}] remove attack_ram
scoreboard players set @s[scores={Time=99}] Time 0