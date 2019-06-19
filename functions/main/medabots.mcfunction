# Death animation
execute if entity @s[tag=dying] run function medabots_server:animations/medabot_entity/death

# No vanilla combat
effect give @s minecraft:weakness 1000000 127 true

# Set the damage taken
execute if entity @s[type=minecraft:player] store result score @s Damage run data get entity @s Health -1
execute if entity @s[type=!minecraft:player] store result score @s Damage run data get entity @s AbsorptionAmount -1
scoreboard players operation @s Damage += #100 Constants

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
execute if entity @s[scores={AntiFly=1..}] run function medabots_server:items/medapart/anti_fly
execute if entity @s[scores={AntiTank=1..}] run function medabots_server:items/medapart/anti_tank
execute if entity @s[scores={AuxiliaryCharge=1..}] run function medabots_server:items/medapart/auxiliary_charge
execute if entity @s[scores={Break=1..}] run function medabots_server:items/medapart/break
execute if entity @s[scores={Bug=1..}] run function medabots_server:items/medapart/bug
execute if entity @s[scores={Confuse=1..}] run function medabots_server:items/medapart/confuse
execute if entity @s[scores={Defense=1..}] run function medabots_server:items/medapart/defense
execute if entity @s[scores={Destroy=1..}] run function medabots_server:items/medapart/destroy
execute if entity @s[scores={Falling=1..}] run function medabots_server:items/medapart/falling
execute if entity @s[scores={Freeze=1..}] run function medabots_server:items/medapart/freeze
execute if entity @s[scores={Gatling=1..}] run function medabots_server:items/medapart/gatling
execute if entity @s[scores={GuardGravity=1..}] run function medabots_server:items/medapart/guard_gravity
execute if entity @s[scores={GuardGunpowder=1..}] run function medabots_server:items/medapart/guard_gunpowder
execute if entity @s[scores={GuardOptical=1..}] run function medabots_server:items/medapart/guard_optical
execute if entity @s[scores={Hammer=1..}] run function medabots_server:items/medapart/hammer
execute if entity @s[scores={Heal=1..}] run function medabots_server:items/medapart/heal
execute if entity @s[scores={Hide=1..}] run function medabots_server:items/medapart/hide
execute if entity @s[scores={Hold=1..}] run function medabots_server:items/medapart/hold
execute if entity @s[scores={Ineffective=1..}] run function medabots_server:items/medapart/ineffective
execute if entity @s[scores={Infect=1..}] run function medabots_server:items/medapart/infect
execute if entity @s[scores={Laser=1..}] run function medabots_server:items/medapart/laser
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
execute if entity @s[scores={MedaforceControl=1..}] run function medabots_server:items/medapart/medaforce_control
execute if entity @s[scores={MeleeTrap=1..}] run function medabots_server:items/medapart/melee_trap
execute if entity @s[scores={Melt=1..}] run function medabots_server:items/medapart/melt
execute if entity @s[scores={Missile=1..}] run function medabots_server:items/medapart/missile
execute if entity @s[scores={Napalm=1..}] run function medabots_server:items/medapart/napalm
execute if entity @s[scores={NoDefend=1..}] run function medabots_server:items/medapart/no_defend
execute if entity @s[scores={Paralyze=1..}] run function medabots_server:items/medapart/paralyze
execute if entity @s[scores={PerfectGuard=1..}] run function medabots_server:items/medapart/perfect_guard
execute if entity @s[scores={Press=1..}] run function medabots_server:items/medapart/press
execute if entity @s[scores={Repair=1..}] run function medabots_server:items/medapart/repair
execute if entity @s[scores={Rifle=1..}] run function medabots_server:items/medapart/rifle
execute if entity @s[scores={Sacrifice=1..}] run function medabots_server:items/medapart/sacrifice
execute if entity @s[scores={Scout=1..}] run function medabots_server:items/medapart/scout
execute if entity @s[scores={SelfDestruct=1..}] run function medabots_server:items/medapart/self_destruct
execute if entity @s[scores={ShootingTrap=1..}] run function medabots_server:items/medapart/shooting_trap
execute if entity @s[scores={StatusClear=1..}] run function medabots_server:items/medapart/status_clear
execute if entity @s[scores={Transform=1..}] run function medabots_server:items/medapart/transform
execute if entity @s[scores={Sword=1..}] run function medabots_server:items/medapart/sword
execute if entity @s[scores={Wave=1..}] run function medabots_server:items/medapart/wave

# Forget the part
scoreboard players set @s[scores={Time=900..950}] Time 0

# In combat
execute if entity @s[tag=hostile,tag=!dying] run function medabots_server:main/hostile_medabots

# Transform timers
execute unless entity @s[scores={TransformLTime=1..}] unless entity @s[scores={TransformRTime=1..}] unless entity @s[scores={TransformHTime=1..}] run tag @s add no_transform
execute if entity @s[tag=!no_transform] run function medabots_server:items/medapart/transformed
tag @s remove no_transform
