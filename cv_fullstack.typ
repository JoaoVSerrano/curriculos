// Currículo - João Victor Serrano - versão: fullstack
// Compilar: typst compile cv_fullstack.typ
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
  #text(size: 10pt, fill: gray)[#"Desenvolvedor Fullstack · Backend · DevOps · IA & Dados"] \
  #v(1pt)
  #text(size: 8.6pt, fill: gray)[#"Marília, São Paulo, Brasil | (14) 99804-7451 | joaovictorserrano@outlook.com" \ #"linkedin.com/in/joao-victor-serrano-mk03 | github.com/JoaoVSerrano"]
]
#sec("PERFIL PROFISSIONAL")
#text("Estudante de Sistemas Inteligentes (4º Termo – Fatec Pompéia) e estagiário de Desenvolvimento Fullstack na Rodojacto, atuando no desenvolvimento da nova plataforma da empresa (site e aplicativo). Experiência prática com Angular, Python, Java, arquitetura de microsserviços, Docker e CI/CD, além de vivência anterior em tratamento de dados para modelos de IA e em ambiente industrial de grande porte. Foco em arquitetura limpa, qualidade de software e entrega de sistemas reais.")
#sec("COMPETÊNCIAS TÉCNICAS")
#skill("Linguagens:", "Python · Java · C · JavaScript · TypeScript · HTML · CSS")
#skill("Front-end e mobile:", "Angular · Angular Material · Tailwind CSS · React · Ionic (em aprendizado)")
#skill("Back-end:", "Flask · APIs REST · JWT e OAuth · RBAC · Microsserviços · Spring Boot, Kotlin e Go (em aprendizado)")
#skill("Dados:", "PostgreSQL · MySQL · MariaDB · Redis (Streams) · SQL · Alembic")
#skill("DevOps e nuvem:", "Git · GitHub Actions · Docker · Docker Compose · Portainer · Prometheus · Grafana · MinIO (S3) · Railway · Supabase · Linux (Ubuntu)")
#skill("Ferramentas:", "VS Code · IntelliJ IDEA · Android Studio · Postman · Insomnia · MySQL Workbench · SDKMAN")

#sec("EXPERIÊNCIA PROFISSIONAL")
#item("Estagiário de Desenvolvimento Fullstack · Rodojacto", "Out 2026 – Atual", ("Desenvolvimento da nova plataforma da empresa (site e aplicativo), no setor de Qualidade, Processos e Tecnologia.", "Capacitação na stack do projeto (Angular, Ionic, Tailwind CSS, Java, Spring Boot, Kotlin e Go), com projetos de estudo em Angular: gerenciador de tarefas (Angular Material e Tailwind CSS) e sistema de mercado (Angular Material).",))
#item("Aprendiz – Gestão e Controle de Patrimônio · Jacto", "Jan 2026 – Out 2026", ("Apoio ao controle de ativos de todo o grupo Jacto: criação de números de imobilizado, atribuição e envio de plaquetas, baixas e transferências.", "Gestão da base de dados e de planilhas patrimoniais, garantindo a integridade das informações, e esclarecimento de dúvidas sobre os processos.",))
#item("Participante – Inovaskill (Apoio em IA) · Fatec Pompéia", "Mar 2025 – Nov 2025", ("Tratamento e estruturação de bases de dados para treinamento de modelos de Inteligência Artificial.", "Colaboração no desenvolvimento de soluções tecnológicas para empresas parceiras da instituição.",))

#sec("PROJETOS EM DESTAQUE")
#proj("Catálogo de Filmes (Tom Hanks)", "Python/Flask · Angular · Docker · Redis · MariaDB · GitHub Actions", ("Aplicação em microsserviços conteinerizados (gateway, autenticação, pagamentos e auditoria), com Docker Compose e deploy via Portainer.", "Autenticação com recuperação de senha e login Google, controle de acesso por papéis (RBAC) e assinaturas Stripe com webhooks e cache em Redis.", "Pipeline CI/CD (testes com pytest, imagens no GHCR, deploy contínuo), observabilidade com Prometheus e Grafana, auditoria com Redis Streams, avatares em MinIO (S3) e documentação OpenAPI/Swagger. Projeto da disciplina de Computação em Nuvem (Fatec Pompéia).",))
#proj("Sistema de Gestão de Transporte Estudantil (Projeto Synapse)", "Java · Angular · PostgreSQL · Docker", ("Plataforma para a Prefeitura de Pompéia com validação via QR Code, reserva de assentos e rastreamento GPS em tempo real.", "Atuação na integração e na correção de erros entre o back-end em Java e o front-end em Angular. Projeto concluído e apresentado, com interesse da prefeitura em implantá-lo.",))
#proj("PWA de Controle Industrial e Logístico (protótipo)", "React · Python · JavaScript · Railway · Supabase", ("Interface para supervisão de simulações industriais (Indústria 4.0), com telemetria e chatbot funcionais, publicada no Railway com banco no Supabase.",))
#proj("Weather Dashboard BR", "Python · Streamlit · Data Visualization", ("Dashboards interativos de dados meteorológicos em tempo real para o Brasil.",))

#sec("FORMAÇÃO ACADÊMICA")
#item("Tecnólogo em Sistemas Inteligentes – Fatec Pompéia – Shunji Nishimura (4º Termo)", "Fev 2025 – Presente", ())
#item("Técnico em Assistente Administrativo – SENAI Pompéia (curso interrompido)", "Jan 2026 – Out 2026", ())
#item("Ensino Médio – Colégio Bezerra de Menezes", "Concluído em 2024", ())

#sec("IDIOMAS E CERTIFICAÇÕES")
#text("Inglês – Intermediário (B1/B2), certificação TOEIC · Português – Nativo · Certificado Inovaskill – Fatec Pompéia (Apoio em IA)")
