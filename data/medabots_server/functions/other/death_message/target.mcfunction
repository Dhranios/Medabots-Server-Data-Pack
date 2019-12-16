execute if entity @s[tag=medabot] run function medabots_server:other/death_message/medabot_killer
execute if entity @s[tag=!medabot] run function medabots_server:other/death_message/enemy_killer

tag @a[distance=..0.1,tag=death_message,limit=1] add had_death
