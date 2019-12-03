# Run generic medabot functions
function medabots_server:main/medabots

# Select random part
scoreboard players set @s[scores={Dialog=60}] Dialog 0
execute unless entity @s[scores={Dialog=-200..}] run scoreboard players add @s Sound 0
execute unless entity @s[scores={Dialog=-200..}] run scoreboard players add @s Dialog 0
tag @s[scores={Time=0,Dialog=2}] remove no_legs
tag @s[scores={Time=0,Dialog=2}] remove legs_selected
tag @s[scores={Time=0,Dialog=2}] remove left_arm_selected
tag @s[scores={Time=0,Dialog=2}] remove right_arm_selected
tag @s[scores={Time=0,Dialog=2}] remove head_selected
tag @s[scores={Time=0,Dialog=2}] remove medaforce_selected
execute unless entity @s[scores={Medaforce=1}] if entity @a[distance=..16,scores={Battle=1}] run scoreboard players add @s[scores={Battle=1,Time=0,Dialog=0},tag=!dying] Dialog 1
execute unless entity @s[scores={Medaforce=1}] run scoreboard players add @s[scores={Dialog=1..59}] Dialog 1
scoreboard players add @s[scores={Dialog=-200..-1}] Dialog 1
execute if entity @s[scores={Dialog=60,LegsArmor=1..},tag=fly_legs,tag=!no_legs] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","legs"],Duration:1}
execute if entity @s[scores={Dialog=60,LegsArmor=1..},tag=!fly_legs,tag=!no_legs] unless entity @s[scores={NoDefendTime=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","legs"],Duration:1}
execute if entity @s[scores={Dialog=60,LeftArmArmor=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","left"],Duration:1}
execute if entity @s[scores={Dialog=60,RightArmArmor=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","right"],Duration:1}
execute if entity @s[scores={Dialog=60,HeadUses=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","head"],Duration:1}
execute if entity @s[scores={Dialog=60},tag=!blocked_medaforce] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","medaforce"],Duration:1}
execute if entity @s[scores={Dialog=60,HeadUses=0,LeftArmArmor=..0,RightArmArmor=..0},tag=blocked_medaforce] if entity @a[distance=..5,scores={Battle=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Select"}',Tags:["random_select","self_destruct"],Duration:1}
execute if entity @s[scores={Dialog=60}] run tag @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_select] add success
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=legs] run tag @s add legs_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=legs] run scoreboard players set @s[tag=fly_legs] Dialog -200
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=legs] run scoreboard players set @s[tag=!fly_legs] Dialog -60
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=left] run tag @s add left_arm_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=right] run tag @s add right_arm_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=head] run tag @s add head_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=medaforce] run tag @s add medaforce_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=self_destruct] run scoreboard players set @s SelfDestruct 1
kill @e[type=minecraft:area_effect_cloud,tag=random_select]

execute store result score #temp Damage run data get entity @s FallDistance 10
execute if score #temp Damage matches 30.. run tag @s add fell
scoreboard players reset #temp Damage

# Damage the selected part
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=fell] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=fell] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=legs_selected] unless entity @s[scores={NoDefendTime=1..}] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=legs_selected] unless entity @s[scores={NoDefendTime=1..}] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},tag=legs_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},tag=legs_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},tag=left_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s LeftArmArmor < @s Damage run scoreboard players set @s LeftArmArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},tag=left_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s LeftArmArmor >= @s Damage run scoreboard players operation @s LeftArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},tag=left_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},tag=left_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},tag=right_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s RightArmArmor < @s Damage run scoreboard players set @s RightArmArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},tag=right_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s RightArmArmor >= @s Damage run scoreboard players operation @s RightArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},tag=right_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},tag=right_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..},tag=!legs_selected,tag=!left_arm_selected,tag=!right_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..},tag=!legs_selected,tag=!left_arm_selected,tag=!right_arm_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=1..,NoDefendTime=1..},tag=legs_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..,NoDefendTime=1..},tag=legs_selected] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage

tag @s remove fell

# Activate appropriate medapart
execute if entity @s[tag=right_arm_selected,scores={Time=0,Dialog=60}] run function medabots_server:items/medapart/activate/cpu/right_arm
execute if entity @s[tag=head_selected,scores={Time=0,Dialog=60}] run function medabots_server:items/medapart/activate/cpu/head
execute if entity @s[tag=left_arm_selected,scores={Time=0,Dialog=60}] run function medabots_server:items/medapart/activate/cpu/left_arm
execute if entity @s[tag=medaforce_selected,scores={Time=0,Dialog=60}] unless entity @s[scores={Medaforce=2..}] run scoreboard players set @s Medaforce 1
execute if entity @s[scores={Medaforce=2..,Time=0,Dialog=60},tag=medaforce_selected] run function medabots_server:items/medapart/activate/cpu/medaforce

# Play walking sound and animation
tag @s remove walking
execute if entity @s[tag=!tank_legs] unless entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=cpu_walk_detection] run tag @s add walking
execute if entity @s[tag=tank_legs] unless entity @e[distance=..0.01,type=minecraft:area_effect_cloud,tag=cpu_walk_detection] run tag @s add walking
kill @e[distance=..1,type=minecraft:area_effect_cloud,tag=cpu_walk_detection]
execute if entity @s[scores={Sound=0},tag=walking,tag=!dying,nbt={OnGround:1b}] run playsound medabots_server:entity.medabot.move.walk hostile @a ~ ~ ~ .025
scoreboard players set @s[scores={Sound=0},tag=walking,tag=!dying] Sound 8
execute if entity @s[tag=!dead] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.walk_detection","with":[{"text":"CPU"}]}',Tags:["cpu_walk_detection"],Duration:2}

# CPU only things
execute if entity @s[tag=dead] as @e[tag=medabot_model] if score @s MedabotNr = @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run kill @s
execute if entity @s[tag=dead] as @e[scores={MedabotNr=1..}] if score @s MedabotNr > @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run scoreboard players remove @s MedabotNr 1
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[nbt=!{ArmorItems:[{id:"minecraft:structure_void"}]}] run replaceitem entity @s armor.head minecraft:structure_void