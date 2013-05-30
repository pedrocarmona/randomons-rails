# encoding: UTF-8

include Type, Status, ExperienceFunction

User.create([
  { :name => 'Bot', :email => 'user@example.com', :password => 'secret' }
])

MedicalCenter.create([
  { :name => 'Hospitais Da Universidade De Coimbra', :latitude => 40.220727, :longitude => -8.412680 }
])

Specie.create([
  { :name => 'Canibalape',
    :base_hitpoints => 100,
    :base_attack => 20,
    :base_defense => 10,
    :base_speed => 20,
    :specie_types => Type::CANNIBAL,
    :experience_function => 0,
    :description => 'O Canibalape é um randomon que se caracteriza pela sua agressividade, especialmente com os individuos da sua espécie. O seu antepassado é um chimpanzé, caracteriza-se muito por a sua agilidade e a sua força. Este randomom pode ser encontrado em florestas densas.'
  },
  { :name => 'Cyclosnake',
    :base_hitpoints => 100,
    :base_attack => 18,
    :base_defense => 12,
    :base_speed => 23,
    :specie_types => Type::POISONOUS,
    :experience_function => 0,
    :description => 'A Cyclosnake é um réptil do tipo Poisonous. Este randomon é muito procurado para combater randomons do tipo Psychic devido à eficácia do seu veneno. É possível encontrar um Cyclosnake durante o dia em zonas soalheiras.'
  },
  { :name => 'Ponycorn',
    :base_hitpoints => 100,
    :base_attack => 30,
    :base_defense => 15,
    :base_speed => 30,
    :specie_types => Type::MYTHICAL,
    :experience_function => 0,
    :description => 'O Ponycorn é um randomon do tipo Mythical muito raro. É o randomom mais poderoso e não se sabe qual é o seu habitat natural, uma vez que foi encontrado escassas vezes.'
  },
  { :name => 'Catzinga',
    :base_hitpoints => 100,
    :base_attack => 17,
    :base_defense => 13,
    :base_speed => 15,
    :specie_types => Type::PSYCHIC,
    :experience_function => 0,
    :description => 'O Catzinga é um randomon do tipo Psychic, embora os seus ataques não sejam muito fortes as suas capacidades psiquicas fazem com que a sua efeciencia seja elevada. Este randomon costuma ser encontrado em cavernas e é relativamente fácil de capturar.'
  },
  { :name => 'Chinelong',
    :base_hitpoints => 100,
    :base_attack => 23,
    :base_defense => 12,
    :base_speed => 25,
    :specie_types => Type::FLYING,
    :experience_function => 0,
    :description => 'O Chinelong é um randomon do tipo Flying, é muito ágil, rápido e é muito procurado por caçadores de randomons. Porém é muito dificil de capturar, uma vez que atinge grandes altitudes rápidamente, escapando facilmente aos caçadores.'
  },
  { :name => 'Tetrauros',
    :base_hitpoints => 100,
    :base_attack => 25,
    :base_defense => 10,
    :base_speed => 10,
    :specie_types => Type::PREHISTORIC,
    :experience_function => 0,
    :description => 'O Tetraurus é um randomon do tipo Prehistoric, é até considerado um fóssil vivo. O seu grande poder é a sua força de ataque e é o único randomon que é eficiente contra os randomons do tipo Mythical.'
  }
])

Move.create([
  {
    :name => 'Fire Ball',
    :move_types => Type::FIRE,
    :attack => 17,
    :accuracy => 90,
    :status => Status::BURN,
    :status_probability => 10.0,
    :description => 'Um ataque de fogo poderoso que pode queimar o inimigo.'
  },
  {
    :name => 'Wild Wind',
    :move_types => Type::FLYING,
    :attack => 14,
    :accuracy => 90,
    :description => 'Ataca o inimigo com asas abertas.'
  },
  {
    :name => 'Fatal Bomb',
    :move_types => [Type::PSYCHIC, Type::PREHISTORIC],
    :attack => 23,
    :accuracy => 77,
    :status => Status::FLINCH,
    :status_probability => 30.0,
    :description => 'Um ataque extremamente poderoso.'
  },
  {
    :name => 'Flying Blade',
    :move_types => Type::FLYING,
    :attack => 18,
    :accuracy => 80,
    :description => 'Uma lâmina afiada atinge o adversário.'
  }
])
