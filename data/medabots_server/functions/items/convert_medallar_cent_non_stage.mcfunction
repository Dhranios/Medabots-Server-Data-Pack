clear @s minecraft:lapis_lazuli{medabots_server:{id:"medabots_server:medallar_cent"}} 1
scoreboard players add #temp Time 1
execute if score #temp Time matches 100 run scoreboard players add #temp2 Money 1
execute if score #temp Time matches ..99 run function medabots_server:items/convert_medallar_cent_non_stage