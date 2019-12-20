# Loot chest
execute if entity @s[nbt={Inventory:[{tag:{medabots_server:{stage_item:1b}}}]}] run function medabots_server:items/loot_container/put_in

# Block effects
execute if block ~ ~ ~ minecraft:comparator run function medabots_server:blocks/accelerator/accel
execute if entity @s[tag=hammer_punch_hit] run function medabots_server:blocks/hammer_punch/hit

# Spawn gold pass if level is above 50
execute if entity @s[level=50..,advancements={medabots_server:special_items/passes/gold=false},tag=!spawned_pass] run function medabots_server:spawn_entities/item/gold_pass

# Instant death if you fall in the void
execute if entity @s[y=-80,dy=79,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.void","with":[{"selector":"@s"}]}
tag @s[y=-80,dy=79] add had_death
tag @s[y=-80,dy=79] add dying

# Effects
execute if entity @s[scores={AuxiliaryTime=1..}] run function medabots_server:effects/auxiliary_charged
execute if entity @s[scores={BugTime=1..}] run function medabots_server:effects/buged
execute if entity @s[scores={ChaosTime=1..}] run function medabots_server:effects/panic
execute if entity @s[scores={ConfuseTime=1..}] run function medabots_server:effects/confused
execute if entity @s[scores={DefenseTime=1..}] run function medabots_server:effects/defending
execute if entity @s[scores={FreezeTime=1..}] run function medabots_server:effects/frozen
execute if entity @s[scores={HideTime=1..}] run function medabots_server:effects/hidden
execute if entity @s[scores={HoldTime=1..}] run function medabots_server:effects/held
execute if entity @s[scores={IneffectiveTime=1..}] run function medabots_server:effects/ineffective_part
execute if entity @s[scores={InfectTime=1..}] run function medabots_server:effects/infected
execute if entity @s[scores={NoDefendTime=1..}] run function medabots_server:effects/no_defending
execute if entity @s[scores={ParalyzeTime=1..}] run function medabots_server:effects/paralyzed
execute if entity @s[scores={PerfectGuardTime=1..}] run function medabots_server:effects/perfectly_guarding
execute if entity @s[scores={ScoutTime=1..}] run function medabots_server:effects/scouting

# Set Armor colors
scoreboard players set @s[scores={LegsArmor=..0}] LegsDanger 3
scoreboard players set @s[scores={LeftArmArmor=..0}] LeftArmDanger 3
scoreboard players set @s[scores={RightArmArmor=..0}] RightArmDanger 3
scoreboard players set @s[scores={HeadArmor=..0}] HeadDanger 3
scoreboard players set @s[scores={HeadUses=..0}] HeadUsesDanger 3
scoreboard players set @s[scores={LegsPer=1..25}] LegsDanger 2
scoreboard players set @s[scores={LeftArmPer=1..25}] LeftArmDanger 2
scoreboard players set @s[scores={RightArmPer=1..25}] RightArmDanger 2
scoreboard players set @s[scores={HeadPer=1..25}] HeadDanger 2
scoreboard players set @s[scores={HeadUsesPer=1..25}] HeadUsesDanger 2
scoreboard players set @s[scores={LegsPer=26..50}] LegsDanger 1
scoreboard players set @s[scores={LeftArmPer=26..50}] LeftArmDanger 1
scoreboard players set @s[scores={RightArmPer=26..50}] RightArmDanger 1
scoreboard players set @s[scores={HeadPer=26..50}] HeadDanger 1
scoreboard players set @s[scores={HeadUsesPer=26..50}] HeadUsesDanger 1
scoreboard players set @s[scores={LegsPer=51..}] LegsDanger 0
scoreboard players set @s[scores={LeftArmPer=51..}] LeftArmDanger 0
scoreboard players set @s[scores={RightArmPer=51..}] RightArmDanger 0
scoreboard players set @s[scores={HeadPer=51..}] HeadDanger 0
scoreboard players set @s[scores={HeadUsesPer=51..}] HeadUsesDanger 0

# Show Armor values
title @s actionbar {"translate":"medabots_server:scoreboard.objective.legs_armor","color":"yellow","with":[{"score":{"name":"@s[scores={LegsDanger=0}]","objective":"LegsArmor"},"color":"green"},{"score":{"name":"@s[scores={LegsDanger=1}]","objective":"LegsArmor"},"color":"gold"},{"score":{"name":"@s[scores={LegsDanger=2}]","objective":"LegsArmor"},"color":"red"},{"score":{"name":"@s[scores={LegsDanger=3}]","objective":"LegsArmor"},"color":"black"}],"extra":[{"text":" | ","color":"white"},{"translate":"medabots_server:scoreboard.objective.left_arm_armor","color":"yellow","with":[{"score":{"name":"@s[scores={LeftArmDanger=0}]","objective":"LeftArmArmor"},"color":"green"},{"score":{"name":"@s[scores={LeftArmDanger=1}]","objective":"LeftArmArmor"},"color":"gold"},{"score":{"name":"@s[scores={LeftArmDanger=2}]","objective":"LeftArmArmor"},"color":"red"},{"score":{"name":"@s[scores={LeftArmDanger=3}]","objective":"LeftArmArmor"},"color":"black"}]},{"text":" | ","color":"white"},{"translate":"medabots_server:scoreboard.objective.right_arm_armor","color":"yellow","with":[{"score":{"name":"@s[scores={RightArmDanger=0}]","objective":"RightArmArmor"},"color":"green"},{"score":{"name":"@s[scores={RightArmDanger=1}]","objective":"RightArmArmor"},"color":"gold"},{"score":{"name":"@s[scores={RightArmDanger=2}]","objective":"RightArmArmor"},"color":"red"},{"score":{"name":"@s[scores={RightArmDanger=3}]","objective":"RightArmArmor"},"color":"black"}]},{"text":" | ","color":"white"},{"translate":"medabots_server:scoreboard.objective.head_armor","color":"yellow","with":[{"score":{"name":"@s[scores={HeadDanger=0}]","objective":"HeadArmor"},"color":"green"},{"score":{"name":"@s[scores={HeadDanger=1}]","objective":"HeadArmor"},"color":"gold"},{"score":{"name":"@s[scores={HeadDanger=2}]","objective":"HeadArmor"},"color":"red"},{"score":{"name":"@s[scores={HeadDanger=3}]","objective":"HeadArmor"},"color":"black"}]},{"text":" | ","color":"white"},{"translate":"medabots_server:scoreboard.objective.head_uses_left","color":"yellow","with":[{"score":{"name":"@s[scores={HeadUsesDanger=0}]","objective":"HeadUses"},"color":"green"},{"score":{"name":"@s[scores={HeadUsesDanger=1}]","objective":"HeadUses"},"color":"gold"},{"score":{"name":"@s[scores={HeadUsesDanger=2}]","objective":"HeadUses"},"color":"red"},{"score":{"name":"@s[scores={HeadUsesDanger=3}]","objective":"HeadUses"},"color":"black"}]}]}

# Give the pot breaker
function medabots_server:items/pot_breaker

# Let the combat begin, activate your part
tag @s[scores={Time=0}] remove head_selected
tag @s[scores={Time=0}] remove right_arm_selected
tag @s[scores={Time=0}] remove left_arm_selected
execute if entity @s[scores={Time=0,State=1,UsePart=1..}] run function medabots_server:items/medapart/activate/player

# Static flying
tag @s[scores={State=1,UsePart=1..},tag=!static_fly,nbt={SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{medabots_server:{activated:1b,move:"fly",part:"legs"}}}]}] add static_flying 
tag @s[scores={State=1,UsePart=1..},tag=static_fly,nbt={SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{medabots_server:{activated:1b,move:"fly",part:"legs"}}}]}] remove static_fly
tag @s[scores={State=1,UsePart=1..},tag=static_flying] add static_fly
tag @s[scores={State=1,UsePart=1..},tag=static_flying] remove static_flying

