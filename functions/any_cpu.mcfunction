# Run generic medabot functions
function medabots_server:any_medabot

# Select random part
scoreboard players set @s[scores={Dialog=60}] Dialog 0
execute unless entity @s[scores={Dialog=-200..}] run scoreboard players add @s Sound 0
execute unless entity @s[scores={Dialog=-200..}] run scoreboard players add @s Dialog 0
execute if entity @s[scores={Time=0,Dialog=2}] run tag @s remove legs_selected
execute if entity @s[scores={Time=0,Dialog=2}] run tag @s remove left_arm_selected
execute if entity @s[scores={Time=0,Dialog=2}] run tag @s remove right_arm_selected
execute if entity @s[scores={Time=0,Dialog=2}] run tag @s remove head_selected
execute if entity @s[scores={Time=0,Dialog=2}] run tag @s remove medaforce_selected
execute unless entity @s[scores={Medaforce=1}] if entity @a[distance=..16,scores={Battle=1}] run scoreboard players add @s[scores={Battle=1,Time=0,Dialog=0},tag=!dying] Dialog 1
execute unless entity @s[scores={Medaforce=1}] run scoreboard players add @s[scores={Dialog=1..59}] Dialog 1
scoreboard players add @s[scores={Dialog=-200..-1}] Dialog 1
execute if entity @s[scores={Dialog=60,LegsArmor=1..},tag=fly_legs] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","legs"],Duration:1}
execute if entity @s[scores={Dialog=60,LeftArmArmor=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","left"],Duration:1}
execute if entity @s[scores={Dialog=60,RightArmArmor=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","right"],Duration:1}
execute if entity @s[scores={Dialog=60,HeadUses=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","head"],Duration:1}
execute if entity @s[scores={Dialog=60}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","medaforce"],Duration:1}
execute if entity @s[scores={Dialog=60}] run tag @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_select] add success
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=legs] run tag @s add legs_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=legs] run scoreboard players set @s Dialog -200
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=left] run tag @s add left_arm_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=right] run tag @s add right_arm_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=head] run tag @s add head_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=medaforce] run tag @s add medaforce_selected
kill @e[type=minecraft:area_effect_cloud,tag=random_select]

# Damage the selected part, change up the medaforce if it's the medal
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=legs_selected] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=legs_selected] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},tag=legs_selected] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},tag=legs_selected] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},tag=left_arm_selected] if score @s LeftArmArmor < @s Damage run scoreboard players set @s LeftArmArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},tag=left_arm_selected] if score @s LeftArmArmor >= @s Damage run scoreboard players operation @s LeftArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},tag=left_arm_selected] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},tag=left_arm_selected] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},tag=right_arm_selected] if score @s RightArmArmor < @s Damage run scoreboard players set @s RightArmArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},tag=right_arm_selected] if score @s RightArmArmor >= @s Damage run scoreboard players operation @s RightArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},tag=right_arm_selected] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},tag=right_arm_selected] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..},tag=!legs_selected,tag=!left_arm_selected,tag=!right_arm_selected] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..},tag=!legs_selected,tag=!left_arm_selected,tag=!right_arm_selected] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
tag @s[scores={Damage=1..},tag=medaforce_selected] add medal_damage
scoreboard players add @s[tag=medal_damage] Charge 1
clear @s[tag=medal_damage] minecraft:nether_star 1
tag @s[tag=medal_damage] remove medal_damage

# Activate appropriate medapart
execute if entity @s[tag=right_arm_selected,scores={Time=0,Dialog=60}] run function medabots_server:medaparts/activate_medaparts/cpu_right_arm
execute if entity @s[tag=head_selected,scores={Time=0,Dialog=60}] run function medabots_server:medaparts/activate_medaparts/cpu_head
execute if entity @s[tag=left_arm_selected,scores={Time=0,Dialog=60}] run function medabots_server:medaparts/activate_medaparts/cpu_left_arm
execute if entity @s[tag=medaforce_selected,scores={Time=0,Dialog=60}] unless entity @s[scores={Medaforce=2..}] run scoreboard players set @s Medaforce 1
execute if entity @s[scores={Medaforce=2..,Time=0,Dialog=60},tag=medaforce_selected] run function medabots_server:medaparts/activate_medaparts/cpu_medaforce

# Play walking sound and animation
tag @s remove walking
execute unless entity @e[distance=..0.001,type=minecraft:area_effect_cloud,tag=cpu_walk_detection] run tag @s add walking
kill @e[distance=..1,type=minecraft:area_effect_cloud,tag=cpu_walk_detection]
execute if entity @s[scores={Sound=0},tag=walking] run playsound medabots_server:entity.medabot.walk hostile @a ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=walking,tag=!dead] Sound 8
execute if entity @s[tag=!dead] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.walk_detection","with":[{"text":"CPU"}]}',Tags:["cpu_walk_detection"],Duration:2}

# CPU only things
execute if entity @s[tag=dead] as @e[scores={MedabotNr=1..}] if score @s MedabotNr > @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run scoreboard players remove @s MedabotNr 1
teleport @s[tag=dead] ~ -1000 ~
execute unless entity @s[scores={Wave=1..}] if entity @s[nbt=!{ArmorItems:[{id:"minecraft:structure_void"}]},nbt=!{ArmorItems:[{id:"minecraft:stone_button"}]}] run replaceitem entity @s armor.head minecraft:structure_void