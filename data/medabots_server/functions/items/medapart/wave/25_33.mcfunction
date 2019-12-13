# Prevent flying off rafts
execute positioned ~ ~-1.375 ~ at @e[tag=raft,distance=..0.7,limit=1,type=minecraft:area_effect_cloud] run teleport @s ~ ~1.375 ~

# Nino advancement
execute positioned ^ ^ ^1 if entity @e[tag=medabot_model,type=minecraft:armor_stand,distance=..5,scores={DeathTime=1}] run advancement grant @s[tag=static_fly] only medabots_server:main/windy_flight
execute positioned ^ ^ ^3 if entity @e[tag=medabot_model,type=minecraft:armor_stand,distance=..5,scores={DeathTime=1}] run advancement grant @s[tag=static_fly] only medabots_server:main/windy_flight
execute positioned ^ ^ ^5 if entity @e[tag=medabot_model,type=minecraft:armor_stand,distance=..5,scores={DeathTime=1}] run advancement grant @s[tag=static_fly] only medabots_server:main/windy_flight
execute positioned ^ ^ ^7 if entity @e[tag=medabot_model,type=minecraft:armor_stand,distance=..5,scores={DeathTime=1}] run advancement grant @s[tag=static_fly] only medabots_server:main/windy_flight
execute positioned ^ ^ ^9 if entity @e[tag=medabot_model,type=minecraft:armor_stand,distance=..5,scores={DeathTime=1}] run advancement grant @s[tag=static_fly] only medabots_server:main/windy_flight
execute positioned ^ ^ ^11 if entity @e[tag=medabot_model,type=minecraft:armor_stand,distance=..5,scores={DeathTime=1}] run advancement grant @s[tag=static_fly] only medabots_server:main/windy_flight
execute positioned ^ ^ ^13 if entity @e[tag=medabot_model,type=minecraft:armor_stand,distance=..5,scores={DeathTime=1}] run advancement grant @s[tag=static_fly] only medabots_server:main/windy_flight
execute positioned ^ ^ ^15 if entity @e[tag=medabot_model,type=minecraft:armor_stand,distance=..5,scores={DeathTime=1}] run advancement grant @s[tag=static_fly] only medabots_server:main/windy_flight