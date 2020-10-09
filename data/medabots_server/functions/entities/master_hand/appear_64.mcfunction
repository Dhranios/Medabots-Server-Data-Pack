scoreboard players add @s Time 1
effect give @s minecraft:resistance 1 9 true
teleport @s[scores={Time=1}] ^-25 ^-30 ^ ~-90 ~
teleport @s[scores={Time=100}] ^ ^30 ^
execute if entity @s[scores={Time=100}] run tellraw @a[distance=0.1..] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.master_hand","color":"green"},{"translate":"medabots_server:message.master_hand.spawn.1"}]}
execute at @s[scores={Time=100}] run playsound medabots_server:entity.master_hand.laugh1 hostile @a[distance=0.1..] ~ ~ ~ 10

teleport @s[scores={Time=101..430}] ^ ^ ^0.076
teleport @s[scores={Time=435}] ~ ~ ~ ~90 ~

tag @s[scores={Time=452}] add idle
tag @s[scores={Time=452}] add appeared
scoreboard players set @s[scores={Time=452}] Time 0