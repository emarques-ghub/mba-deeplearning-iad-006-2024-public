# Exercício para sala de aula - Árvores de decisão e Ensembles

## Introdução e objetivos
Este notebook é um material complementar à disciplina de Aprendizado de Máquinas 2. O objetivo é reforçar os conteúdos das últimas aulas e trazer alguns aspectos práticos da implementação destes modelos. Vamos exercitar algumas etapas do MLOps, incluindo a dockerização da solução, inferência e cliente, além de cobrir as etapas de treinamento, avaliação e deploy.

Neste notebook, vamos explorar como colocar em prática os conceitos aprendidos em sala de aula, desde a preparação dos dados até a implementação de modelos de aprendizado de máquina. Além disso, vamos abordar como criar uma solução escalável e pronta para produção, utilizando técnicas de dockerização e deploy.

Ao longo deste notebook, você aprenderá a:
- Preparar os dados para treinamento e avaliação de modelos
- Implementar modelos de aprendizado de máquina utilizando bibliotecas populares
- Avaliar o desempenho dos modelos e realizar ajustes necessários
- Dockerizar a solução para facilitar a implantação em diferentes ambientes
- Implementar um cliente para realizar inferências nos modelos treinados

## Preparação - Pré-aula
A execução deste notebook será feita através do Codespace do GitHub. Para isso, é necessário realizar as seguintes etapas:
- **Fork do repositório base**: Faça um fork do repositório base para criar uma cópia do projeto em sua conta do GitHub.
- **Inicialização do Codespace**: Acesse o repositório forkado e clique em "Codespaces" no botão "Code" do GitHub, em seguida, clique em "New codespace" para inicializar o ambiente de desenvolvimento. O Codespace é um ambiente de desenvolvimento hospedado na nuvem que permite que você desenvolva e execute seu código diretamente no navegador, sem a necessidade de configurar um ambiente local. Com o Codespace, você pode criar, editar e executar seu código em um ambiente isolado e seguro.
- **Build da imagem Docker:** No Codespace, localize o terminal na parte inferior da janela e copie e cole o comando `docker build -t imagem-docker .` nele. Em seguida, pressione Enter para executar o comando. O terminal irá exibir as etapas de construção da imagem Docker, incluindo a instalação de dependências e a compilação do código. Se o comando for executado com sucesso, você verá uma mensagem indicando que a imagem foi construída com sucesso, como por exemplo: "=> naming to docker.io/library/imagem-docker". Isso significa que a imagem Docker foi criada e está pronta para ser usada.
- **Execução do notebook:** No Codespace, localize o arquivo `começar_por_aqui.ipynb` e clique nele para abrir. Em seguida, clique no botão "Run" para executar o notebook. O notebook irá executar as células e exibir os resultados. Durante a execução do notebook, o Codespace pode solicitar a instalação de extensões e a definição do ambiente que será utilizado. Nesse caso, vamos usar o Python 3.10 já existente por padrão no Codespace. Se necessário, o Codespace pode solicitar a instalação de dependências adicionais para executar o notebook.

Esses passos são necessários para garantir que o mínimo do ambiente está funcional para os exercícios em sala. Se você tiver alguma dúvida ou precisar de ajuda, por favor, entre em contato comigo.

## Roteiro do exercício
#### Exercício 1 - Treinamento do modelo baseado em árvore de decisão
Neste exercício, você irá treinar um modelo de árvore de decisão utilizando o conjunto de dados MNIST. O objetivo é entender como funciona o processo de treinamento de um modelo de árvore de decisão e como ajustar os parâmetros para melhorar o desempenho do modelo.

**Você irá:**
1. Carregar o conjunto de dados MNIST e pré-processar os dados, se necessário.
2. Selecionar a biblioteca ou framework que você irá utilizar (por exemplo, Scikit-learn e/ou XGBoost).
3. Configurar os parâmetros do modelo, como a profundidade da árvore, o número de características a considerar em cada nó, etc.
4. Treinar o modelo utilizando o conjunto de dados de treinamento.