tellraw @s[scores={SettingsCheck=3},tag=vs_cpus] {"translate":"medabots_server:settings.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"extra":[{"text":" "},{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={SettingsCheck=3},tag=!vs_cpus] {"translate":"medabots_server:settings.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"extra":[{"text":" "},{"translate":"medabots_server:settings.off"}]}
tellraw @s[scores={SettingsCheck=3},tag=long_fly_course_speed] {"translate":"medabots_server:settings.fly_course_speed","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 5"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"color":"blue","extra":[{"text":" "},{"translate":"medabots_server:settings.long"}]}
tellraw @s[scores={SettingsCheck=3},tag=!long_fly_course_speed] {"translate":"medabots_server:settings.fly_course_speed","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 5"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"color":"blue","extra":[{"text":" "},{"translate":"medabots_server:settings.short"}]}
tellraw @s[scores={SettingsCheck=3},tag=action_mode] {"translate":"medabots_server:settings.action_mode","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 6"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"color":"blue","extra":[{"text":" "},{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={SettingsCheck=3},tag=!action_mode] {"translate":"medabots_server:settings.action_mode","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 6"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"color":"blue","extra":[{"text":" "},{"translate":"medabots_server:settings.off"}]}
tellraw @s[scores={SettingsCheck=3}] {"text":""}
tellraw @s[scores={SettingsCheck=3}] {"translate":"medabots_server:settings.fly_course","color":"blue"}
tellraw @s[scores={SettingsCheck=3},tag=fly_course_force_fallout] {"translate":"medabots_server:settings.fly_course.force_fallout","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 7"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"color":"blue","extra":[{"text":" "},{"translate":"medabots_server:settings.off"}]}
tellraw @s[scores={SettingsCheck=3},tag=!fly_course_force_fallout] {"translate":"medabots_server:settings.fly_course.force_fallout","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 7"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"color":"blue","extra":[{"text":" "},{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={SettingsCheck=3,FlyCourseLaps=1..}] {"translate":"medabots_server:settings.fly_course.laps","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 8"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"extra":[{"text":" "},{"score":{"name":"@s","objective":"FlyCourseLaps"}}]}
tellraw @s[scores={SettingsCheck=3,FlyCourseLaps=0}] {"translate":"medabots_server:settings.fly_course.laps","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 8"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"extra":[{"text":" "},{"translate":"medabots_server:settings.fly_course.fallout"}]}

# Toggle vs cpus
tellraw @s[scores={SettingsCheck=4},tag=!vs_cpus] {"translate":"medabots_server:settings.modified.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={SettingsCheck=4},tag=vs_cpus] {"translate":"medabots_server:settings.modified.vs_cpus","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 4"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.off"}]}
tag @s[scores={SettingsCheck=4},tag=!vs_cpus] add toggle_vs_cpus
tag @s[tag=toggle_vs_cpus] add vs_cpus
scoreboard players reset @s[tag=toggle_vs_cpus] SettingsCheck
tag @s[tag=toggle_vs_cpus] remove toggle_vs_cpus
tag @s[scores={SettingsCheck=4},tag=vs_cpus] remove vs_cpus

# Toggle fly course speed
tellraw @s[scores={SettingsCheck=5},tag=!long_fly_course_speed] {"translate":"medabots_server:settings.modified.fly_course_speed","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 5"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.long"}]}
tellraw @s[scores={SettingsCheck=5},tag=long_fly_course_speed] {"translate":"medabots_server:settings.modified.fly_course_speed","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 5"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.short"}]}
tag @s[scores={SettingsCheck=5},tag=!long_fly_course_speed] add toggle_long_fly_course_speed
tag @s[tag=toggle_long_fly_course_speed] add long_fly_course_speed
scoreboard players reset @s[tag=toggle_long_fly_course_speed] SettingsCheck
tag @s[tag=toggle_long_fly_course_speed] remove toggle_long_fly_course_speed
tag @s[scores={SettingsCheck=5},tag=long_fly_course_speed] remove long_fly_course_speed

# Toggle action mode
tellraw @s[scores={SettingsCheck=6},tag=!action_mode] {"translate":"medabots_server:settings.modified.action_mode","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 6"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.on"}]}
tellraw @s[scores={SettingsCheck=6},tag=action_mode] {"translate":"medabots_server:settings.modified.action_mode","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 6"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.off"}]}
tag @s[scores={SettingsCheck=6},tag=!action_mode] add toggle_action_mode
tag @s[tag=toggle_action_mode] add action_mode
scoreboard players reset @s[tag=toggle_action_mode] SettingsCheck
tag @s[tag=toggle_action_mode] remove toggle_action_mode
tag @s[scores={SettingsCheck=6},tag=action_mode] remove action_mode

# Toggle fly course force fallout
tellraw @s[scores={SettingsCheck=7},tag=!fly_course_force_fallout] {"translate":"medabots_server:settings.modified.fly_course.force_fallout","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 7"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.off"}]}
tellraw @s[scores={SettingsCheck=7},tag=fly_course_force_fallout] {"translate":"medabots_server:settings.modified.fly_course.force_fallout","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 7"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.on"}]}
tag @s[scores={SettingsCheck=7},tag=!fly_course_force_fallout] add toggle_fly_course_force_fallout
tag @s[tag=toggle_fly_course_force_fallout] add fly_course_force_fallout
scoreboard players reset @s[tag=toggle_fly_course_force_fallout] SettingsCheck
tag @s[tag=toggle_fly_course_force_fallout] remove toggle_fly_course_force_fallout
tag @s[scores={SettingsCheck=7},tag=fly_course_force_fallout] remove fly_course_force_fallout

# Toggle fly course laps
scoreboard players add @s[scores={SettingsCheck=8}] FlyCourseLaps 1
scoreboard players set @s[scores={SettingsCheck=8,FlyCourseLaps=1}] FlyCourseLaps 3
scoreboard players set @s[scores={SettingsCheck=8,FlyCourseLaps=11}] FlyCourseLaps 0
tellraw @s[scores={SettingsCheck=8,FlyCourseLaps=1..}] {"translate":"medabots_server:settings.modified.fly_course.laps","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 8"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"score":{"name":"@s","objective":"FlyCourseLaps"}}]}
tellraw @s[scores={SettingsCheck=8,FlyCourseLaps=0}] {"translate":"medabots_server:settings.modified.fly_course.laps","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 8"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.fly_course.fallout"}]}


scoreboard players reset @s[scores={SettingsCheck=3..}] SettingsCheck