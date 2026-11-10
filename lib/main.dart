import 'package:flutter/material.dart';
import 'widgets/cracha_perfil.dart';
import 'widgets/dashboard_metricas.dart';

void main() {
  runApp(const DevfolioApp());
}

class DevfolioApp extends StatelessWidget {
  const DevfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devfolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Imagem gerada no estilo "foto fantasma / contato de whatsapp" em cinza e branco
    const String fotoFantasma = 'https://ui-avatars.com/api/?name=User&background=e0e0e0&color=9e9e9e&size=256&rounded=true';

    return Scaffold(
      backgroundColor: Colors.grey[50], // Fundo levemente acinzentado para destacar os cards
      appBar: AppBar(
        title: const Text('DevFolio - Equipe'),
        centerTitle: true,
        backgroundColor: const Color(0xFF4A00E0),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
        child: Column(
          children: const [
            // ================= PORTFÓLIO 1: BRAYAN =================
            CrachaPerfil(
              nome: 'Brayan Biazini',
              papel: 'Dev Mobile | GitHub: @Br4yaan',
              contribuicao: 'Criou os Layouts (Avatar, Gradientes, Chips) e garantiu a Arquitetura Clean separando os widgets.',
              avatarUrl: fotoFantasma,
              habilidades: ['Flutter', 'Layouts UI', 'Dart', 'Clean Code'],
            ),
            SizedBox(height: 24),
            DashboardMetricas(projetos: '6', commits: '112', apps: '2', cafes: '87'),
            
            SizedBox(height: 60), // Espaço e divisor entre vocês
            Divider(thickness: 2, color: Colors.black12),
            SizedBox(height: 60),

            // ================= PORTFÓLIO 2: PIETRO =================
            CrachaPerfil(
              nome: 'Pietro Pereira',
              papel: 'Dev Mobile | GitHub: @pietropereira-08',
              contribuicao: 'Fez o Dashboard responsivo, eixos, GridView proporcional e sobreposição de selos com Stack.',
              avatarUrl: fotoFantasma,
              habilidades: ['Flutter', 'Grid Systems', 'Material Design', 'Git'],
            ),
            SizedBox(height: 24),
            DashboardMetricas(projetos: '4', commits: '34', apps: '1', cafes: '52'),
          ],
        ),
      ),
    );
  }
}
