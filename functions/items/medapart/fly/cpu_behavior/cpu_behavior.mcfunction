tag @s[tag=static_fly] add remove_static_fly
tag @s add static_fly
tag @s[tag=remove_static_fly] remove static_fly
tag @s[tag=remove_static_fly] remove legs_selected
tag @s remove remove_static_fly
tag @s remove legs_selected
scoreboard players set @s[tag=!static_fly] Dialog -90
scoreboard players set @s[tag=static_fly] Dialog 59
tag @s[tag=static_fly] add no_legs
