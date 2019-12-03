execute if entity @s[scores={DeathTime=1},tag=head] at @e[tag=this_medabot,tag=chest] run teleport @s ^ ^.1 ^ ~ ~
scoreboard players add @s DeathTime 1
execute at @s[tag=drowned] run function medabots_server:animations/medabot/death/drowned/head
execute at @s[tag=crushed] run function medabots_server:animations/medabot/death/crushed/head

execute at @s[tag=male_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/male/head
execute at @s[tag=female_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/female/head
execute at @s[tag=neutral_tinpet,tag=!drowned,tag=!crushed] run function medabots_server:animations/medabot/death/neutral/head