# Check status effects
execute if entity @s[tag=!checked_effects,nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:pot_breaker"}}}}] run function medabots_server:effects/check
tag @s[tag=checked_effects,nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:pot_breaker"}}}}] remove checked_effects

# Damage the selected part
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=fell] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=fell] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=1..},nbt={SelectedItemSlot:0}] unless entity @s[scores={LegsArmor=1..},tag=fell] unless entity @s[scores={NoDefendTime=1..}] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},nbt={SelectedItemSlot:0}] unless entity @s[scores={LegsArmor=1..},tag=fell] unless entity @s[scores={NoDefendTime=1..}] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},nbt={SelectedItemSlot:0}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},nbt={SelectedItemSlot:0}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},nbt={SelectedItemSlot:1}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s LeftArmArmor < @s Damage run scoreboard players set @s LeftArmArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},nbt={SelectedItemSlot:1}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s LeftArmArmor >= @s Damage run scoreboard players operation @s LeftArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},nbt={SelectedItemSlot:1}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},nbt={SelectedItemSlot:1}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},nbt={SelectedItemSlot:2}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s RightArmArmor < @s Damage run scoreboard players set @s RightArmArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},nbt={SelectedItemSlot:2}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s RightArmArmor >= @s Damage run scoreboard players operation @s RightArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},nbt={SelectedItemSlot:2}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},nbt={SelectedItemSlot:2}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..},nbt=!{SelectedItemSlot:0},nbt=!{SelectedItemSlot:1},nbt=!{SelectedItemSlot:2}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..},nbt=!{SelectedItemSlot:0},nbt=!{SelectedItemSlot:1},nbt=!{SelectedItemSlot:2}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=1..,NoDefendTime=1..},nbt={SelectedItemSlot:0}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..,NoDefendTime=1..},nbt={SelectedItemSlot:0}] unless entity @s[scores={LegsArmor=1..},tag=fell] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage

# Trigger walking animation for fly/float
execute if entity @s[tag=!running,tag=!sneak_pos] unless entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=medabot_walk_detection] run tag @s add walking
execute if entity @s[tag=!running,tag=sneak_pos] unless entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=medabot_walk_detection] run tag @s add sneaking
kill @e[distance=..1,type=minecraft:area_effect_cloud,tag=medabot_walk_detection]
execute if entity @s[tag=!dead,tag=!running] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.walk_detection","with":[{"text":"Medabot"}]}',Tags:["medabot_walk_detection"],Duration:2}