# Trigger anti-tank
execute if entity @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=!ally_team,tag=!enemy_team] run function medabots_server:items/medapart/anti_tank/hit
execute if entity @s[tag=ally_medabot] if entity @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=enemy_team] run function medabots_server:items/medapart/anti_tank/hit
execute if entity @s[tag=enemy_medabot] if entity @e[type=minecraft:area_effect_cloud,tag=anti_tank,distance=..3,scores={DetectTime=40..},tag=ally_team] run function medabots_server:items/medapart/anti_tank/hit

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

# Death animation
execute if entity @s[tag=dying] run function medabots_server:animations/medabot/death

# Send a killer message depending on parts
execute if entity @s[scores={Killer=1..}] run function medabots_server:other/killer

# No vanilla combat
effect give @s minecraft:weakness 1000000 127 true

# Set the damage taken
execute if entity @s[type=minecraft:player] store result score @s Damage run data get entity @s Health -1
execute if entity @s[type=!minecraft:player] store result score @s Damage run data get entity @s AbsorptionAmount -1
scoreboard players operation @s Damage += #100 Constants

# Reduce damage by DEF/10
execute if entity @s[scores={LegsArmor=1..}] run scoreboard players operation #temp Damage = @s LegsDefense
execute if entity @s[scores={LegsArmor=1..}] run scoreboard players operation #temp Damage *= @s Damage
execute if entity @s[scores={LegsArmor=1..}] run scoreboard players operation #temp Damage /= #2 Constants
execute if entity @s[scores={LegsArmor=1..}] run scoreboard players operation @s Damage *= #100 Constants
execute if entity @s[scores={LegsArmor=1..}] run scoreboard players operation @s Damage -= #temp Damage
execute if entity @s[scores={LegsArmor=1..}] run scoreboard players operation @s Damage /= #100 Constants
execute if entity @s[scores={LegsArmor=1..}] run scoreboard players reset #temp Damage

# Prevent earrape when not verified and when leaving stage
scoreboard players set @s[nbt={HurtTime:0s}] Damage 0

