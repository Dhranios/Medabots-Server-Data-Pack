function medabots_server:stage/sign/generic/stage_settings
tellraw @s[tag=random_arena_version] {"translate":"medabots_server:settings.current.random_arena_version","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 12"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.on"}]}
tellraw @s[tag=!random_arena_version] {"translate":"medabots_server:settings.current.random_arena_version","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 12"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"with":[{"translate":"medabots_server:settings.off"}]}
#tellraw @s[scores={ArenaType=0}] {"translate":"medabots_server:settings.current.arena_type","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 13"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"extra":[{"text":" "},{"translate":"medabots_server:settings.arena_type.1v1"}]}
#tellraw @s[scores={ArenaType=1}] {"translate":"medabots_server:settings.current.arena_type","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 13"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"extra":[{"text":" "},{"translate":"medabots_server:settings.arena_type.1v3"}]}
#tellraw @s[scores={ArenaType=2}] {"translate":"medabots_server:settings.current.arena_type","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 13"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"extra":[{"text":" "},{"translate":"medabots_server:settings.arena_type.2v2"}]}
#tellraw @s[scores={ArenaType=3}] {"translate":"medabots_server:settings.current.arena_type","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 13"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.modify"}},"extra":[{"text":" "},{"translate":"medabots_server:settings.arena_type.1v1v1v1"}]}