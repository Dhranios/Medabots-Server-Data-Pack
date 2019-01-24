# Tag the equipped users
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..},tag=fly_legs,type=!minecraft:player] Fly 2
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] Fly 2
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..,Fly=1..},type=!minecraft:player] Fly 2
execute if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if block ~ ~-3 ~ minecraft:air run scoreboard players set @s[tag=hostile,nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] Fly 1
execute if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if block ~ ~-3 ~ minecraft:air run scoreboard players set @s[tag=hostile,scores={Fly=1..},type=!minecraft:player] Fly 1
scoreboard players set @s[scores={Fly=1..,LegsArmor=..0},nbt={OnGround:1b}] Fly 0
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..},nbt={SelectedItemSlot:0,Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] Fly 3
scoreboard players set @s[tag=hostile,scores={LegsArmor=1..,FlyTime=..150},type=!minecraft:player,tag=legs_selected] Fly 3

# Limit flying to 8 seconds
scoreboard players set @s[scores={FlyTime=1..},nbt={OnGround:1b}] FlyTime 0
scoreboard players set @s[scores={FlyTime=160}] OverheatingFly 1
scoreboard players set @s[scores={OverheatingFly=1}] Fly 1

# Move up unless outside of y=0-255 or if there's moving piston blocks above
execute if entity @s[tag=hostile,scores={Fly=1..}] run effect give @s minecraft:slow_falling 1 0 true
execute if entity @s[tag=hostile,scores={Fly=3}] if entity @s[y=0,dy=255] run effect give @s minecraft:levitation 1 3 true
execute if entity @s[tag=hostile,scores={Fly=3}] if entity @s[y=255,dy=1] run effect clear @s minecraft:levitation
execute if entity @s[scores={Fly=3}] if block ~ ~2 ~ minecraft:moving_piston run effect clear @s minecraft:levitation

# increase and decrease the fly time
scoreboard players add @s[scores={Fly=3}] FlyTime 2
scoreboard players remove @s[scores={FlyTime=1..}] FlyTime 1
scoreboard players set @s[scores={FlyTime=0}] OverheatingFly 0

# Warn for overheating
title @s[scores={FlyTime=140..160}] title {"translate":"medabots_server:move.overheating","color":"red"}

# Damage overheating fliers
scoreboard players remove @s[scores={OverheatingFly=1,MedaforceTimer=2}] LegsArmor 1

# Spawn the fly crash checker
execute if entity @s[scores={Fly=1,LegsArmor=..0}] if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air run summon minecraft:armor_stand ~ ~-4 ~ {Invisible:1b,NoGravity:1b,Marker:1b,CustomName:"{\"translate\":\"medabots_server:entity.flying_crash\"}",Tags:["flying_crash"]}

# No flying if not in battle
scoreboard players set @s[scores={Fly=1..},tag=!hostile] Fly 0

# Instantly fall if not selected
effect clear @s[scores={Float=..1,Fly=..2}] minecraft:levitation

# Static floating when used
effect give @s[scores={Fly=1..2},tag=static_fly_move_up] minecraft:levitation 1 2 true
effect clear @s[scores={Fly=1..2},tag=!static_fly_move_up] minecraft:levitation
effect give @s[scores={Fly=1..2},tag=!static_fly_move_up] minecraft:slow_falling 1 0 true
effect clear @s[scores={Fly=1..2},tag=static_fly_move_up] minecraft:slow_falling

# Switch between levitation and slow falling
tag @s[tag=static_fly_move_up] add static_fly_move_down
tag @s[tag=static_fly_move_down] remove static_fly_move_up
tag @s[tag=static_fly,tag=!static_fly_move_down] add static_fly_move_up
tag @s[tag=static_fly_move_down] remove static_fly_move_down