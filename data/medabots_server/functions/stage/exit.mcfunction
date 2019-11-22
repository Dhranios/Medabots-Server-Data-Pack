# Select exit choice depending on team
execute if entity @s[tag=!medabot] run function medabots_server:stage/exit/selection
execute if entity @s[tag=medabot,tag=ally_medabot] run function medabots_server:stage/exit/ally
execute if entity @s[tag=medabot,tag=enemy_medabot] run function medabots_server:stage/exit/enemy
execute if entity @s[tag=medabot,tag=!ally_medabot,tag=!enemy_medabot] run function medabots_server:stage/exit/neutral