// Currículo - João Victor Serrano - versão: ia_dados
// Compilar: typst compile cv_ia_dados.typ
#let navy = rgb("#14325C")
#let gray = rgb("#444444")
#set page(paper: "a4", margin: (x: 1.8cm, top: 1.2cm, bottom: 1cm))
#set text(font: ("Carlito", "Calibri", "Liberation Sans", "Arial"), size: 10.2pt, lang: "pt")
#set par(leading: 0.46em, spacing: 0.5em, justify: false)
#set list(tight: true, marker: [•], indent: 0.1em, body-indent: 0.45em, spacing: 0.4em)

#let sec(t) = {
  v(5pt)
  text(weight: "bold", size: 11pt, fill: navy)[#t]
  v(-4pt)
  line(length: 100%, stroke: 0.6pt + navy)
  v(-1pt)
}
#let item(t, d, bs) = {
  v(2pt)
  grid(columns: (1fr, auto), text(weight: "bold")[#t], text(fill: gray)[#d])
  if bs.len() > 0 { list(..bs) }
}
#let proj(t, tech, bs) = {
  v(2pt)
  text(weight: "bold")[#t #text(weight: "regular", fill: gray)[· #tech]]
  list(..bs)
}
#let skill(l, t) = [*#l* #t \ ]

#align(center)[
  #text(weight: "bold", size: 19pt, fill: navy)[#"JOÃO VICTOR SERRANO"] \
  #text(size: 10pt, fill: gray)[#"IA & Dados · Python · SQL · Visualização de Dados"] \
  #v(1pt)
  #text(size: 8.6pt, fill: gray)[#"Marília, São Paulo, Brasil | (14) 99804-7451 | joaovictorserrano@outlook.com" \ #"linkedin.com/in/joao-victor-serrano-mk03 | github.com/JoaoVSerrano"]
]
#sec("PERFIL PROFISSIONAL")
#text("Estudante de Sistemas Inteligentes (4º Termo – Fatec Pompéia) com experiência em tratamento e estruturação de bases de dados para treinamento de modelos de IA (Inovaskill), gestão de bases e planilhas corporativas em ambiente industrial e desenvolvimento de dashboards e telemetria com Python. Estagiário de Desenvolvimento Fullstack na Rodojacto, o que reforça a base de engenharia de software para levar soluções de dados e IA à produção.")
#sec("COMPETÊNCIAS TÉCNICAS")
#skill("Linguagens:", "Python · SQL · JavaScript · TypeScript · Java · C")
#skill("Dados e visualização:", "Streamlit · Dashboards interativos · Data Visualization · Tratamento e estruturação de dados para modelos de IA")
#skill("Bancos de dados:", "PostgreSQL · MySQL · MariaDB · Redis (Streams) · Supabase · Alembic")
#skill("IA e automação:", "Chatbots · Telemetria de processos industriais · Preparação de bases para treinamento")
#skill("Engenharia:", "Flask · APIs REST · Docker · Git · GitHub Actions · Linux (Ubuntu)")
#skill("Observabilidade:", "Prometheus · Grafana (métricas e dashboards)")

#sec("EXPERIÊNCIA PROFISSIONAL")
#item("Estagiário de Desenvolvimento Fullstack · Rodojacto", "Out 2026 – Atual", ("Desenvolvimento da nova plataforma da empresa (site e aplicativo), no setor de Qualidade, Processos e Tecnologia.", "Capacitação na stack do projeto (Angular, Ionic, Java, Spring Boot, Kotlin e Go) para atuar como desenvolvedor fullstack.",))
#item("Aprendiz – Gestão e Controle de Patrimônio · Jacto", "Jan 2026 – Out 2026", ("Gestão da base de dados e de planilhas patrimoniais de todo o grupo Jacto, garantindo a integridade das informações.", "Controle de ativos do grupo: criação de números de imobilizado, atribuição e envio de plaquetas, baixas e transferências.",))
#item("Participante – Inovaskill (Apoio em IA) · Fatec Pompéia", "Mar 2025 – Nov 2025", ("Tratamento e estruturação de bases de dados para treinamento de modelos de Inteligência Artificial.", "Colaboração no desenvolvimento de soluções tecnológicas para empresas parceiras da instituição. Certificado emitido pela Fatec.",))

#sec("PROJETOS EM DESTAQUE")
#proj("Weather Dashboard BR", "Python · Streamlit · Data Visualization", ("Plataforma de visualização de dados meteorológicos em tempo real para o Brasil, com dashboards interativos.",))
#proj("PWA de Controle Industrial e Logístico (protótipo)", "React · Python · JavaScript · Railway · Supabase", ("Interface para supervisão de simulações industriais (Indústria 4.0), com telemetria e chatbot funcionais, publicada no Railway com banco no Supabase.",))
#proj("Catálogo de Filmes (Tom Hanks)", "Python/Flask · Redis · MariaDB · Prometheus · Grafana", ("Auditoria de eventos da aplicação em Redis Streams e métricas de serviços em Prometheus e Grafana, com dashboards provisionados.", "Consumo da API do TMDB, persistência em MariaDB com migrações e microsserviços em Docker. Projeto da disciplina de Computação em Nuvem (Fatec Pompéia).",))

#sec("FORMAÇÃO ACADÊMICA")
#item("Tecnólogo em Sistemas Inteligentes – Fatec Pompéia – Shunji Nishimura (4º Termo)", "Fev 2025 – Presente", ())
#item("Ensino Médio – Colégio Bezerra de Menezes", "Concluído em 2024", ())
#text(fill: gray, "Disciplinas relevantes: Inteligência Artificial · Business Intelligence e Visualização de Dados · Computação em Nuvem")

#sec("IDIOMAS E CERTIFICAÇÕES")
#text("Inglês – Intermediário (B1/B2), certificação TOEIC · Português – Nativo · Certificado Inovaskill – Fatec Pompéia (Apoio em IA)")
