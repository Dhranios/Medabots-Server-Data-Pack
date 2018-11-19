summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","2"],Duration:1}
#summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","3"],Duration:1}
execute if entity @s[scores={Error=0},gamemode=adventure] run tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=1] run teleport @s -1476 57 -176
execute if entity @e[tag=join_stage,tag=selected,tag=2] run teleport @s -1387 62 -194
#execute if entity @e[tag=join_stage,tag=selected,tag=3] run teleport @s ? ? ?
scoreboard players set @s[scores={Error=0},gamemode=adventure] Stage 97
scoreboard players set @s[scores={Error=0},gamemode=adventure] Battle 1
scoreboard players set @s[scores={Error=0},gamemode=adventure] MusicType -1
scoreboard players set @s[scores={Error=0},gamemode=adventure] Music 0
kill @e[sort=random,tag=join_stage]
scoreboard players set @s[scores={Error=1..}] PreviousError 0