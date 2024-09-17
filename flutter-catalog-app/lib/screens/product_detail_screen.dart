import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productName;

  const ProductDetailScreen({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(productName),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Descrição'),
              Tab(text: 'Avaliações'),
              Tab(text: 'Especificações'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Aba "Descrição" com Imagem

            if (productName == 'Smartphone XYZ') ...[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset('assets/smartphone_xyz.png', height: 300),
                    const SizedBox(height: 16),
                    const Text(
                      'O Smartphone XYZ possui uma tela AMOLED de 6.5 polegadas, '
                      'processador octa-core, 128GB de armazenamento e câmera tripla de 48MP. '
                      'Ideal para quem busca desempenho e qualidade.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              // Aba "Avaliações"
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Avaliações dos clientes: \n\n'
                  '- Ótimo smartphone, superou minhas expectativas! (5 estrelas)\n'
                  '- Muito bom, mas a bateria poderia durar mais. (4 estrelas)\n',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              // Aba "Especificações"
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Especificações Técnicas:\n\n'
                  '- Tela: 6.5 polegadas, AMOLED\n'
                  '- Processador: Octa-core 2.0 GHz\n'
                  '- Armazenamento: 128GB\n'
                  '- Câmera: Traseira tripla 48MP + 12MP + 5MP\n'
                  '- Bateria: 4500mAh',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
            if (productName == 'Fones de Ouvido Bluetooth') ...[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset('assets/Fone_HelloKitty.jpg', height: 300),
                    const SizedBox(height: 16),
                    const Text(
                      'fone de ouvido bão *joinha*',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
