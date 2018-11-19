execute unless entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run tellraw @s {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run scoreboard players set @s BattlingMedabots 1
summon minecraft:area_effect_cloud -1690 45 -169 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1692 45 -172 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1695 45 -165 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1695 45 -176 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1697 45 -169 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1700 45 -166 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
summon minecraft:area_effect_cloud -1700 45 -173 {CustomName:"{\"translate\":\"medabots_server:block.hole\"}",Tags:["hole","delay_5"],Duration:2147483647}
tag @a[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot] remove enemy_medabot
scoreboard players set @a[x=-1652,y=45,z=-129,distance=..10] Music 0
scoreboard players set @a[x=-1652,y=45,z=-129,distance=..10] MusicType 1
scoreboard players set @a[x=-1652,y=45,z=-129,distance=..10] Battle 0
teleport @a[x=-1652,y=45,z=-129,distance=..10] -1674 51 -149 -180 0
tag @e[x=-1652,y=45,z=-129,distance=..10,tag=enemy_medabot,type=!minecraft:player] add dead
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run setblock -1687 45 -173 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run effect give @s minecraft:night_vision 2 0 true
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run effect give @s minecraft:blindness 2 0 true
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run scoreboard players set @s Battle 2
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run effect give @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] minecraft:night_vision 2 0 true
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run effect give @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] minecraft:blindness 2 0 true
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run scoreboard players set @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] Battle 2
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run summon minecraft:armor_stand -1696 45 -166 {CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Invisible:1b,Rotation:[-135f,0f]}
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run teleport @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] -1697 45 -167
execute if entity @e[x=-1697,y=45,z=-167,distance=..10,tag=enemy_medabot] run teleport @s -1693 45 -168