# Prevent normal damage
effect give @s[type=!#medabots_server:undead,scores={Damage=1..}] minecraft:instant_health 1 19 true
effect give @s[type=#medabots_server:undead,scores={Damage=1..}] minecraft:instant_damage 1 19 true
data merge entity @s[type=!minecraft:player] {AbsorptionAmount:100.0f}
execute if entity @s[scores={Damage=1..5},tag=!dying] run playsound medabots_server:entity.medabot.damage player @a ~ ~ ~ 0.25
execute if entity @s[scores={Damage=6..10},tag=!dying] run playsound medabots_server:entity.medabot.damage player @a ~ ~ ~ 0.5
execute if entity @s[scores={Damage=11..15},tag=!dying] run playsound medabots_server:entity.medabot.damage player @a ~ ~ ~ 1
execute if entity @s[scores={Damage=16..20},tag=!dying] run playsound medabots_server:entity.medabot.damage player @a ~ ~ ~ 1.5
execute if entity @s[scores={Damage=21..},tag=!dying] run playsound medabots_server:entity.medabot.damage player @a ~ ~ ~ 2

# Combat
execute if entity @s[scores={Medaforce=-2}] run function medabots_server:items/medapart/spiral_bolt
execute if entity @s[scores={Medaforce=-3}] run function medabots_server:items/medapart/ultra_shot
execute if entity @s[scores={Medaforce=-4}] run function medabots_server:items/medapart/total_recovery
execute if entity @s[scores={Medaforce=-5}] run function medabots_server:items/medapart/chaos
execute if entity @s[scores={Medaforce=-6}] run function medabots_server:items/medapart/full_body_up
execute if entity @s[scores={Medaforce=-7}] run function medabots_server:items/medapart/attack_trap
execute if entity @s[scores={Medaforce=-8}] run function medabots_server:items/medapart/question
execute if entity @s[scores={Medaforce=-9}] run function medabots_server:items/medapart/damage_ball
execute if entity @s[scores={Medaforce=-10}] run function medabots_server:items/medapart/iron_wall
execute if entity @s[scores={Medaforce=-11}] run function medabots_server:items/medapart/life_drain
execute if entity @s[scores={Medaforce=-12}] run function medabots_server:items/medapart/destroyer
execute if entity @s[scores={MedapartType=1}] run function medabots_server:items/medapart/anti_fly
execute if entity @s[scores={MedapartType=2}] run function medabots_server:items/medapart/anti_tank
execute if entity @s[scores={MedapartType=3}] run function medabots_server:items/medapart/auxiliary_charge
execute if entity @s[scores={MedapartType=4}] run function medabots_server:items/medapart/break
execute if entity @s[scores={MedapartType=5}] run function medabots_server:items/medapart/bug
execute if entity @s[scores={MedapartType=6}] run function medabots_server:items/medapart/confuse
execute if entity @s[scores={MedapartType=7}] run function medabots_server:items/medapart/defense
execute if entity @s[scores={MedapartType=8}] run function medabots_server:items/medapart/destroy
execute if entity @s[scores={MedapartType=9}] run function medabots_server:items/medapart/falling
execute if entity @s[scores={MedapartType=10}] run function medabots_server:items/medapart/freeze
execute if entity @s[scores={MedapartType=11}] run function medabots_server:items/medapart/gatling
execute if entity @s[scores={MedapartType=12}] run function medabots_server:items/medapart/guard_gravity
execute if entity @s[scores={MedapartType=13}] run function medabots_server:items/medapart/guard_gunpowder
execute if entity @s[scores={MedapartType=14}] run function medabots_server:items/medapart/guard_optical
execute if entity @s[scores={MedapartType=15}] run function medabots_server:items/medapart/hammer
execute if entity @s[scores={MedapartType=16}] run function medabots_server:items/medapart/heal
execute if entity @s[scores={MedapartType=17}] run function medabots_server:items/medapart/hide
execute if entity @s[scores={MedapartType=18}] run function medabots_server:items/medapart/hold
execute if entity @s[scores={MedapartType=19}] run function medabots_server:items/medapart/ineffective
execute if entity @s[scores={MedapartType=20}] run function medabots_server:items/medapart/infect
execute if entity @s[scores={MedapartType=21}] run function medabots_server:items/medapart/laser
execute if entity @s[scores={MedapartType=22}] run function medabots_server:items/medapart/medaforce_control
execute if entity @s[scores={MedapartType=23}] run function medabots_server:items/medapart/melee_trap
execute if entity @s[scores={MedapartType=24}] run function medabots_server:items/medapart/melt
execute if entity @s[scores={MedapartType=25}] run function medabots_server:items/medapart/missile
execute if entity @s[scores={MedapartType=26}] run function medabots_server:items/medapart/napalm
execute if entity @s[scores={MedapartType=27}] run function medabots_server:items/medapart/no_defend
execute if entity @s[scores={MedapartType=28}] run function medabots_server:items/medapart/paralyze
execute if entity @s[scores={MedapartType=29}] run function medabots_server:items/medapart/perfect_guard
execute if entity @s[scores={MedapartType=30}] run function medabots_server:items/medapart/press
execute if entity @s[scores={MedapartType=31}] run function medabots_server:items/medapart/repair
execute if entity @s[scores={MedapartType=32}] run function medabots_server:items/medapart/rifle
execute if entity @s[scores={MedapartType=33}] run function medabots_server:items/medapart/sacrifice
execute if entity @s[scores={MedapartType=34}] run function medabots_server:items/medapart/scout
execute if entity @s[scores={MedapartType=35}] run function medabots_server:items/medapart/shooting_trap
execute if entity @s[scores={MedapartType=36}] run function medabots_server:items/medapart/status_clear
execute if entity @s[scores={MedapartType=37}] run function medabots_server:items/medapart/sword
execute if entity @s[scores={MedapartType=38}] run function medabots_server:items/medapart/transform
execute if entity @s[scores={MedapartType=39}] run function medabots_server:items/medapart/wave
execute if entity @s[scores={SelfDestruct=1..}] run function medabots_server:items/medapart/self_destruct

# Forget the part
scoreboard players set @s[scores={Time=900..950}] Time 0

# Sub-functions
execute if entity @s[tag=!dying] run function medabots_server:entities/medabot/active
execute if entity @s[type=!minecraft:player] run function medabots_server:entities/medabot/cpu
execute if entity @s[type=minecraft:player] run function medabots_server:entities/medabot/player

# Transform timers
execute unless entity @s[scores={TransformLTime=1..}] unless entity @s[scores={TransformRTime=1..}] unless entity @s[scores={TransformHTime=1..}] run tag @s add no_transform
execute if entity @s[tag=!no_transform] run function medabots_server:effects/transformed
tag @s remove no_transform

# Part breaks
execute if entity @s[scores={LegsArmor=0}] run function medabots_server:items/break_medapart
execute if entity @s[scores={LeftArmArmor=0}] run function medabots_server:items/break_medapart
execute if entity @s[scores={RightArmArmor=0}] run function medabots_server:items/break_medapart
execute if entity @s[scores={HeadArmor=0}] run function medabots_server:items/break_medapart
tag @s remove hit_by_melee_trap
tag @s remove hit_by_shooting_trap
tag @s remove hit_by_anti_tank

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/medabot