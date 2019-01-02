scoreboard players set @s FlyCourse 1
scoreboard players set @s Stage 3
scoreboard players set @s Rings 0
scoreboard players set @s RingsTotal 0
teleport @s -510.0 89 263.0 0 0
tellraw @s[scores={Error=0},tag=long_fly_course_speed] {"translate":"medabots_server:settings.current.fly_course_speed","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 5"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.long"}]}
tellraw @s[scores={Error=0},tag=!long_fly_course_speed] {"translate":"medabots_server:settings.current.fly_course_speed","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 5"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.short"}]}
