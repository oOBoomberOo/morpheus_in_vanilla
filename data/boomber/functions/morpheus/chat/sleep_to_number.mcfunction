#
# <@s> is sleeping [<#bb.mp.sleep_player>/<#bb.mp.player_needed>] <#bb.mp.percent_needed>%
#

execute if score #bb.mp.sleep_player bb.variable < #bb.mp.player_needed bb.variable run tellraw @a [{"selector":"@s", "color": "yellow"}, {"text": " is sleeping ", "color": "yellow"}, {"text": "[", "color": "yellow"}, {"score":{"name": "#bb.mp.sleep_player", "objective": "bb.variable"}}, {"text": "/", "color": "yellow"}, {"score":{"name": "#bb.mp.player_needed", "objective": "bb.variable"}}, {"text": "] ", "color": "yellow"}, {"score":{"name": "#bb.mp.percent_needed", "objective": "bb.variable"}}, {"text": "%", "color": "yellow"}]
execute if score #bb.mp.sleep_player bb.variable >= #bb.mp.player_needed bb.variable run tellraw @a [{"selector":"@s", "color": "yellow"}, {"text": " is sleeping ", "color": "yellow"}, {"text": "[", "color": "yellow"}, {"score":{"name": "#bb.mp.sleep_player", "objective": "bb.variable"}}, {"text": "/", "color": "yellow"}, {"score":{"name": "#bb.mp.player_needed", "objective": "bb.variable"}}, {"text": "] ", "color": "yellow"}, {"text": "100%", "color": "yellow"}]

execute if score #bb.mp.sleep_player bb.variable >= #bb.mp.player_needed bb.variable run function boomber:morpheus/chat/fast_forward_time

tag @s add boomber.morpheus.announce_to_chat
