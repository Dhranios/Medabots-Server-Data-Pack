scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add slap
teleport @s[scores={Time=1..2}] ~ ~ ~ ~45 ~

execute if entity @s[scores={Time=20}] run playsound medabots_server:entity.master_hand.swipe hostile @a ~ ~ ~ 1
execute as @s[scores={Time=20..29}] if block ^4 ^ ^ minecraft:air if block ^3 ^ ^ minecraft:air if block ^2 ^ ^ minecraft:air if block ^1 ^ ^ minecraft:air run teleport @s ^2 ^ ^

execute if entity @s[scores={Time=20..29}] run effect give @e[tag=target,limit=1,distance=..2] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=20..29}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^2 ^ ^ minecraft:air if block ^1 ^ ^ minecraft:air run teleport @s ^2 ^ ^

teleport @s[scores={Time=34..35}] ~ ~ ~ ~-45 ~

tag @s[scores={Time=35}] add idle
tag @s[scores={Time=35}] remove slap
tag @s[scores={Time=35}] remove attack_slap
scoreboard players set @s[scores={Time=35}] Time 0