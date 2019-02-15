summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer_marker\"}",Tags:["join_stage","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer_marker\"}",Tags:["join_stage","2"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer_marker\"}",Tags:["join_stage","3"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer_marker\"}",Tags:["join_stage","4"],Duration:1}
#summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer_marker\"}",Tags:["join_stage","5"],Duration:1}
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=1] run teleport @s -1271 36 -72
execute if entity @e[tag=join_stage,tag=selected,tag=2] run teleport @s -1328 43 -114
execute if entity @e[tag=join_stage,tag=selected,tag=3] run teleport @s -1271 43 -114
execute if entity @e[tag=join_stage,tag=selected,tag=3] run teleport @s -1316 41 -69
#execute if entity @e[tag=join_stage,tag=selected,tag=3] run teleport @s ? ? ?
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] Stage 87
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] Battle 1
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] MusicType 19
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] Music 0
kill @e[tag=join_stage]
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}