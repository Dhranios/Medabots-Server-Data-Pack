scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add bombs

execute if entity @s[scores={Time=1..3}] run teleport @s ^ ^1.5 ^2
execute if entity @s[scores={Time=4..6}] run teleport @s ~ ~ ~ ~30 ~

teleport @s[scores={Time=31..60}] ^0.025 ^ ^
teleport @s[scores={Time=61..90}] ^-0.025 ^ ^
teleport @s[scores={Time=91..120}] ^0.025 ^ ^
teleport @s[scores={Time=121..150}] ^-0.025 ^ ^
execute if entity @s[scores={Time=17}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=17}] positioned ^-1 ^-1 ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=27}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=27}] positioned ^1 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=37}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=37}] positioned ^-0.3 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=47}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=47}] positioned ^0.3 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=57}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=57}] positioned ^-1 ^-1 ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=67}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=67}] positioned ^-0.3 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=77}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=77}] positioned ^0.3 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=87}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=87}] positioned ^-0.3 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=97}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=97}] positioned ^1 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=107}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=107}] positioned ^-1 ^-1 ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=127}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=127}] positioned ^0.3 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1
execute if entity @s[scores={Time=147}] run playsound medabots_server:entity.crazy_hand.bomb_move hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=147}] positioned ^1 ^ ^2 run function medabots_server:spawn_entities/bomb/delay_1

execute if entity @s[scores={Time=178..180}] run teleport @s ~ ~-1.5 ~ ~-30 ~

tag @s[scores={Time=180}] add idle
tag @s[scores={Time=180}] remove bombs
tag @s[scores={Time=180}] remove attack_bombs
scoreboard players set @s[scores={Time=180}] Time 0