function boomber:morpheus/morpheus/get/player_ratio

scoreboard players operation #ratio.needed bb.mp.var = #player.ratio bb.mp.var
scoreboard players operation #ratio.needed bb.mp.var *= #100 bb.mp.const
scoreboard players operation #ratio.needed bb.mp.var /= #minimum_percentage bb.mp.gamerule

scoreboard players operation #ratio.needed bb.mp.var < #100 bb.mp.const

tellraw @a[tag=!global.ignore, tag=!global.ignore.gui] [{"selector": "@s", "color": "yellow"}, {"text": " is sleeping [", "color": "yellow"}, {"score": {"name": "#player.sleeping", "objective": "bb.mp.var"}, "color": "yellow"}, {"text": "/", "color": "yellow"}, {"score": {"name": "#player.total", "objective": "bb.mp.var"}, "color": "yellow"}, {"text": "] ", "color": "yellow"}, {"score": {"name": "#ratio.needed", "objective": "bb.mp.var"}, "color": "yellow"}, {"text": "%", "color": "yellow"}]
tellraw @a[tag=!global.ignore, tag=!global.ignore.gui] [{"text": "Fast forwarding time in ", "color": "yellow"}, {"score": {"name": "#sleep_time", "objective": "bb.mp.gamerule"}, "color": "yellow"}, {"text": " seconds", "color": "yellow"}]
