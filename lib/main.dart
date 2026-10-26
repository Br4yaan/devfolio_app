import 'package:flutter/material.dart';
import 'widgets/cracha_perfil.dart';
import 'widgets/dashboard_metricas.dart';

void main() => runApp(const DevFolioApp());

class DevFolioApp extends StatelessWidget {
  const DevFolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevFolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevFolio'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: const [
            
              CrachaPerfil(
                nome: 'Pietro Pereira',
                curso: 'Análise e Desenvolvimento de Sistemas',
                bio: 'Estudante apaixonado por desenvolvimento mobile com Flutter.',
                tecnologias: ['Dart', 'Flutter', 'Git', 'GitHub'],
              ),
              SizedBox(height: 24),
              DashboardMetricas(),
            ],
          ),
        ),
      ),
    );
  }
}
