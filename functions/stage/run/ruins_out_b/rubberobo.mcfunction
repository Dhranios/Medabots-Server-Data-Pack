execute store result score #temp Time run bossbar get medabots_server:ruins_out_b/time value
execute store result bossbar medabots_server:ruins_out_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1804 44 -447 minecraft:lime_wool if block -1802 44 -454 minecraft:lime_wool if block -1802 44 -463 minecraft:lime_wool if block -1804 44 -470 minecraft:lime_wool if block -1819 44 -470 minecraft:lime_wool if block -1821 44 -463 minecraft:lime_wool if block -1821 44 -454 minecraft:lime_wool if block -1819 44 -447 minecraft:lime_wool run scoreboard players set @e[x=-1797.5,y=45,z=-446.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1769 44 -472 minecraft:lime_wool run scoreboard players set @e[x=-1824.5,y=45,z=-445.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1855 44 -474 minecraft:lime_wool run scoreboard players set @e[x=-1811.5,y=45,z=-474.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1856 44 -487 minecraft:blue_wool run scoreboard players set @e[x=-1811.5,y=45,z=-474.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1855 44 -474 minecraft:green_wool if block -1856 44 -487 minecraft:light_blue_wool run scoreboard players set @e[x=-1811.5,y=45,z=-474.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1818 44 -478 minecraft:lime_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1818 44 -486 minecraft:lime_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1805 44 -486 minecraft:lime_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1805 44 -478 minecraft:lime_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1852 44 -488 minecraft:blue_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1818 44 -478 minecraft:green_wool if block -1818 44 -486 minecraft:green_wool if block -1805 44 -486 minecraft:green_wool if block -1805 44 -478 minecraft:green_wool if block -1852 44 -488 minecraft:light_blue_wool run scoreboard players set @e[x=-1799.5,y=45,z=-481.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1841 44 -493 minecraft:blue_wool run scoreboard players set @e[x=-1824.5,y=45,z=-445.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1791 44 -479 minecraft:blue_wool run scoreboard players set @e[x=-1824.5,y=45,z=-445.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1841 44 -493 minecraft:light_blue_wool if block -1791 44 -479 minecraft:light_blue_wool run scoreboard players set @e[x=-1824.5,y=45,z=-445.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1856 44 -472 minecraft:light_blue_wool run scoreboard players set @e[x=-1854.5,y=45,z=-468.5,distance=..0.7,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1856 44 -472 minecraft:blue_wool run scoreboard players set @e[x=-1854.5,y=45,z=-468.5,distance=..0.7,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute if block -1856 44 -472 minecraft:light_blue_wool run scoreboard players set @e[x=-1853.5,y=45,z=-470.5,distance=..0.7,tag=action_floor,scores={PowerAmount=0}] PowerAmount 1
execute if block -1856 44 -472 minecraft:blue_wool run scoreboard players set @e[x=-1853.5,y=45,z=-470.5,distance=..0.7,tag=action_floor,scores={PowerAmount=1}] PowerAmount 0
execute as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=16}] run scoreboard players set @s Stage 16
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_out_b/rubberobo
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/ruins_out_b_rubberobo
tag @s[tag=clear_stage,advancements={medabots_server:wave_1/story_progression={rubberobo_enters_ruins_out_b=true,rubberobo_leaves_ruins_out_b=false}}] add dialog_infinity_rubberobo_leaves_ruins_out_b
execute if entity @s[tag=clear_stage] positioned -1813 51 -489 run function medabots_server:stage/clear