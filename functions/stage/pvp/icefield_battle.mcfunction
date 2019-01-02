summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","balloon_bombs"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","mirrors"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","cannons"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","locked_out"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","accelerators"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","ice_blocks"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","spring_walls"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","empty"],Duration:1}
tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=balloon_bombs] run function medabots_server:stage/create/icefield_battle/balloon_bombs
execute if entity @e[tag=join_stage,tag=selected,tag=mirrors] run function medabots_server:stage/create/icefield_battle/mirrors
execute if entity @e[tag=join_stage,tag=selected,tag=cannons] run function medabots_server:stage/create/icefield_battle/cannons
execute if entity @e[tag=join_stage,tag=selected,tag=locked_out] run function medabots_server:stage/create/icefield_battle/locked_out
execute if entity @e[tag=join_stage,tag=selected,tag=accelerators] run function medabots_server:stage/create/icefield_battle/accelerators
execute if entity @e[tag=join_stage,tag=selected,tag=ice_blocks] run function medabots_server:stage/create/icefield_battle/ice_blocks
execute if entity @e[tag=join_stage,tag=selected,tag=spring_walls] run function medabots_server:stage/create/icefield_battle/spring_walls
execute if entity @e[tag=join_stage,tag=selected,tag=empty] run function medabots_server:stage/create/icefield_battle/empty
kill @e[sort=random,tag=join_stage]