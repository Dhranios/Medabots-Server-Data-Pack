tellraw @s {"translate":"medabots_server:message.stage.player.wait","color":"green"}
scoreboard players set @s StageIndex -1
execute at @a[scores={StageIndex=-1..,Stage=20,Gamemode=0}] run function medabots_server:stage/join/park_b/get_next_index
tag @s remove index_free
tag @s add enemy_medabot
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Stage 20
execute if entity @a[scores={StageIndex=-1,Stage=20,Gamemode=0,StageVersion=0..},limit=1] run scoreboard players operation @s StageVersion = @a[scores={StageIndex=-1,Stage=20,Gamemode=0},limit=1] StageVersion
execute at @s as @a[scores={StageIndex=-1,Stage=20,Gamemode=0},limit=1] run function medabots_server:stage/join/park_b/try_to_complete
