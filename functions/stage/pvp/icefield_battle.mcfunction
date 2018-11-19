summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","2"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","3"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","4"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","5"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","6"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","7"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","8"],Duration:1}
tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=1] run function medabots_server:stage/create/icefield_battle/1
execute if entity @e[tag=join_stage,tag=selected,tag=2] run function medabots_server:stage/create/icefield_battle/2
execute if entity @e[tag=join_stage,tag=selected,tag=3] run function medabots_server:stage/create/icefield_battle/3
execute if entity @e[tag=join_stage,tag=selected,tag=4] run function medabots_server:stage/create/icefield_battle/4
execute if entity @e[tag=join_stage,tag=selected,tag=5] run function medabots_server:stage/create/icefield_battle/5
execute if entity @e[tag=join_stage,tag=selected,tag=6] run function medabots_server:stage/create/icefield_battle/6
execute if entity @e[tag=join_stage,tag=selected,tag=7] run function medabots_server:stage/create/icefield_battle/7
execute if entity @e[tag=join_stage,tag=selected,tag=8] run function medabots_server:stage/create/icefield_battle/8
kill @e[sort=random,tag=join_stage]