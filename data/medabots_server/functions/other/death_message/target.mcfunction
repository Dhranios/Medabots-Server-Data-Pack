execute if entity @s[tag=medabot] run function medabots_server:other/death_message/medabot_killer
execute if entity @s[tag=!medabot] run function medabots_server:other/death_message/enemy_killer
tag @e[tag=me,limit=1,tag=this_robattle] add had_death
