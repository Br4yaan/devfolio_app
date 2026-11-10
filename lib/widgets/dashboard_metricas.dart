import 'package:flutter/material.dart';
import 'bloco_estatistica.dart';

class DashboardMetricas extends StatelessWidget {
  final String projetos;
  final String commits;
  final String apps;
  final String cafes;

  const DashboardMetricas({
    Key? key,
    required this.projetos,
    required this.commits,
    required this.apps,
    required this.cafes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: LayoutBuilder(
          builder: (context, constraints) {
            int colunas = constraints.maxWidth > 600 ? 4 : 2;

            return GridView.count(
              crossAxisCount: colunas,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                BlocoEstatistica(titulo: 'Projetos', valor: projetos, destaque: true),
                BlocoEstatistica(titulo: 'Commits', valor: commits),
                BlocoEstatistica(titulo: 'Apps Publicados', valor: apps),
                BlocoEstatistica(titulo: 'Cafés tomados', valor: cafes),
              ],
            );
          },
        ),
      ),
    );
  }
}
