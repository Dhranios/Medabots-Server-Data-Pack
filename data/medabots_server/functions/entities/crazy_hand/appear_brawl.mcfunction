scoreboard players add @s Time 1
effect give @s minecraft:resistance 1 9 true
teleport @s[scores={Time=1}] ^25 ^-30 ^ ~90 ~
teleport @s[scores={Time=41}] ^ ^30 ^
execute if entity @s[scores={Time=72}] run tellraw @a[distance=0.1..] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.crazy_hand","color":"green"},{"translate":"medabots_server:message.crazy_hand.spawn.3"}]}
execute at @s[scores={Time=72}] run playsound medabots_server:entity.crazy_hand.laugh3 hostile @a[distance=0.1..] ~ ~ ~ 10

teleport @s[scores={Time=42..166}] ^ ^ ^0.2
teleport @s[scores={Time=166}] ~ ~ ~ ~-90 ~

tag @s[scores={Time=200}] add idle
tag @s[scores={Time=200}] add appeared
scoreboard players set @s[scores={Time=200}] Time 0