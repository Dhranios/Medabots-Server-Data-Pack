data modify block -286 1 -52 Items[0].tag.value set from block -286 0 -52 Items[0].tag.medabots_server.cleared[0]
execute store success score #temp Time if blocks -286 1 -52 -286 1 -52 -286 0 -53 all
execute if score #temp Time matches 1.. run tag @s add listed
scoreboard players reset #temp Time
execute if entity @s[tag=!listed] run data remove block -286 0 -52 Items[0].tag.medabots_server.cleared[0]
execute if entity @s[tag=!listed] if data block -286 0 -52 Items[0].tag.medabots_server.cleared[0] run function medabots_server:items/custom_stage/search