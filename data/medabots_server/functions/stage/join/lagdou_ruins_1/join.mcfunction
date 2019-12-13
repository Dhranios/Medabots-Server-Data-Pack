tellraw @s {"translate":"medabots_server:message.stage.player.wait","color":"green"}
scoreboard players set @s StageIndex -1
execute at @a[scores={StageIndex=-1..,Stage=36,Gamemode=0}] run function medabots_server:stage/join/lagdou_ruins_1/get_next_index
tag @s remove index_free
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Stage 36
execute if entity @a[scores={StageIndex=-1,Stage=36,Gamemode=0,StageVersion=0..},limit=1] run scoreboard players operation @s StageVersion = @a[scores={StageIndex=-1,Stage=36,Gamemode=0},limit=1] StageVersion
execute at @s as @a[scores={StageIndex=-1,Stage=36,Gamemode=0},limit=1] run function medabots_server:stage/join/lagdou_ruins_1/try_to_complete
