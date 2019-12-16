tellraw @s {"translate":"medabots_server:message.stage.player.wait","color":"green"}
scoreboard players set @s StageIndex -1
function medabots_server:stage/join/ruins_out_a/get_next_index
tag @s remove index_free
tag @s add enemy_medabot
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Stage 7
execute if entity @a[scores={StageIndex=-1,Stage=7,Gamemode=0,StageVersion=0..},limit=1] run scoreboard players operation @s StageVersion = @a[scores={StageIndex=-1,Stage=7,Gamemode=0},limit=1] StageVersion
execute at @s as @a[scores={StageIndex=-1,Stage=7,Gamemode=0},limit=1] run function medabots_server:stage/join/ruins_out_a/try_to_complete
