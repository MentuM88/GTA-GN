


local lang = {
  common = {
    welcome = "Bienvenue. Appuyez sur K pour les menus.",
    no_player_near = "~r~Pas de joueur à proximité.",
    invalid_value = "~r~Valeur incorrecte.",
    invalid_name = "~r~Nom incorrect.",
    not_found = "~r~Non trouvé.",
    request_refused = "~r~Requête refusée."
  },
  weapon = {
    pistol = "Pistolet"
  },
  survival = {
    starving = "Affamé",
    thirsty = "Assoiffé"
  },
  money = {
    display = "<span class=\"symbol\">€</span> {1}",
    bdisplay = "<span class=\"symbol\">€</span> {1}",
    given = "Vous avez donné ~r~{1}€.",
    received = "Vous avez reçu ~g~{1}€.",
    not_enough = "~r~Pas assez d'argent.",
    paid = "Payé ~r~{1}€.",
    give = {
      title = "Donner de l'argent",
      description = "Donner de l'argent au joueur le plus proche.",
      prompt = "Montant à donner:"
    }
  },
  inventory = {
    title = "1- Inventaire",
    description = "Ouvrir l'inventaire.",
    iteminfo = "({1})<br /><br />{2}<br /><em>{3} kg</em>",
    info_weight = "poids {1}/{2} kg",
    give = {
      title = "Donner",
      description = "Donner un objet au joueur le plus proche.",
      prompt = "Quantité à donner (max {1}):",
      given = "Vous avez donné ~r~{1} ~s~{2}.",
      received = "Vous avez reçu ~g~{1} ~s~{2}.",
    },
    trash = {
      title = "Jeter",
      description = "Jeter un objet.",
      prompt = "Quantité à jeter (max {1}):",
      done = "Jeté ~r~{1} ~s~{2}."
    },
    missing = "~r~Manque {2} {1}.",
    full = "~r~Inventaire plein.",
    chest = {
      title = "Coffre",
      already_opened = "~r~Ce coffre est déjà ouvert par quelqu'un d'autre.",
      full = "~r~Coffre plein.",
      take = {
        title = "Prendre",
        prompt = "Quantité à prendre (max {1}):"
      },
      put = {
        title = "Mettre",
        prompt = "Quantité à mettre (max {1}):"
      }
    }
  },
  atm = {
    title = "Distributeur de billets",
    info = {
      title = "Info",
      bank = "Banque: {1} €"
    },
    deposit = {
      title = "Dépot",
      description = "Déposez de l'argent sur votre compte",
      prompt = "Entrez le montant à déposer:",
      deposited = "Vous avez déposé ~r~{1}€~s~."
    },
    withdraw = {
      title = "Retirer",
      description = "Retirez de l'argent de votre compte",
      prompt = "Entrez le montant à retirer:",
      withdrawn = "Vous avez retiré ~g~{1}€ ~s~.",
      not_enough = "~r~Vous n'avez pas assez d'argent sur votre compte."
    }
  },
  business = {
    title = "Chambre de commerce",
    directory = {
      title = "Annuaire",
      description = "Annuaire des entreprises",
      dprev = "> Précédent",
      dnext = "> Suivant",
      info = "<em>Capital: </em>{1} €<br /><em>Propriétaire: </em>{2} {3}<br /><em>Immatriculation: </em>{4}<br /><em>Téléphone: </em>{5}"
    },
    info = {
      title = "Information sur l'entreprise",
      info = "<em>Nom: </em>{1}<br /><em>Capital: </em>{2} €<br /><em>Capital de transfert: </em>{3} €<br /><br/>Le capital de transfert représente la quantité d'argent transférée pour une période. Le maximum ne peut pas dépasser le capital de l'entreprise."
    },
    addcapital = {
      title = "Ajout de capital",
      description = "Augmentez le capital de votre entreprise.",
      prompt = "Montant à ajouter à votre capital:",
      added = "~r~{1}€ ~s~ ajoutés au capital de votre entreprise."
    },
    launder = {
      title = "Blanchiment d'argent",
      description = "Utilisez votre entreprise pour blanchir de l'argent.",
      prompt = "Montant d'argent sale à blanchir (max {1} €): ",
      laundered = "~g~{1}€ ~s~ blanchis.",
      not_enough = "~r~Pas assez d'argent sale."
    },
    open = {
      title = "Ouvrir une entreprise",
      description = "Ouvrez votre entreprise, le capital minimum est de {1} €.",
      prompt_name = "Nom de l'entreprise (ne peut pas être modifié ultérieurement, maximum {1} chars):",
      prompt_capital = "Capital initial (min {1})",
      created = "~g~Entreprise créée."
      
    }
  },
  cityhall = {
    title = "Hôtel de ville",
    identity = {
      title = "Nouvelle identité",
      description = "Creez une nouvelle identité, frais de création = {1} €.",
      prompt_firstname = "Entrez votre prénom:",
      prompt_name = "Entrez votre nom de famille:",
      prompt_age = "Entrez votre âge:"
    },
    menu = {
      title = "Identité",
      info = "<em>Nom: </em>{1}<br /><em>Prénom: </em>{2}<br /><em>Age: </em>{3}<br /><em>N° d'immatriculation: </em>{4}<br /><em>Téléphone: </em>{5}<br /><em>Adresse: </em>{7}, {6}"
    }
  },
  police = {
	title = "Police",
    wanted = "Recherché rang {1}",
	not_handcuffed = "~r~Pas menotté",
    cloakroom = {
      title = "Vestiaire",
      uniform = {
        title = "Uniforme",
        description = "Mettre l'uniforme."
      }
    },
    pc = {
      title = "PC",
      searchreg = {
        title = "Recherche immatriculation",
        description = "Recherche d'identité par immatriculation.",
        prompt = "Entrez l'immatriculation:"
      },
      closebusiness = {
        title = "Fermer l'entreprise",
        description = "Fermer l'entreprise du joueur le plus proche",
        request = "Êtes vous sûr de vouloir fermer l'entreprise {3} gérée par {1} {2} ?",
        closed = "~g~Entreprise fermée."
      },
      trackveh = {
        title = "Localisation de véhicule",
        description = "Localisation de véhicule par immatriculation.",
        prompt_reg = "Entrez l'immatriculation:",
        prompt_note = "Entrez une note ou une raison:",
        tracking = "~b~Localisation commencée.",
        track_failed = "~b~Recherche de {1}~s~ ({2}) ~n~~r~Echouée.",
        tracked = "{1} ({2}) localisé."
      },
	  records = {
        show = {
          title = "Voir les enregistrements",
          description = "Voir les enregistrements de police par numero d'enregistrement."
        },
        delete = {
          title = "Effacer les enregistrements",
          description = "Effacer les enregistrements par numero.",
          deleted = "~b~Enregistrement de Police effacé"
        }
      }
    },
    menu = {
      handcuff = {
        title = "Menotter",
        description = "Menotter/démenotter le joueur le plus proche."
      },
      putinveh = {
        title = "Mettre dans le véhicule",
        description = "Mettre le joueur le plus proche dans le véhicule le plus proche."
      },
      getoutveh = {
        title = "Sortir du vehicule",
        description = "Sortir du véhicule le joueur menotté le plus proche."
      },
      askid = {
        title = "Demander les papiers",
        description = "Demander les papiers d'identité du joueur le plus proche.",
        request = "Voulez vous montrer vos papiers d'identité ?",
        request_hide = "Fermer les informations d'identité.",
        asked = "Demande des papiers..."
      },
      check = {
        title = "Fouiller le joueur",
        description = "Fouiller l'argent, les objets et les armes du joueur le plus proche.",
        request_hide = "Fermer le rapport de fouille.",
        info = "<em>Argent: </em>{1} €<br /><br /><em>Inventaire: </em>{2}<br /><br /><em>Armes: </em>{3}",
        checked = "Vous avez été fouillé."
      },
      seize = {
        seized = "Saisie {2} ~r~{1}",
        weapons = {
          title = "Saisir Armes",
          description = "Saisir les armes d'un joueur proche",
          seized = "~b~Vos armes ont été saisies."
        },
        items = {
          title = "Saisir Illegal",
          description = "Saisir objets illegaux",
          seized = "~b~Vos objets illégaux ont été saisis."
        }
      },
      jail = {
        title = "Prison",
        description = "Emprisonner/Relacher le joueur dans la prison la plus proche.",
        not_found = "~r~pas de prison trouvé.",
        jailed = "~b~Emrisonné.",
        unjailed = "~b~Relaché de Prison.",
        notify_jailed = "~b~Vous avez été écroué.",
        notify_unjailed = "~b~Vous avez été relaché."
      },
      fine = {
        title = "Amendes",
        description = "Réprimender le joueur le plus proche.",
        fined = "~b~Amende de ~s~{2} € pour ~b~{1}.",
        notify_fined = "~b~Vous avez reçu une amende de ~s~ {2} € pour ~b~{1}.",
        record = "[Fine] {2} € pour {1}"
      },
      store_weapons = {
        title = "Ranger les armes",
        description = "Range les armes dans l'inventaire."
      }
    },
    identity = {
      info = "<em>Nom: </em>{1}<br /><em>Prénom: </em>{2}<br /><em>Age: </em>{3}<br /><em>N° d'immatriculation: </em>{4}<br /><em>Téléphone: </em>{5}<br /><em>Entreprise: </em>{6}<br /><em>Capital de l'entreprise: </em>{7} €<br /><em>Adresse: </em>{9}, {8}"
    }
  },
  emergency = {
    menu = {
      revive = {
        title = "Medic-Réanimer",
        description = "Réanimer le joueur le plus proche.",
        not_in_coma = "~r~Le joueur n'est pas dans le coma."
      },
      heal = {
        title = "Medic-Soigner",
        description = "Soigner le joueur le plus proche.",
        in_coma = "~r~Le joueur est dans le coma."
      }
    }
  },
  phone = {
    title = "2- Téléphone",
    directory = {
      title = "Répertoire",
      description = "Ouvrir le Répertoire.",
      add = {
        title = "> Ajouter",
        prompt_number = " Entrez le n° de téléphone à ajouter:",
        prompt_name = "Entrez un nom associé au n° de téléphone:",
        added = "~g~N° de téléphone ajouté."
      },
      sendsms = {
        title = "1-Envoyer un SMS",
        prompt = " Entrez le message à envoyer (max {1} chars):",
        sent = "~g~ Envoyé au n°{1}.",
        not_sent = "~r~ n°{1} non disponible."
      },
      sendpos = {
        title = "2-Envoyer la position",
      },
      remove = {
        title = "3-Supprimer"
      }
    },
    sms = {
      title = "Historique des SMS",
      description = "Historique des SMS reçus.",
      info = "<em>{1}</em><br /><br />{2}",
      notify = "SMS~b~ {1}:~s~ ~n~{2}"
    },
    smspos = {
      notify = "SMS-Position ~b~ {1}"
    },
    service = {
      title = "Service",
      description = "Appelez un service ou un n° d'urgence.",
      prompt = "Si besoin, entrez un message pour le service:",
      ask_call = "Reception d'un appel ({1}), voulez vous le prendre ? <em>{2}</em>",
      taken = "~r~Cet appel est déjà pris."
    },
    announce = {
      title = "Annonce",
      description = "Postez une annonce visible de tous pendant quelques secondes.",
      item_desc = "{1} €<br /><br/>{2}",
      prompt = "Contenu de l'annonce (10-1000 caractères): "
    }
  },
  emotes = {
    title = "Emotes",
    clear = {
      title = "> Arrêter",
      description = "Arrête toutes les emotes en cours."
    }
  },
  home = {
    buy = {
      title = "Acheter",
      description = "Acheter un logement ici, le prix est {1} €.",
      bought = "~g~Acheté.",
      full = "~r~Plus de place.",
      have_home = "~r~Vous avez déjà un logement."
    },
    sell = {
      title = "Vendre",
      description = "Vendre son logement pour {1} €",
      sold = "~g~vendu.",
      no_home = "~r~Vous n'avez pas de logement ici."
    },
    intercom = {
      title = "Interphone",
      description = "Utiliser l'interphone pour entrer dans un logement.",
      prompt = "Numéro:",
      not_available = "~r~Indisponible.",
      refused = "~r~Entrée refusée.",
      prompt_who = "Dites qui vous êtes:",
      asked = "Demande...",
      request = "Quelqu'un veut rentrer dans votre logement: <em>{1}</em>"
    },
    slot = {
      leave = {
        title = "Sortir"
      },
      ejectall = {
        title = "Expulser",
        description = "Expulse tous les visiteurs, même vous, et ferme le logement."
      }
    },
    wardrobe = {
      title = "Garde Robe",
      save = {
        title = "> Sauvegarder",
        prompt = "Nom de la tenue:"
      }
    },
    gametable = {
      title = "Table de jeu",
      bet = {
        title = "Commencer les paris",
        description = "Commencez le pari avec le joueur le plus proche, le gagnant est aléatoire.",
        prompt = "Montant du pari:",
        request = "[BET] Voulez-vous parier {1} € ?",
        started = "~g~Départ du pari."
      }
    }
  },
  garage = {
    title = "Garage ({1})",
    owned = {
      title = "Mes véhicules",
      description = "Véhicules m'appartenant"
    },
    buy = {
      title = "Acheter",
      description = "Acheter des véhicules.",
      info = "{1} €<br /><br />{2}"
    },
    sell = {
      title = "Vendre",
      description = "Vendre véhicule."
    },
    rent = {
      title = "Louer",
      description = "Louer un véhicule pour une session (jusqu'à la déconnexion)."
    },
    store = {
      title = "Rentrer au garage",
      description = "Rentrez votre véhicule au garage."
    }
  },
  vehicle = {
    title = "3- Véhicule",
    no_owned_near = "~r~Pas de véhicule vous appartenant à proximité.",
    trunk = {
      title = "Coffre",
      description = "Ouvrir le coffre du véhicule."
    },
    detach_trailer = {
      title = "Détacher remorque",
      description = "Détacher la remorque."
    },
    detach_towtruck = {
      title = "Détacher Dépanneuse",
      description = "Détache la dépanneuse."
    },
    detach_cargobob = {
      title = "Détacher avion cargo",
      description = "Détacher l'avion cargo."
    },
    lock = {
      title = "Verrouiller/Ouvrir Véhicule",
      description = "Verrouille ou Ouvre le véhicule."
    },
    engine = {
      title = "Moteur on/off",
      description = "Allume ou etteint le moteur."
    },
    asktrunk = {
      title = "Demander ouverture coffre",
      asked = "~g~Demande...",
      request = "Voulez-vous ouvrir votre coffre ?"
    },
    replace = {
      title = "Meca-Replacer véhicule",
      description = "Replace le véhicule proche sur le sol."
    },
    repair = {
      title = "Meca-Réparer véhicule",
      description = "Répare le véhicule proche."
    },
    open = {
      title = "Meca-Ouvrir véhicule",
      description = "Ouvre le véhicule proche, de force."
    }
  },
  gunshop = {
    title = "Magasin d'armes ({1})",
    prompt_ammo = "Quantité de munition à acheter pour {1}:",
    info = "<em>Arme: </em> {1} €<br /><em>Munition: </em> {2} €/u<br /><br />{3}"
  },
  market = {
    title = "Superette ({1})",
    prompt = "Quantité de {1} à acheter:",
    info = "{1} €<br /><br />{2}"
  },
  skinshop = {
    title = "Magasin de vêtements"
  },
  cloakroom = {
    title = "Vestiaires ({1})",
    undress = {
      title = "> Deshabiller"
    }
  },
  itemtr = {
    informer = {
      title = "Informateur illégal",
      description = "{1} €",
      bought = "~g~Position envoyée au GPS."
    }
  },
  items = {
    dirty_money = {
      title = "Argent sale",
      description = "Argent obtenu illégalement."
    },
    medkit = {
      title = "Kit Médical",
      description = "Utilisé pour réanimer des personnes inconscientes."
    }
  },
  mission = {
    blip = "Mission ({1}) {2}/{3}",
    display = "<span class=\"name\">{1}</span> <span class=\"step\">{2}/{3}</span><br /><br />{4}",
    cancel = {
      title = "Annuler la mission"
    }
  },
  aptitude = {
    title = "Aptitudes",
    description = "Voir aptitudes.",
    lose_exp = "Aptitude ~b~{1}/{2} ~r~-{3} ~s~exp.",
    earn_exp = "Aptitude ~b~{1}/{2} ~g~+{3} ~s~exp.",
    level_down = "Aptitude ~b~{1}/{2} ~r~perte de niveau ({3}).",
    level_up = "Aptitude ~b~{1}/{2} ~g~gain de niveau ({3}).",
    display = {
      group = "{1}: ",
      aptitude = "--- {1} | exp {2} | Niveau {3} | Progression {4}%"
    }
  }
}

return lang
