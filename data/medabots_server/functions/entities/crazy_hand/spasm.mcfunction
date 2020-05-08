scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add spasm
teleport @s[scores={Time=1}] ~ ~-1 ~
execute if block ^ ^1 ^3 minecraft:air run teleport @s[scores={Time=2..9}] ^ ^ ^0.5
execute if entity @s[scores={Time=10}] run playsound medabots_server:entity.crazy_hand.earthquake hostile @a ~ ~ ~ 1

teleport @s[scores={Time=20..79}] ~ ~ ~ ~54 ~
execute if entity @s[scores={Time=20..79}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 0 true


teleport @s[scores={Time=90}] ~ ~1 ~

execute if entity @s[scores={Time=95}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 2 true

tag @s[scores={Time=100}] add idle
tag @s[scores={Time=100}] remove spasm
tag @s[scores={Time=100}] remove has_target
tag @s[scores={Time=100}] remove attack_spasm
scoreboard players set @s[scores={Time=100}] Time 0