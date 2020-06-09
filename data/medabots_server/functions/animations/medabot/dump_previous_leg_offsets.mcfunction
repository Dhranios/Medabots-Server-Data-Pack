data remove entity @s ArmorItems[3].tag.medabots_server.model_data.legs[0]
scoreboard players remove #temp_3 Time 1
execute if score #temp_3 Time matches 1.. run function medabots_server:animations/medabot/dump_previous_leg_offsets