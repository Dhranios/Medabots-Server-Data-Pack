function medabots_server:stage/create/park_battle/random_cpu
data merge entity @e[distance=..0.7,tag=spawn_medabot,type=minecraft:item,limit=1] {Item:{tag:{medabots_server:{cpu_data:{team:"enemy"}}}}}