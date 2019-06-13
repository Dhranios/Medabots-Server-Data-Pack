# Toggle hovering
execute if entity @s[scores={FlyTime=150},tag=legs_selected] run function medabots_server:items/fly/cpu_behavior/toggle_hovering
execute if entity @s[tag=legs_selected] unless block ~ ~2 ~ minecraft:air run function medabots_server:items/fly/cpu_behavior/toggle_hovering

# Fly up if falling
function medabots_server:items/fly/cpu_behavior/save_from_falling