import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'Geologica', // Define a fonte para toda a aplicação
      ),
      debugShowCheckedModeBanner: false, // Oculta a faixa amarela de depuração
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jax'),
          backgroundColor:
              const Color.fromARGB(255, 14, 13, 13), // barra alterado
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Image.network(
                'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Jax_0.jpg',
                height: 300,
                width: double.infinity, // Alterado para preencher a largura
              ),
              SizedBox(height: 20),
              Text(
                'Geralmente usado na rota topo e jungle, jax é um lutador duelista muito usado em split push ou em combate direto',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily:
                      'Geologica', // Define a fonte apenas para este texto
                  fontWeight: FontWeight.bold, // Deixa o texto em negrito
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tooltip(
                    message: 'Avaliar Campeão',
                    child: IconButton(
                      icon: Icon(Icons.star,
                          color: Colors.yellow), // Altera a cor para amarelo
                      onPressed: () {
                        // Lógica do botão de avaliação
                      },
                    ),
                  ),
                  Tooltip(
                    message: 'Favoritar Campeão',
                    child: IconButton(
                      icon: Icon(Icons.favorite,
                          color: Colors.red), // Altera a cor para vermelho
                      onPressed: () {
                        // Lógica do botão de favoritar
                      },
                    ),
                  ),
                  Tooltip(
                    message: 'Compartilhar Campeão',
                    child: IconButton(
                      icon: Icon(Icons.share,
                          color: Colors.blue), // Altera a cor para azul
                      onPressed: () {
                        // Lógica do botão de compartilhar
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10, // Reduzindo a margem horizontal
                ),
                child: Text(
                  'Jax virou um viajante, vagando pelo mundo conhecido e por lugares que ainda não constavam em mapa algum. Portando o elemental de fogo, a idade de Jax superou até mesmo o esperado para um nativo de um povo conhecido pela longevidade.',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily:
                        'Geologica', // Define a fonte apenas para este texto
                    fontWeight: FontWeight.bold, // Deixa o texto em negrito
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 133, 57, 146), // Fundo roxo
      ),
    ),
  );
}
