import 'package:flutter/material.dart';

/// Crachá de perfil do desenvolvedor (nome, curso, tecnologias).
class CrachaPerfil extends StatelessWidget {
  final String nome;
  final String curso;
  final String bio;
  final List<String> tecnologias;

  const CrachaPerfil({
    super.key,
    required this.nome,
    required this.curso,
    required this.bio,
    required this.tecnologias,
  });

  String get _iniciais {
    final partes = nome.trim().split(' ');
    if (partes.length == 1) return partes.first[0].toUpperCase();
    return (partes.first[0] + partes.last[0]).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.indigo,
              child: Text(
                _iniciais,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(curso, style: const TextStyle(color: Colors.black54)),
                  const SizedBox(height: 8),
                  Text(bio),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: tecnologias
                        .map((t) => Chip(label: Text(t)))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
