summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","2"],Duration:1}
#summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","3"],Duration:1}
execute if entity @s[scores={Error=0,Level=20,LagdouKill=6..},gamemode=adventure] run tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=1] run teleport @s -1321 45 -123
execute if entity @e[tag=join_stage,tag=selected,tag=2] run teleport @s -1369 45 -186
#execute if entity @e[tag=join_stage,tag=selected,tag=3] run teleport @s ? ? ?
scoreboard players set @s[scores={Error=0,Level=20,LagdouKill=6..},gamemode=adventure] Stage 90
scoreboard players set @s[scores={Error=0,Level=20,LagdouKill=6..},gamemode=adventure] Battle 1
scoreboard players set @s[scores={Error=0,Level=20,LagdouKill=6..},gamemode=adventure] MusicType 20
scoreboard players set @s[scores={Error=0,Level=20,LagdouKill=6..},gamemode=adventure] Music 0
kill @e[sort=random,tag=join_stage]
scoreboard players set @s[scores={Error=1..}] PreviousError 0