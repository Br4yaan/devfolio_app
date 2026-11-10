import 'package:flutter/material.dart';

class BlocoEstatistica extends StatelessWidget {
  final String titulo;
  final String valor;
  final bool destaque;

  const BlocoEstatistica({
    Key? key,
    required this.titulo,
    required this.valor,
    this.destaque = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      shadowColor: Colors.black.withOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Center( // Centraliza o texto dentro do card
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  valor,
                  style: const TextStyle(
                    fontSize: 36, 
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF4A00E0), // Cor combinando com o gradiente
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          if (destaque)
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.orange.withOpacity(0.4), blurRadius: 4, offset: const Offset(0, 2))
                  ]
                ),
                child: const Text(
                  'Novo',
                  style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
