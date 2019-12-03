scoreboard players add @s DeathTime 1
execute if entity @s[tag=drowned] run function medabots_server:animations/medabot/death/drowned/hips
execute if entity @s[tag=crushed] run function medabots_server:animations/medabot/death/crushed/legs

execute if entity @s[tag=male_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/male/hips
execute if entity @s[tag=female_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/female/hips
execute if entity @s[tag=neutral_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/neutral/hips