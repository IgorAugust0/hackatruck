// Um objeto isolado em um sistema não tem significado. Para que o mesmo seja útil, ele deve se relacionar com 
// outros objetos e partes do sistema, viabilizando a troca de informações e o processamento dos dados. 
// Essa comunicação se dá por meio de mensagens que trafegam a partir dos métodos. Veja as definições sobre mensagens:

// • Mensagens enviadas para as variáveis: são as mensagens que resgatam ou alteram os valores de variáveis.

// • Mensagens enviadas para os métodos: são mensagens que desencadeiam a realização dos métodos de 
// cada objeto (chamadas dos métodos).

// Uma mensagem enviada para um método deve ser composta por três partes:

// • Um destino - objeto que receberá a mensagem;

// • Nome do método a ser invocado pela mensagem;

// • Parâmetros necessários para o método invocado.

// Note que além desses três aspectos, a mensagem também pode receber uma resposta no formato do retorno do método invocado.