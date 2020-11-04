# Make sure fall damage is send to legs
execute store result score #temp Damage run data get entity @s FallDistance 10
execute if score #temp Damage matches 30.. run tag @s add fell
execute if score #temp Damage matches 30.. run tag @s add fell_2
scoreboard players reset #temp Damage

# Damage the selected part
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=fell] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=fell] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=legs_activated] unless entity @s[scores={NoDefendTime=1..}] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=legs_activated] unless entity @s[scores={NoDefendTime=1..}] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},tag=legs_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},tag=legs_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},tag=left_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s LeftArmArmor < @s Damage run scoreboard players set @s LeftArmArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},tag=left_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s LeftArmArmor >= @s Damage run scoreboard players operation @s LeftArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},tag=left_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},tag=left_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},tag=right_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s RightArmArmor < @s Damage run scoreboard players set @s RightArmArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},tag=right_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s RightArmArmor >= @s Damage run scoreboard players operation @s RightArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},tag=right_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},tag=right_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..},tag=!legs_activated,tag=!left_arm_activated,tag=!right_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..},tag=!legs_activated,tag=!left_arm_activated,tag=!right_arm_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=1..,NoDefendTime=1..},tag=legs_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..,NoDefendTime=1..},tag=legs_activated] unless entity @s[scores={LegsArmor=0..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage

tag @s[tag=!fell_2] remove fell
tag @s remove fell_2

# Target entity
execute store result score #temp Stage run scoreboard players get @s Stage
tag @s add me
execute if entity @s[tag=enemy_medabot] as @e[tag=medabot,tag=!enemy_medabot,tag=!dying] if score @s Stage = #temp Stage run tag @s add potential_target
execute if entity @s[tag=ally_medabot] as @e[tag=medabot,tag=!ally_medabot,tag=!dying] if score @s Stage = #temp Stage run tag @s add potential_target
execute if entity @s[tag=!enemy_medabot,tag=!ally_medabot] as @e[tag=medabot,tag=!dying,tag=!me] if score @s Stage = #temp Stage run tag @s add potential_target
execute if entity @s[tag=enemy_medabot] as @e[tag=last_known_location,tag=!enemy_medabot] if score @s Stage = #temp Stage run tag @s add potential_target
execute if entity @s[tag=ally_medabot] as @e[tag=last_known_location,tag=!ally_medabot] if score @s Stage = #temp Stage run tag @s add potential_target
execute if entity @s[tag=!enemy_medabot,tag=!ally_medabot] as @e[tag=last_known_location] if score @s Stage = #temp Stage run tag @s add potential_target
tag @s remove potential_target
tag @e[tag=potential_target,limit=1,sort=nearest] add target
tag @s remove me
scoreboard players reset #temp Stage

# Define current preference
function #medabots_server:cpu_medabot_preference

# Try to execute preference
execute unless entity @s[scores={Medaforce=1}] run scoreboard players add @s[scores={Dialog=..-1}] Dialog 1
scoreboard players set @s[scores={Time=1..}] Dialog -40
tag @s[scores={Time=0,Dialog=0}] remove legs_activated
tag @s[scores={Time=0,Dialog=0}] remove left_arm_activated
tag @s[scores={Time=0,Dialog=0}] remove right_arm_activated
tag @s[scores={Time=0,Dialog=0}] remove head_activated
tag @s[scores={Time=0,Dialog=0}] remove medaforce_activated
execute store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute as @e[scores={MedabotNr=0..}] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
scoreboard players remove @s[scores={ReactionTime=1..}] ReactionTime 1
execute if entity @s[scores={ReactionTime=0,Time=0,State=1},tag=!dying] run function medabots_server:entities/medabot/cpu/preferences
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot] remove this_medabot

tag @s remove now
tag @s[tag=!now_2] add now
tag @s remove now_2
tag @s[tag=now] add now_2
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying] unless entity @s[tag=!fly_legs,tag=!float_legs] store result score #temp MotionX run data get entity @s Motion[0] 100
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying] unless entity @s[tag=!fly_legs,tag=!float_legs] store result score #temp MotionY run data get entity @s Motion[1] 100
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying] unless entity @s[tag=!fly_legs,tag=!float_legs] store result score #temp MotionZ run data get entity @s Motion[2] 100
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying] unless entity @s[tag=!fly_legs,tag=!float_legs] facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.1 if block ~0.3 ~ ~ minecraft:air if block ~-0.3 ~ ~ minecraft:air if block ~ ~ ~0.3 minecraft:air if block ~ ~ ~-0.3 minecraft:air run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air store result score #temp MotionX run data get entity @s Motion[0] 100
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air store result score #temp MotionY run data get entity @s Motion[1] 100
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air store result score #temp MotionZ run data get entity @s Motion[2] 100
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.05 if block ^ ^1 ^0.3 minecraft:air run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.05 if block ^ ^1 ^0.3 minecraft:comparator run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.05 unless block ^ ^ ^0.3 minecraft:water if block ^ ^1 ^0.3 minecraft:air run scoreboard players set #temp MotionY 18
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.05 unless block ^ ^ ^0.3 minecraft:water if block ^ ^1 ^0.3 minecraft:comparator run scoreboard players set #temp MotionY 18
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying] unless entity @s[tag=!fly_legs,tag=!float_legs] store result entity @s Motion[0] double 0.01 run scoreboard players get #temp MotionX
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying] unless entity @s[tag=!fly_legs,tag=!float_legs] store result entity @s Motion[1] double 0.01 run scoreboard players get #temp MotionY
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying] unless entity @s[tag=!fly_legs,tag=!float_legs] store result entity @s Motion[2] double 0.01 run scoreboard players get #temp MotionZ
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air store result entity @s Motion[0] double 0.01 run scoreboard players get #temp MotionX
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air store result entity @s Motion[1] double 0.01 run scoreboard players get #temp MotionY
execute if entity @s[tag=now,scores={State=1,LegsArmor=1..},tag=!dying,tag=swim_legs] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water if block ~ ~1 ~ minecraft:air store result entity @s Motion[2] double 0.01 run scoreboard players get #temp MotionZ
scoreboard players reset #temp MotionX
scoreboard players reset #temp MotionY
scoreboard players reset #temp MotionZ

