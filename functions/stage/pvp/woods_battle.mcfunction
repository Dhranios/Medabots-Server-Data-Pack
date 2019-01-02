scoreboard players set @a[x=-1950,y=51,z=-641,distance=..0.7,limit=1] Stage 98
scoreboard players set @a[x=-1948,y=51,z=-641,distance=..0.7,limit=1] Stage 98
scoreboard players set @a[x=-1950,y=51,z=-641,distance=..0.7,limit=1] Battle 1
scoreboard players set @a[x=-1948,y=51,z=-641,distance=..0.7,limit=1] Battle 1
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","stones"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","action_floors_1"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","action_floors_2"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","balloon_bombs"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","accelerators"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","lasers"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","cannons"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:entity.stage_randomizer\"}",Tags:["version","empty"],Duration:1}
tag @e[sort=random,tag=join_stage,limit=1] add selected
execute if entity @e[tag=join_stage,tag=selected,tag=stones] run function medabots_server:stage/create/woods_battle/stones
execute if entity @e[tag=join_stage,tag=selected,tag=action_floors_1] run function medabots_server:stage/create/woods_battle/action_floors_1
execute if entity @e[tag=join_stage,tag=selected,tag=action_floors_2] run function medabots_server:stage/create/woods_battle/action_floors_2
execute if entity @e[tag=join_stage,tag=selected,tag=balloon_bombs] run function medabots_server:stage/create/woods_battle/balloon_bombs
execute if entity @e[tag=join_stage,tag=selected,tag=accelerators] run function medabots_server:stage/create/woods_battle/accelerators
execute if entity @e[tag=join_stage,tag=selected,tag=lasers] run function medabots_server:stage/create/woods_battle/lasers
execute if entity @e[tag=join_stage,tag=selected,tag=cannons] run function medabots_server:stage/create/woods_battle/cannons
execute if entity @e[tag=join_stage,tag=selected,tag=empty] run function medabots_server:stage/create/woods_battle/empty
kill @e[sort=random,tag=join_stage]