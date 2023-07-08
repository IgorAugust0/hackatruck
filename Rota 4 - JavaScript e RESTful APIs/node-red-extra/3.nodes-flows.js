// Node-RED - EXTRA

// Node-RED - EXTRA
// NÓS E FLUXOS

// O primeiro conceito que precisamos conhecer é o conceito de nós. Um nó é uma unidade básica de funcionalidade. Eles podem ser de vários tipos diferentes e cada um tem uma funcionalidade e um conjunto de configurações específicas.

// Os tipos básicos de nós são:

// • Nós de entrada (input);

// • Nós de saída (output);

// • Nós de função (function).

// Eles ficam localizados na barra na lateral esquerda da interface e para adicioná-los no seu fluxo, basta clicar em um nó e arrastá-lo para tela principal.

// É possível criar conexões entre nós e são essas conexões que dão funcionalidade ao nosso fluxo. Um fluxo é um conjunto de nós conectados, com início (input) e fim (output). Cada nó possui saídas e/ou entradas, as quais são utilizadas para conectá-los. Uma conexão entre nós faz com que as informações processadas no primeiro nó sejam passadas para o nó seguinte, de forma a utilizar para executar suas próprias funcionalidades.

// Os nós de entrada (input) representam formas de iniciar um fluxo com algum tipo de informação. Podemos configurar um botão para iniciarmos manualmente, definir em uma requisição HTTP como ponto de entrada e até um timer, para que o fluxo seja iniciado em um intervalo de tempo predeterminado. Estes nós apresentam apenas saídas de informação, pois estarão sempre posicionados no início do fluxo.

// Os nós de saída (output) definem o fim de um fluxo. Podemos definir o fim do fluxo de diversas formas, com uma mensagem no console, um envio de um e-mail, com uma resposta HTTP ou armazenando a informação em um banco de dados ou arquivo. Estes nós apresentam apenas entradas de informação, pois estarão sempre posicionados ao fim de um fluxo.

// Os nós de função (function) são nós intermediários. Eles não ficam nem no início nem no fim de um fluxo. Eles possuem entradas e saídas, pois esses nós são responsáveis por receber informação, processá-la de alguma forma e passar o resultado desse processamento para o próximo nó. Com nós de função podemos escrever código JavaScript, podemos definir tempos de espera, criar requisições HTTP intermediárias, converter formatos de informação, entre outras opções.

// Com esses três tipos básicos de nós somo capazes de criar nossos próprios fluxos. Um fluxo é um conjunto de nós conectados com início e fim. No Node-RED podemos ter vários fluxos diferentes. Clicando no botão com o símbolo +, no canto superior direito do editor, criamos um novo fluxo.

// Podemos ver quais os fluxos foram criados nas abas posicionadas na parte superior do editor.

// Porém, quando criamos um novo fluxo ou editamos um fluxo existente essas novas modificações não serão acessíveis imediatamente. Para que as modificações sejam aplicadas ao funcionamento do fluxo é necessário fazer o deploy dessas modificações clicando no botão deploy.

// Dessa forma, as modificações que você tiver implementado nos fluxos já existentes e os novos fluxos que você tiver criado irão estar online.
