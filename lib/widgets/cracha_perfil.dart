import 'package:flutter/material.dart';

class CrachaPerfil extends StatelessWidget {
  final String nome;
  final String papel;
  final String contribuicao;
  final String avatarUrl;
  final List<String> habilidades;

  const CrachaPerfil({
    Key? key,
    required this.nome,
    required this.papel,
    required this.contribuicao,
    required this.avatarUrl,
    required this.habilidades,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 20,
                offset: const Offset(0, 10),
              )
            ],
            gradient: const LinearGradient(
              colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Avatar com foto dinâmica
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: NetworkImage(avatarUrl),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                nome,
                style: const TextStyle(
                  fontSize: 28, 
                  fontWeight: FontWeight.w800, 
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                papel,
                style: TextStyle(
                  fontSize: 16, 
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              // Faixa mostrando a contribuição de cada um no projeto
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  contribuicao,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14, 
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: habilidades.map((hab) {
                  return Chip(label: Text(hab, style: const TextStyle(fontWeight: FontWeight.bold)));
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
