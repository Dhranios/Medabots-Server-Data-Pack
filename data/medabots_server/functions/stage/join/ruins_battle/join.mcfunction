tellraw @s {"translate":"medabots_server:message.stage.player.wait","color":"green"}
scoreboard players set @s StageIndex -1
function medabots_server:stage/join/ruins_battle/get_next_index
tag @s remove index_free
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Stage 49
execute if entity @a[scores={StageIndex=-1,Stage=49,Gamemode=0,StageVersion=0..},limit=1] run scoreboard players operation @s StageVersion = @a[scores={StageIndex=-1,Stage=49,Gamemode=0},limit=1] StageVersion
execute at @s as @a[scores={StageIndex=-1,Stage=49,Gamemode=0},limit=1] run function medabots_server:stage/join/ruins_battle/try_to_complete
