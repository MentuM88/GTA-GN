
local cfg = {}

-- size of the sms history
cfg.sms_history = 15

-- maximum size of an sms
cfg.sms_size = 500

-- duration of a sms position marker (in seconds)
cfg.smspos_duration = 300

-- define phone services
-- blipid, blipcolor (customize alert blip)
-- alert_time (alert blip display duration in seconds)
-- alert_permission (permission required to receive the alert)
-- alert_notify (notification received when an alert is sent)
-- notify (notification when sending an alert)
cfg.services = {
  ["Police"] = {
    blipid = 304,
    blipcolor = 38,
    alert_time = 30, -- 5 minutes
    alert_permission = "police.service",
    alert_notify = "~r~Police alert:~n~~s~",
    notify = "~b~Vous apellez la police.",
    answer_notify = "~b~La police arrive."
  },
  ["Secours"] = {
    blipid = 153,
    blipcolor = 1,
    alert_time = 30, -- 5 minutes
    alert_permission = "emergency.service",
    alert_notify = "~r~Alerte Secours:~n~~s~",
    notify = "~b~Vous avez apellé les secours.",
    answer_notify = "~b~Les secours arrivent."
  },
  ["Taxi"] = {
    blipid = 198,
    blipcolor = 1,
    alert_time = 30, -- 5 minutes
    alert_permission = "taxi.service",
    alert_notify = "~r~Alerte Taxi :~n~~s~",
    notify = "~b~Vous avez apellé un taxi.",
    answer_notify = "~b~Le Taxi a pris votre appel."
  },
  ["Uber"] = {
    blipid = 198,
    blipcolor = 5,
    alert_time = 300,
    alert_permission = "uber.service",
    alert_notify = "~y~uber alert:~n~~s~",
    notify = "~y~Vous apellez un Uber.",
    answer_notify = "~y~Un Uber arrive."
  },
  ["Réparation"] = {
    blipid = 446,
    blipcolor = 5,
    alert_time = 300,
    alert_permission = "repair.service",
    alert_notify = "~y~Repair alert:~n~~s~",
    notify = "~y~Vous apellez un réparateur.",
    answer_notify = "~y~Un réparateur arrive."
  }
}

-- define phone announces
-- image: background image for the announce (800x150 px)
-- price: amount to pay to post the announce
-- description (optional)
-- permission (optional): permission required to post the announce
cfg.announces = {
  ["admin"] = {
    --image = "nui://vrp_mod/announce_admin.png",
    image = "http://i.imgur.com/kjDVoI6.png",
    price = 0,
    description = "Admin only.",
    permission = "admin.announce"
  },
  ["police"] = {
    --image = "nui://vrp_mod/announce_police.png",
    image = "http://i.imgur.com/DY6DEeV.png",
    price = 0,
    description = "Seulement pour la police / Avis de recherche.",
    permission = "police.announce"
  },
  ["Commerce"] = {
    --image = "nui://vrp_mod/announce_commercial.png",
    image = "http://i.imgur.com/b2O9WMa.png",
    description = "Annonce commerciale.",
    price = 5000
  },
  ["Fête"] = {
    --image = "nui://vrp_mod/announce_party.png",
    image = "http://i.imgur.com/OaEnk64.png",
    description = "Vous organisez une fête ? inviter du monde.",
    price = 5000
  }
}

return cfg
