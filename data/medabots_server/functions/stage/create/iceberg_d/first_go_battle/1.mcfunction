execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=33}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=1,Gamemode=0,Stage=33}] run summon minecraft:item -1679 44 -786 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_donor"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_featherdone"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:2,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.mermaid_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.mermaid_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:mermaid_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard"}','{"italic":false,"color":"white","translate":"medabots_server:move.perfect_guard.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_holy_helm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_holy_helm",gender:1b,move:"perfect_guard",part:"head",armor:60,power:76,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_donor"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.heal"}','{"italic":false,"color":"white","translate":"medabots_server:move.heal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_donor.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_donor",gender:1b,move:"heal",part:"right_arm",armor:40,power:10,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:42,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_featherdone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.press"}','{"italic":false,"color":"white","translate":"medabots_server:move.press.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"65"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.uglyduck"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.uglyduck_featherdone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:uglyduck_featherdone",gender:1b,move:"press",part:"left_arm",armor:65,power:26,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:40,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saintnurse"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saintnurse_petticoat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saintnurse_petticoat",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1679 44 -777 run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_4/power_0
execute positioned -1675 44 -777 run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_4/power_0
execute positioned -1672 44 -782 run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_4/power_0
execute positioned -1673 44 -788 run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_4/power_0
execute positioned -1677 44 -791 run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_4/power_0
execute positioned -1681 44 -791 run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_4/power_0
execute positioned -1684 44 -785 run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_4/power_0
execute positioned -1684 44 -780 run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_4/power_0
scoreboard players set @e[x=-1683.5,y=44,z=-773.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1678 44 -781
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=33}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=1,Gamemode=0,Stage=33}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=1,Gamemode=0,Stage=33}] State 2
teleport @a[scores={StageIndex=1,Gamemode=0,Stage=33}] -1679 44 -786
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1677 44 -784 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1680 44 -783 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:iceberg_d/robattle value 3600
bossbar set medabots_server:iceberg_d/robattle players @a[scores={Gamemode=0,Stage=33}]
bossbar set medabots_server:iceberg_d/time players