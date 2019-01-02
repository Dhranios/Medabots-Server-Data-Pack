summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","cannons_1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","walls"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","accelerators"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","wind_1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","cannons_2"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","balloon_bombs"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","action_floors"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","wind_2"],Duration:1}
tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=cannons_1] run function medabots_server:stage/create/park_battle/cannons_1
execute if entity @e[tag=join_stage,tag=selected,tag=walls] run function medabots_server:stage/create/park_battle/walls
execute if entity @e[tag=join_stage,tag=selected,tag=accelerators] run function medabots_server:stage/create/park_battle/accelerators
execute if entity @e[tag=join_stage,tag=selected,tag=wind_1] run function medabots_server:stage/create/park_battle/wind_1
execute if entity @e[tag=join_stage,tag=selected,tag=cannons_2] run function medabots_server:stage/create/park_battle/cannons_2
execute if entity @e[tag=join_stage,tag=selected,tag=balloon_bombs] run function medabots_server:stage/create/park_battle/balloon_bombs
execute if entity @e[tag=join_stage,tag=selected,tag=action_floors] run function medabots_server:stage/create/park_battle/action_floors
execute if entity @e[tag=join_stage,tag=selected,tag=wind_2] run function medabots_server:stage/create/park_battle/wind_2
kill @e[sort=random,tag=join_stage]