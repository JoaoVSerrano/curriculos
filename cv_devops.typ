// Currículo - João Victor Serrano - versão: devops
// Compilar: typst compile cv_devops.typ
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
  #text(size: 10pt, fill: gray)[#"DevOps · Cloud · CI/CD · Contêineres · Observabilidade"] \
  #v(1pt)
  #text(size: 8.6pt, fill: gray)[#"Marília, São Paulo, Brasil | (14) 99804-7451 | joaovictorserrano@outlook.com" \ #"linkedin.com/in/joao-victor-serrano-mk03 | github.com/JoaoVSerrano"]
]
#sec("PERFIL PROFISSIONAL")
#text("Estudante de Sistemas Inteligentes (4º Termo – Fatec Pompéia) e estagiário de Desenvolvimento Fullstack na Rodojacto. Construí de ponta a ponta uma aplicação em microsserviços com Docker Compose, pipeline CI/CD (GitHub Actions, GHCR e deploy contínuo no Portainer), observabilidade com Prometheus e Grafana e verificações de saúde reais. Interesse em plataformas de entrega, automação e confiabilidade, com base em Linux e desenvolvimento back-end.")
#sec("COMPETÊNCIAS TÉCNICAS")
#skill("Contêineres:", "Docker (multi-stage) · Docker Compose · Portainer · GitHub Container Registry · redes e volumes")
#skill("CI/CD:", "GitHub Actions · testes automatizados (pytest) · deploy contínuo via webhook · smoke tests")
#skill("Observabilidade:", "Prometheus · Grafana · healthchecks e readiness · logs de auditoria em Redis Streams")
#skill("Nuvem e dados:", "Railway · Supabase · MinIO (S3) · MariaDB · PostgreSQL · Redis")
#skill("Sistemas:", "Linux (Ubuntu) · Git · GitHub · SDKMAN · adb")
#skill("Linguagens:", "Python · Java · JavaScript · TypeScript · SQL · C")

#sec("EXPERIÊNCIA PROFISSIONAL")
#item("Estagiário de Desenvolvimento Fullstack · Rodojacto", "Out 2026 – Atual", ("Desenvolvimento da nova plataforma da empresa (site e aplicativo), no setor de Qualidade, Processos e Tecnologia.", "Ambiente de desenvolvimento com Docker, MySQL, SDKMAN, Node (nvm/fnm) e adb, e capacitação na stack Angular, Ionic, Java, Spring Boot, Kotlin e Go.",))
#item("Aprendiz – Gestão e Controle de Patrimônio · Jacto", "Jan 2026 – Out 2026", ("Gestão da base de dados e de planilhas patrimoniais do grupo Jacto, com foco na integridade das informações.",))
#item("Participante – Inovaskill (Apoio em IA) · Fatec Pompéia", "Mar 2025 – Nov 2025", ("Estruturação de bases de dados para treinamento de modelos de IA e apoio a soluções para empresas parceiras.",))

#sec("PROJETOS EM DESTAQUE")
#proj("Catálogo de Filmes (Tom Hanks)", "Docker · GitHub Actions · Portainer · Prometheus · Grafana", ("Orquestração de 8 serviços em contêineres com Docker Compose, rede bridge dedicada com sub-rede fixa, apenas gateway e monitoramento publicados e variáveis obrigatórias com falha rápida.", "Pipeline CI/CD: testes com pytest, build com Docker Buildx e cache, publicação de imagens no GHCR (tags por SHA e latest), deploy via webhook do Portainer e smoke test em /api/health.", "Observabilidade com Prometheus e dashboards Grafana provisionados, healthchecks que verificam as dependências (retorno 503 quando indisponíveis) e auditoria em Redis Streams com retenção limitada.", "Projeto da disciplina de Computação em Nuvem (Fatec Pompéia).",))
#proj("PWA de Controle Industrial e Logístico (protótipo)", "Railway · Supabase · React · Python", ("Aplicação publicada no Railway com banco de dados no Supabase, com telemetria e chatbot funcionais.",))

#sec("FORMAÇÃO ACADÊMICA")
#item("Tecnólogo em Sistemas Inteligentes – Fatec Pompéia – Shunji Nishimura (4º Termo)", "Fev 2025 – Presente", ())
#item("Ensino Médio – Colégio Bezerra de Menezes", "Concluído em 2024", ())
#text(fill: gray, "Disciplina relevante: Computação em Nuvem")

#sec("IDIOMAS E CERTIFICAÇÕES")
#text("Inglês – Intermediário (B1/B2), certificação TOEIC · Português – Nativo")
