function medabots_server:stage/create/final_destination_2/cpu
# practice because they should attack other Medabots, but don't yet
data merge entity @e[distance=..0.7,tag=spawn_medabot,type=minecraft:item,limit=1] {Item:{tag:{medabots_server:{cpu_data:{team:"neutral",practice_battle:1b}}}}}