scoreboard players add @s StageIndex 1
tag @s add index_free
execute if score @s StageIndex = @a[distance=..0.1,limit=1] StageIndex run tag @s remove index_free
execute if entity @s[tag=!index_free] run function medabots_server:stage/join/lagdou_ruins_7/get_next_index