# Prevent multiple selected medaparts at once
replaceitem entity @s[tag=legs_activated] weapon.mainhand minecraft:air
tag @s[tag=legs_activated] remove medaforce_activated
tag @s[tag=left_arm_activated] remove medaforce_activated
tag @s[tag=right_arm_activated] remove medaforce_activated
tag @s[tag=head_activated] remove medaforce_activated
scoreboard players set @s[tag=!medaforce_activated] Medaforce 0

# Activate appropriate medapart
execute if entity @s[tag=right_arm_activated,scores={Time=0,Dialog=0}] run function medabots_server:items/medapart/activate/cpu/right_arm
execute if entity @s[tag=head_activated,scores={Time=0,Dialog=0}] run function medabots_server:items/medapart/activate/cpu/head
execute if entity @s[tag=left_arm_activated,scores={Time=0,Dialog=0}] run function medabots_server:items/medapart/activate/cpu/left_arm
execute if entity @s[tag=medaforce_activated,scores={Time=0,Dialog=0}] unless entity @s[scores={Medaforce=2..}] run scoreboard players set @s Medaforce 1
execute if entity @s[scores={Medaforce=2..,Time=0,Dialog=0},tag=medaforce_activated] run function medabots_server:items/medapart/activate/cpu/medaforce

# CPU only things
execute if entity @s[tag=dead] run scoreboard players operation #temp MedabotNr = @s MedabotNr
execute if entity @s[tag=dead] as @e[tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run kill @s
execute if entity @s[tag=dead] as @e[scores={MedabotNr=1..}] if score @s MedabotNr > #temp MedabotNr run scoreboard players remove @s MedabotNr 1
teleport @s[tag=dead] ~ -1000 ~
scoreboard players reset #temp MedabotNr
execute if entity @s[nbt=!{ArmorItems:[{id:"minecraft:structure_void"}]}] run replaceitem entity @s armor.head minecraft:structure_void

# tag as walking if total moved distance is 0.05 or more
tag @s remove walking
scoreboard players operation @s OtherX -= @s PosX
scoreboard players operation @s OtherZ -= @s PosZ
scoreboard players operation @s[scores={OtherX=..-1}] OtherX *= #-1 Constants
scoreboard players operation @s[scores={OtherZ=..-1}] OtherZ *= #-1 Constants
scoreboard players operation @s OtherX += @s OtherZ
tag @s[scores={OtherX=5..}] add walking
execute if entity @s[scores={Sound=0},tag=walking,tag=!dying,nbt={OnGround:1b}] run playsound medabots_server:entity.medabot.move.walk hostile @a ~ ~ ~ .025
scoreboard players set @s[scores={Sound=0},tag=walking,tag=!dying] Sound 8

tag @e[tag=potential_target] remove potential_target
tag @e[tag=target] remove target

# Store old position
scoreboard players operation @s OtherX = @s PosX
scoreboard players operation @s OtherY = @s PosY
scoreboard players operation @s OtherZ = @s PosZ
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100