User.create([{
  name: "Teste",
  email: "teste@teste.com",
  password: "123456",
}])

  Councilman.create([{
    name: "Celso Lara da Costa",
    nickname: "Celso Costa",
    political_party: "PPS",
    political_position: :situation,
  }])

  Councilman.create([{
    name: "Danilo Dominico",
    nickname: "Danilo",
    political_party: "PSD",
    political_position: :opposition,
  }])
  Councilman.create([{
    name: "Nelson Carlos Riclitski",
    nickname: "Dedo",
    political_party: "PSB",
    political_position: :situation,
  }])

  Councilman.create([{
    name: "Aldonei Luiz Bonfim",
    nickname: "Dognei",
    political_party: "PDT",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Elcio José Melhem",
    nickname: "Elcio José Melhem",
    political_party: "PP",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Germano Toledo Alves",
    nickname: "Germano Toledo Alves",
    political_party: "PR",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Gilson Moreira da Silva",
    nickname: "Gilson Fé e Esperança",
    political_party: "PSD",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Luiz Augusto Klosowski",
    nickname: "Guto Klosowski",
    political_party: "PHS",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "João Carlos Gonçalves",
    nickname: "João do Napoleão",
    political_party: "PROS",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Luiz Juraski",
    nickname: "Luiz Juraski",
    political_party: "PRB",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Anderson Marcelo de Lima",
    nickname: "Marcelinho",
    political_party: "DEM",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Marcio Luiz Carneiro do Nascimento",
    nickname: "Marcio Carneiro",
    political_party: "PRB",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Maria Jose Mandu Ribeiro Ribas",
    nickname: "Maria José",
    political_party: "PRB",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Pedro Luiz Moraes",
    nickname: "Pedro Moraes",
    political_party: "PRB",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Sérgio André Niemes",
    nickname: "Profº Serjão",
    political_party: "PT",
    political_position: :opposition,
  }])
  Councilman.create([{
    name: "Terezinha dos Santos Daiprai",
    nickname: "Profª Terezinha",
    political_party: "PT",
    political_position: :opposition,
  }])
  Councilman.create([{
    name: "Rodrigo Sereno Crema",
    nickname: "Rodrigo Sereno Crema",
    political_party: "PSC",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Samuel da Silva Pinto",
    nickname: "Samuca",
    political_party: "Sem Registro",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Valdemar Calixtro dos Santos",
    nickname: "Valdemar Calixtro dos Santos",
    political_party: "PDT",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Valdemar dos Santos",
    nickname: "Vardinho",
    political_party: "DEM",
    political_position: :situation,
  }])
  Councilman.create([{
    name: "Valdomiro Batista",
    nickname: "Valdomiro Batista",
    political_party: "PRB",
    political_position: :situation,
  }])
  




  5.times do
  Meeting.create([{
    date: Faker::Date.between(30.days.ago, Date.today),
    start_session: Faker::Time.between(2.days.ago, Date.today, :morning),
    end_session: Faker::Time.between(2.days.ago, Date.today, :afternoon),
    note: Faker::Lorem.paragraph(2),
  }])
end

  ProjectKind.create([{
    kind: "Educacional",
    description: "Relacionados a implementação e gerencia sobre as unidades públicas educacionais.",
  }])

  ProjectKind.create([{
    kind: "Saúde",
    description: "Projetos com o objetivo de organizar 
    sistemas e serviços de saúde, atuar em fatores condicionantes e determinantes do processo
      saúde-doença controlando a incidência de doenças nas populações através de ações de
      vigilância e intervenções governamentais.",
  }])

  ProjectKind.create([{
    kind: "Nome de Rua",
    description: "Dispões sobre a nomeação de ruas e outros espaços públicos do município",
  }])

  ProjectKind.create([{
    kind: "Moção de Aplausos",
    description: "Uma moção é uma declaração assinada em conjunto por uma assembléia ou um
     parlamento. Uma moção de aplauso é uma moção feita com intençao de aplaudir um evento,
     um fato, uma atitude.",
  }])
  ProjectKind.create([{
    kind: "Esporte",
    description: "Relacionado ao desporto de participação, de modo
    voluntário, compreendendo as modalidades
    desportivas praticadas com a finalidade de
    contribuir para a integração dos praticantes
    na plenitude da vida social, na promoção da
    saúde e educação e na preservação do meio
    ambiente",
  }])
  ProjectKind.create([{
    kind: "Turismo",
    description: "Atividades relacionadas as pessoas que realizam durante suas viagens e
    permanência em Guarapuava, por um período de tempo inferior a um ano consecutivo, 
    com fins de lazer, negócios e outros.",
  }])
  
  ProjectKind.create([{
    kind: "Turismo",
    description: "Alterações, revogações e inclusões de dispositivos em leis previamente aprovadas.",
  }])
  ProjectKind.create([{
    kind: "Outro",
    description: "Atividades diversas.",
  }])
  