scoreboard players add @s DeathTime 1
execute if entity @s[tag=drowned] run function medabots_server:animations/medabot/death/drowned/head
execute if entity @s[tag=crushed] run function medabots_server:animations/medabot/death/crushed/head

execute if entity @s[tag=male_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/male/head
execute if entity @s[tag=female_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/female/head
execute if entity @s[tag=neutral_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/neutral/head
execute if entity @s[scores={DeathTime=1},tag=!drowned,tag=!crushed] run playsound medabots_server:entity.medabot.death player @a ~ ~ ~ 0.7