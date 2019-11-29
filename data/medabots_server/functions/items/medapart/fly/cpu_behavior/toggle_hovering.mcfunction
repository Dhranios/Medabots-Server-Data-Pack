tag @s[tag=static_fly] add remove_static_fly
tag @s add static_fly
tag @s[tag=remove_static_fly] remove static_fly
tag @s remove remove_static_fly
tag @s remove legs_selected
scoreboard players set @s[tag=!static_fly] Dialog 0
scoreboard players set @s[tag=static_fly] Dialog 59
tag @s add no_legs