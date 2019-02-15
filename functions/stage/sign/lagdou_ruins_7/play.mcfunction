summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","2"],Duration:1}
#summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["join_stage","3"],Duration:1}
execute if entity @s[scores={Error=0,Dialog=0,Level=35},advancements={medabots_server:stages/lagdou_ruins_6_second_go=true},gamemode=adventure] run tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=1] run teleport @s -1295 44 -213
execute if entity @e[tag=join_stage,tag=selected,tag=2] run teleport @s -1245 44 -150
#execute if entity @e[tag=join_stage,tag=selected,tag=3] run teleport @s ? ? ?
scoreboard players set @s[scores={Error=0,Dialog=0,Level=35},advancements={medabots_server:stages/lagdou_ruins_6_second_go=true},gamemode=adventure] Stage 93
scoreboard players set @s[scores={Error=0,Dialog=0,Level=35},advancements={medabots_server:stages/lagdou_ruins_6_second_go=true},gamemode=adventure] Battle 1
scoreboard players set @s[scores={Error=0,Dialog=0,Level=35},advancements={medabots_server:stages/lagdou_ruins_6_second_go=true},gamemode=adventure] MusicType 20
scoreboard players set @s[scores={Error=0,Dialog=0,Level=35},advancements={medabots_server:stages/lagdou_ruins_6_second_go=true},gamemode=adventure] Music 0
kill @e[tag=join_stage]
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}