execute unless entity @s[scores={Rings=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","1"],Duration:1}
execute unless entity @s[scores={Rings=2}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","2"],Duration:1}
execute unless entity @s[scores={Rings=3}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","3"],Duration:1}
execute unless entity @s[scores={Rings=4}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","4"],Duration:1}
execute unless entity @s[scores={Rings=5}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","5"],Duration:1}
execute unless entity @s[scores={Rings=6}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","6"],Duration:1}
execute unless entity @s[scores={Rings=7}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","7"],Duration:1}
execute unless entity @s[scores={Rings=8}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","8"],Duration:1}
execute unless entity @s[scores={Rings=9}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","9"],Duration:1}
execute unless entity @s[scores={Rings=10}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","10"],Duration:1}
execute unless entity @s[scores={Rings=11}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","11"],Duration:1}
execute unless entity @s[scores={Rings=12}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","12"],Duration:1}
execute unless entity @s[scores={Rings=13}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","13"],Duration:1}
execute unless entity @s[scores={Rings=14}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","14"],Duration:1}
execute unless entity @s[scores={Rings=15}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","15"],Duration:1}
execute unless entity @s[scores={Rings=16}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","16"],Duration:1}
execute unless entity @s[scores={Rings=17}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","17"],Duration:1}
execute unless entity @s[scores={Rings=18}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","18"],Duration:1}
execute unless entity @s[scores={Rings=19}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Ring Selection"}',Tags:["ring_selection","19"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=ring_selection,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=1] run scoreboard players set @s Rings 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=2] run scoreboard players set @s Rings 2
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=3] run scoreboard players set @s Rings 3
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=4] run scoreboard players set @s Rings 4
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=5] run scoreboard players set @s Rings 5
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=6] run scoreboard players set @s Rings 6
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=7] run scoreboard players set @s Rings 7
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=8] run scoreboard players set @s Rings 8
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=9] run scoreboard players set @s Rings 9
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=10] run scoreboard players set @s Rings 10
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=11] run scoreboard players set @s Rings 11
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=12] run scoreboard players set @s Rings 12
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=13] run scoreboard players set @s Rings 13
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=14] run scoreboard players set @s Rings 14
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=15] run scoreboard players set @s Rings 15
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=16] run scoreboard players set @s Rings 16
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=17] run scoreboard players set @s Rings 17
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=18] run scoreboard players set @s Rings 18
execute if entity @e[type=minecraft:area_effect_cloud,tag=ring_selection,tag=selected,tag=19] run scoreboard players set @s Rings 19
kill @e[type=minecraft:area_effect_cloud,tag=ring_selection]
title @s title {"translate":"medabots_server:message.stage.fly_course.challenge","color":"green","with":[{"score":{"objective":"Rings","name":"@s"}}]}