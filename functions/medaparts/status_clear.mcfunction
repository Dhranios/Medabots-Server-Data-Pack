# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,StatusClear=1}] Time 19
scoreboard players set @s[scores={Time=3,StatusClear=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:totem_of_undying ~ ~1 ~ 1 0 1 1 10

# Remove all status effects
scoreboard players set @s[scores={Time=32,AuxiliaryTime=1..}] AuxiliaryTime 1
scoreboard players set @s[scores={Time=32,BugTime=1..}] BugTime 1
scoreboard players set @s[scores={Time=32,ConfuseTime=1..}] ConfuseTime 1
scoreboard players set @s[scores={Time=32,DefenseTime=1..}] DefenseTime 1
scoreboard players set @s[scores={Time=32,FreezeTime=1..}] FreezeTime 1
scoreboard players set @s[scores={Time=32,HideTime=1..}] HideTime 1
scoreboard players set @s[scores={Time=32,HoldTime=1..}] HoldTime 1
scoreboard players set @s[scores={Time=32,IneffectiveTime=1..}] IneffectiveTime 1
scoreboard players set @s[scores={Time=32,InfectTime=1..}] InfectTime 1
scoreboard players set @s[scores={Time=32,NoDefendTime=1..}] NoDefendTime 1
scoreboard players set @s[scores={Time=32,OverHeatingFly=1..}] OverHeatingFly 1
scoreboard players set @s[scores={Time=32,OverheatingMedal=1..}] OverheatingMedal 1
scoreboard players set @s[scores={Time=32,ParalyzeTime=1..}] ParalyzeTime 1
scoreboard players set @s[scores={Time=32,PerfectGuardTime=1..}] PerfectGuardTime 1
scoreboard players set @s[scores={Time=32,ScoutTime=1..}] ScoutTime 1
tag @s[scores={Time=32},tag=static_fly] remove static_fly
tag @s[scores={Time=32},tag=blocked_medaforce] remove blocked_medaforce

# Affect teammates
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={AuxiliaryTime=1..},distance=..16,tag=ally_medabot] AuxiliaryTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={BugTime=1..},distance=..16,tag=ally_medabot] BugTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={ConfuseTime=1..},distance=..16,tag=ally_medabot] ConfuseTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={DefenseTime=1..},distance=..16,tag=ally_medabot] DefenseTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={FreezeTime=1..},distance=..16,tag=ally_medabot] FreezeTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={HideTime=1..},distance=..16,tag=ally_medabot] HideTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={HoldTime=1..},distance=..16,tag=ally_medabot] HoldTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={IneffectiveTime=1..},distance=..16,tag=ally_medabot] IneffectiveTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={InfectTime=1..},distance=..16,tag=ally_medabot] InfectTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={NoDefendTime=1..},distance=..16,tag=ally_medabot] NoDefendTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={OverHeatingFly=1..},distance=..16,tag=ally_medabot] OverHeatingFly 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={OverheatingMedal=1..},distance=..16,tag=ally_medabot] OverheatingMedal 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={ParalyzeTime=1..},distance=..16,tag=ally_medabot] ParalyzeTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={PerfectGuardTime=1..},distance=..16,tag=ally_medabot] PerfectGuardTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run scoreboard players set @a[scores={ScoutTime=1..},distance=..16,tag=ally_medabot] ScoutTime 1
execute if entity @s[scores={Time=32},tag=ally_medabot] run tag @a[scores={Time=32},tag=static_fly,distance=..16,tag=ally_medabot] remove static_fly
execute if entity @s[scores={Time=32},tag=ally_medabot] run tag @a[scores={Time=32},tag=blocked_medaforce,distance=..16,tag=ally_medabot] remove blocked_medaforce
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={AuxiliaryTime=1..},distance=..16,tag=enemy_medabot] AuxiliaryTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={BugTime=1..},distance=..16,tag=enemy_medabot] BugTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={ConfuseTime=1..},distance=..16,tag=enemy_medabot] ConfuseTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={DefenseTime=1..},distance=..16,tag=enemy_medabot] DefenseTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={FreezeTime=1..},distance=..16,tag=enemy_medabot] FreezeTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={HideTime=1..},distance=..16,tag=enemy_medabot] HideTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={HoldTime=1..},distance=..16,tag=enemy_medabot] HoldTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={IneffectiveTime=1..},distance=..16,tag=enemy_medabot] IneffectiveTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={InfectTime=1..},distance=..16,tag=enemy_medabot] InfectTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={NoDefendTime=1..},distance=..16,tag=enemy_medabot] NoDefendTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={OverHeatingFly=1..},distance=..16,tag=enemy_medabot] OverHeatingFly 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={OverheatingMedal=1..},distance=..16,tag=enemy_medabot] OverheatingMedal 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={ParalyzeTime=1..},distance=..16,tag=enemy_medabot] ParalyzeTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={PerfectGuardTime=1..},distance=..16,tag=enemy_medabot] PerfectGuardTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run scoreboard players set @e[scores={ScoutTime=1..},distance=..16,tag=enemy_medabot] ScoutTime 1
execute if entity @s[scores={Time=32},tag=enemy_medabot] run tag @e[scores={Time=32},tag=static_fly,distance=..16,tag=enemy_medabot] remove static_fly
execute if entity @s[scores={Time=32},tag=enemy_medabot] run tag @e[scores={Time=32},tag=blocked_medaforce,distance=..16,tag=enemy_medabot] remove blocked_medaforce

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={StatusClear=2,Time=32}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=34..}] StatusClear
scoreboard players set @s[scores={Time=34..}] Time 1