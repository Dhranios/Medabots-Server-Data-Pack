# Send a killer message depending on parts
execute if entity @s[scores={Killer=1..}] run function medabots_server:medaparts/killer

# Stage effects
execute if block ~ ~ ~ minecraft:comparator run function medabots_server:stage/accelerator
execute if entity @s[tag=hammer_punch_hit] run function medabots_server:stage/hammer_punch_hit

# Instant death if you fall in the void
execute if entity @s[y=-80,dy=79] run tellraw @a {"translate":"medabots_server:death.void","with":[{"selector":"@s"}]}
tag @s[y=-80,dy=79] add had_death
kill @s[y=-80,dy=79]

# Get Armor %
scoreboard players operation @s LegsPer = @s LegsArmor
scoreboard players operation @s LeftArmPer = @s LeftArmArmor
scoreboard players operation @s RightArmPer = @s RightArmArmor
scoreboard players operation @s HeadPer = @s HeadArmor
scoreboard players operation @s HeadUsesPer = @s HeadUses
scoreboard players operation @s LegsPer *= #100 Constants
scoreboard players operation @s LeftArmPer *= #100 Constants
scoreboard players operation @s RightArmPer *= #100 Constants
scoreboard players operation @s HeadPer *= #100 Constants
scoreboard players operation @s HeadUsesPer *= #100 Constants
scoreboard players operation @s LegsPer /= @s MaxLegsArmor
scoreboard players operation @s LeftArmPer /= @s MaxLeftArmArmor
scoreboard players operation @s RightArmPer /= @s MaxRightArmArmor
scoreboard players operation @s HeadPer /= @s MaxHeadArmor
scoreboard players operation @s HeadUsesPer /= @s MaxHeadUses

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
function medabots_server:other/pot_breaker

# Let the combat begin, activate your part
execute if entity @s[scores={Time=1,Battle=1,UsePart=1..}] run function medabots_server:medaparts/activate_medaparts

# Check status effects
execute if entity @s[tag=!checked_effects,nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:pot_breaker"}}}}] run function medabots_server:other/check_effects
tag @s[tag=checked_effects,nbt=!{SelectedItem:{tag:{medabots_server:{id:"medabots_server:pot_breaker"}}}}] remove checked_effects

# Track how long the player has been in combat
# To do: make the scoreboard name correct
scoreboard players add @s OnlineTime 1

# Damage the selected part, change up the medaforce if it's the medal
execute if entity @s[scores={Damage=1..,LegsArmor=1..},nbt={SelectedItemSlot:0}] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},nbt={SelectedItemSlot:0}] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},nbt={SelectedItemSlot:0}] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},nbt={SelectedItemSlot:0}] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},nbt={SelectedItemSlot:1}] if score @s LeftArmArmor < @s Damage run scoreboard players set @s LeftArmArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},nbt={SelectedItemSlot:1}] if score @s LeftArmArmor >= @s Damage run scoreboard players operation @s LeftArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},nbt={SelectedItemSlot:1}] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},nbt={SelectedItemSlot:1}] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},nbt={SelectedItemSlot:2}] if score @s RightArmArmor < @s Damage run scoreboard players set @s RightArmArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},nbt={SelectedItemSlot:2}] if score @s RightArmArmor >= @s Damage run scoreboard players operation @s RightArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},nbt={SelectedItemSlot:2}] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},nbt={SelectedItemSlot:2}] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..},nbt=!{SelectedItemSlot:0},nbt=!{SelectedItemSlot:1},nbt=!{SelectedItemSlot:2}] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..},nbt=!{SelectedItemSlot:0},nbt=!{SelectedItemSlot:1},nbt=!{SelectedItemSlot:2}] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
tag @s[scores={Damage=1..},nbt={SelectedItemSlot:4,Inventory:[{Slot:4b,tag:{medabots_server:{move:"medaforce_charge"}}}]}] add medal_damage
scoreboard players add @s[tag=medal_damage] Charge 1
clear @s[tag=medal_damage] minecraft:nether_star 1
tag @s[tag=medal_damage] remove medal_damage