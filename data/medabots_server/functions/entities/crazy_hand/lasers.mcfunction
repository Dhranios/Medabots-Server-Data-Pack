scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=1}] add lasers

execute if entity @s[scores={Time=1..3}] run teleport @s ~ ~1 ~

execute if entity @s[scores={Time=30}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=40}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=50}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=60}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=70}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=80}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=90}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=100}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=110}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=120}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=130}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=140}] run playsound medabots_server:entity.crazy_hand.laser hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=30..40},tag=!shot_lasers] positioned ^-1 ^ ^3 rotated ~20 55 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=30..50},tag=!shot_lasers] positioned ^-0.3 ^ ^3 rotated ~10 55 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=30..70},tag=!shot_lasers] positioned ^0.3 ^ ^3 rotated ~-10 55 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=30..82},tag=!shot_lasers] positioned ^1 ^ ^3 rotated ~-20 55 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=41..60},tag=!shot_lasers] positioned ^-1 ^1 ^3 rotated ~20 40 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=51..80},tag=!shot_lasers] positioned ^-0.3 ^1 ^3 rotated ~10 40 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=71..100},tag=!shot_lasers] positioned ^0.3 ^1 ^3 rotated ~-10 40 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=83..87},tag=!shot_lasers] positioned ^1 ^ ^3 rotated ~-20 40 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=61..90},tag=!shot_lasers] positioned ^-1 ^1 ^3 rotated ~20 25 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=81..110},tag=!shot_lasers] positioned ^-0.3 ^1 ^3 rotated ~10 25 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=101..130},tag=!shot_lasers] positioned ^0.3 ^1 ^3 rotated ~-10 25 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=88..93},tag=!shot_lasers] positioned ^1 ^ ^3 rotated ~-20 25 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=91..110},tag=!shot_lasers] positioned ^-1 ^1 ^3 rotated ~20 40 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=111..130},tag=!shot_lasers] positioned ^-0.3 ^1 ^3 rotated ~10 40 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=131..149},tag=!shot_lasers] positioned ^0.3 ^1 ^3 rotated ~-10 40 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=94..98},tag=!shot_lasers] positioned ^1 ^ ^3 rotated ~-20 40 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=111..150},tag=!shot_lasers] positioned ^-1 ^ ^3 rotated ~20 55 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=131..150},tag=!shot_lasers] positioned ^-0.3 ^ ^3 rotated ~10 55 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=150},tag=!shot_lasers] positioned ^0.3 ^ ^3 rotated ~-10 55 run function medabots_server:entities/crazy_hand/fire_laser
execute if entity @s[scores={Time=99..150},tag=!shot_lasers] positioned ^1 ^ ^3 rotated ~-20 55 run function medabots_server:entities/crazy_hand/fire_laser
tag @e[type=minecraft:armor_stand,tag=crazy_hand_laser,distance=15..] add dead
tag @s[tag=shot_lasers] add shot_lasers_2
tag @s remove shot_lasers
tag @s[tag=!shot_lasers_2] add shot_lasers
tag @s remove shot_lasers_2
teleport @s[scores={Time=30..69}] ^ ^ ^0.025
teleport @s[scores={Time=90..129}] ^ ^ ^-0.025

execute if entity @s[scores={Time=197..200}] run teleport @s ~ ~-1 ~

tag @s[scores={Time=200}] add idle
tag @s[scores={Time=200}] remove lasers
tag @s[scores={Time=200}] remove attack_lasers
scoreboard players set @s[scores={Time=200}] Time 0