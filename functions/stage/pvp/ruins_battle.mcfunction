summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","walls"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","wind"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","cannons"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","accelerators"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","lasers"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","hammer_punches"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","locked_in"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","empty"],Duration:1}
tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=walls] run function medabots_server:stage/create/ruins_battle/walls
execute if entity @e[tag=join_stage,tag=selected,tag=wind] run function medabots_server:stage/create/ruins_battle/wind
execute if entity @e[tag=join_stage,tag=selected,tag=cannons] run function medabots_server:stage/create/ruins_battle/cannons
execute if entity @e[tag=join_stage,tag=selected,tag=accelerators] run function medabots_server:stage/create/ruins_battle/accelerators
execute if entity @e[tag=join_stage,tag=selected,tag=lasers] run function medabots_server:stage/create/ruins_battle/lasers
execute if entity @e[tag=join_stage,tag=selected,tag=hammer_punches] run function medabots_server:stage/create/ruins_battle/hammer_punches
execute if entity @e[tag=join_stage,tag=selected,tag=locked_in] run function medabots_server:stage/create/ruins_battle/locked_in
execute if entity @e[tag=join_stage,tag=selected,tag=empty] run function medabots_server:stage/create/ruins_battle/empty
kill @e[sort=random,tag=join_stage]