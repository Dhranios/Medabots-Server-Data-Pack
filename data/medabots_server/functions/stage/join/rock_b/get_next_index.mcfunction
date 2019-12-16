scoreboard players add @s StageIndex 1
tag @s add index_free
execute at @a[scores={StageIndex=-1..,Stage=11,Gamemode=0}] if score @s StageIndex = @a[distance=..0.1,limit=1] StageIndex run tag @s remove index_free
execute if entity @s[tag=!index_free] run function medabots_server:stage/join/rock_b/get_next_index
