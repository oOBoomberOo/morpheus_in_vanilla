#
# <@s> is sleeping [<#bb.mp.sleep_player>/<#bb.mp.total_player>] <#bb.mp.sleep_percent>%
#

tellraw @a [{"selector": "@s", "color": "yellow"}, {"text": " is sleeping ", "color": "yellow"}, {"text": "[", "color": "yellow"}, {"score": {"name": "#bb.mp.sleep_player", "objective": "bb.variable"}}, {"text": "/", "color": "yellow"}, {"score": {"name":"#bb.mp.total_player", "objective":"bb.variable"}},{"text":"] ", "color": "yellow"}, {"score":{"name":"#bb.mp.sleep_percent", "objective":"bb.variable"}}, {"text":"%", "color": "yellow"}]

execute if score #bb.mp.sleep_player bb.variable >= #bb.mp.player_needed bb.variable run function boomber:morpheus/chat/fast_forward_time

tag @s add boomber.morpheus.announce_to_chat