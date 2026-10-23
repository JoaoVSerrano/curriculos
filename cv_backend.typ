// Currículo - João Victor Serrano - versão: backend
// Compilar: typst compile cv_backend.typ
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
  #text(size: 10pt, fill: gray)[#"Desenvolvedor Backend · APIs REST · Microsserviços · Python e Java"] \
  #v(1pt)
  #text(size: 8.6pt, fill: gray)[#"Marília, São Paulo, Brasil | (14) 99804-7451 | joaovictorserrano@outlook.com" \ #"linkedin.com/in/joao-victor-serrano-mk03 | github.com/JoaoVSerrano"]
]
#sec("PERFIL PROFISSIONAL")
#text("Estudante de Sistemas Inteligentes (4º Termo – Fatec Pompéia) e estagiário de Desenvolvimento Fullstack na Rodojacto, em preparação para atuar no back-end da nova plataforma da empresa. Experiência prática em APIs REST com Python e Flask e em back-end Java, com autenticação (sessões, JWT e Google OAuth), controle de acesso por papéis, microsserviços, bancos relacionais e Redis, testes automatizados e CI/CD com Docker. Foco em arquitetura limpa, segurança e qualidade de software.")
#sec("COMPETÊNCIAS TÉCNICAS")
#skill("Linguagens:", "Python · Java · SQL · JavaScript · TypeScript · C")
#skill("Back-end:", "Flask · APIs REST · OpenAPI/Swagger · JWT, sessões e Google OAuth · RBAC · Microsserviços · Webhooks (Stripe) · Spring Boot, Kotlin e Go (em aprendizado)")
#skill("Dados:", "PostgreSQL · MySQL · MariaDB · Redis (cache e Streams) · Alembic (migrações) · MinIO (S3)")
#skill("Qualidade:", "pytest · GitHub Actions · Postman · Insomnia")
#skill("Infraestrutura:", "Docker · Docker Compose · Git · GitHub · Linux (Ubuntu)")
#skill("Front-end (apoio):", "Angular · React")

#sec("EXPERIÊNCIA PROFISSIONAL")
#item("Estagiário de Desenvolvimento Fullstack · Rodojacto", "Out 2026 – Atual", ("Desenvolvimento da nova plataforma da empresa (site e aplicativo), no setor de Qualidade, Processos e Tecnologia.", "Capacitação para o back-end do projeto (Java, Spring Boot, Kotlin e Go), com orientação da equipe, em ambiente com Docker, MySQL, IntelliJ IDEA e Postman/Insomnia.",))
#item("Aprendiz – Gestão e Controle de Patrimônio · Jacto", "Jan 2026 – Out 2026", ("Gestão da base de dados e de planilhas patrimoniais de todo o grupo Jacto, garantindo a integridade das informações, além de criação de números de imobilizado, baixas e transferências.",))
#item("Participante – Inovaskill (Apoio em IA) · Fatec Pompéia", "Mar 2025 – Nov 2025", ("Estruturação de bases de dados para treinamento de modelos de IA e apoio a soluções para empresas parceiras.",))

#sec("PROJETOS EM DESTAQUE")
#proj("Catálogo de Filmes (Tom Hanks)", "Python/Flask · MariaDB · Redis · Docker · GitHub Actions", ("Microsserviços de gateway, autenticação, pagamentos e auditoria, com comunicação interna protegida por token e rede isolada no Docker Compose.", "Autenticação com sessões, recuperação de senha com token de uso único e expiração, login Google e RBAC aplicado no servidor.", "Assinaturas Stripe com webhooks e cache de permissões em Redis; persistência em MariaDB com migrações Alembic; auditoria de eventos em Redis Streams; avatares em MinIO (S3).", "Testes automatizados com pytest, documentação OpenAPI/Swagger por serviço validada por testes e pipeline de CI/CD. Projeto da disciplina de Computação em Nuvem (Fatec Pompéia).",))
#proj("Sistema de Gestão de Transporte Estudantil (Projeto Synapse)", "Java · Angular · PostgreSQL · Docker", ("Plataforma para a Prefeitura de Pompéia com validação via QR Code, reserva de assentos e rastreamento GPS em tempo real.", "Atuação na integração e na correção de erros entre o back-end em Java e o front-end em Angular. Projeto concluído e apresentado, com interesse da prefeitura em implantá-lo.",))
#proj("PWA de Controle Industrial e Logístico (protótipo)", "Python · JavaScript · React · Railway · Supabase", ("Back-end em Python e JavaScript com telemetria e chatbot funcionais, publicado no Railway com banco no Supabase.",))

#sec("FORMAÇÃO ACADÊMICA")
#item("Tecnólogo em Sistemas Inteligentes – Fatec Pompéia – Shunji Nishimura (4º Termo)", "Fev 2025 – Presente", ())
#item("Ensino Médio – Colégio Bezerra de Menezes", "Concluído em 2024", ())

#sec("IDIOMAS E CERTIFICAÇÕES")
#text("Inglês – Intermediário (B1/B2), certificação TOEIC · Português – Nativo")
