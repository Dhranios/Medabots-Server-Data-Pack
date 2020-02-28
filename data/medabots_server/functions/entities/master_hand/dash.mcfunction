scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add dash

execute if entity @s[scores={Time=20}] run playsound medabots_server:entity.master_hand.power_punch hostile @a ~ ~ ~ 1
execute as @s[scores={Time=20..39}] if block ^ ^ ^3 minecraft:air if block ^ ^ ^2 minecraft:air if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^1

execute if entity @s[scores={Time=20..39}] run effect give @e[tag=target,limit=1,distance=..2] minecraft:instant_damage 1 1 true
execute if entity @s[scores={Time=20..39}] as @e[tag=target,limit=1,distance=..2] positioned as @s if block ^ ^ ^1 minecraft:air run teleport @s ^ ^ ^2

tag @s[scores={Time=60}] add idle
tag @s[scores={Time=60}] remove dash
tag @s[scores={Time=60}] remove attack_dash
scoreboard players set @s[scores={Time=60}] Time 0