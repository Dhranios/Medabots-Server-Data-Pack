scoreboard players add @s DeathTime 1
execute at @s[tag=drowned] run function medabots_server:animations/medabot/death/drowned/chest
execute at @s[tag=crushed] run function medabots_server:animations/medabot/death/crushed/head

execute at @s[tag=male_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/male/chest
execute at @s[tag=female_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/female/chest
execute at @s[tag=neutral_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/neutral/chest
execute at @s[scores={DeathTime=1},tag=!drowned,tag=!crushed] run playsound medabots_server:entity.medabot.death player @a ~ ~ ~ 0.7
execute at @s[scores={DeathTime=1},tag=crushed] run playsound medabots_server:entity.medabot.death.crushed player @a ~ ~ ~ 0.7
execute at @s[scores={DeathTime=1},tag=drowned] run playsound medabots_server:entity.medabot.death.drowned player @a ~ ~ ~ 0.7