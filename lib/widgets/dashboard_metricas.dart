import 'package:flutter/material.dart';
import 'bloco_estatistica.dart';

/// Dashboard com as métricas do desenvolvedor, organizado em um Wrap
/// para se adaptar a telas largas (navegador) e estreitas (celular).
class DashboardMetricas extends StatelessWidget {
  const DashboardMetricas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Dashboard de Métricas',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            BlocoEstatistica(
              titulo: 'Projetos',
              valor: '8',
              icone: Icons.folder_open,
              cor: Colors.indigo,
            ),
            BlocoEstatistica(
              titulo: 'Commits',
              valor: '120',
              icone: Icons.commit,
              cor: Colors.teal,
            ),
            BlocoEstatistica(
              titulo: 'Linguagens',
              valor: '4',
              icone: Icons.code,
              cor: Colors.deepOrange,
            ),
            BlocoEstatistica(
              titulo: 'Horas de estudo',
              valor: '250',
              icone: Icons.schedule,
              cor: Colors.purple,
            ),
          ],
        ),
      ],
    );
  }
}
