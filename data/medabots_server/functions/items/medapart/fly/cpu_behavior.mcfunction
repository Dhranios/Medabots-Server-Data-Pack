# Toggle hovering
execute if entity @s[tag=legs_activated,tag=static_fly] run function medabots_server:items/medapart/fly/cpu_behavior/toggle_hovering
execute if entity @s[scores={FlyTime=150},tag=legs_activated] run function medabots_server:items/medapart/fly/cpu_behavior/toggle_hovering
execute if entity @s[tag=legs_activated] unless block ~ ~2 ~ minecraft:air run function medabots_server:items/medapart/fly/cpu_behavior/toggle_hovering

# Fly up if falling
function medabots_server:items/medapart/fly/cpu_behavior/save_from_falling