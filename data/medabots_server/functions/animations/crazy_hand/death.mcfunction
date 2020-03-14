execute if entity @s[tag=smash_bros] run function medabots_server:animations/crazy_hand/death/final_destination
execute if entity @s[tag=smash_melee] run function medabots_server:animations/crazy_hand/death/final_destination
execute if entity @s[tag=smash_brawl] run function medabots_server:animations/crazy_hand/death/final_destination
execute if entity @s[tag=smash_4] run function medabots_server:animations/crazy_hand/death/vanish
execute if entity @s[tag=!smash_bros,tag=!smash_melee,tag=!smash_brawl,tag=!smash_4] run function medabots_server:animations/crazy_hand/death/generic
execute if entity @s[scores={DeathTime=1}] run advancement grant @a[tag=potential_target,distance=..30] only medabots_server:bosses/wave_1/crazy_hand