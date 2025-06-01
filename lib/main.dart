import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Similarity Check',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 59, 45, 40),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const SimilarityCheckScreen(),
    );
  }
}

class SimilarityCheckScreen extends StatelessWidget {
  const SimilarityCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: GridLineBackgroundPainter(),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Judul
                Text(
                  'SIMILARITY CHECK !!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubikMonoOne(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 70, 58, 50), // Warna coklat tua
                  ),
                ),
                const SizedBox(height: 20),

                // Foto Profil
                CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.grey[300], // Placeholder background
                  // Ganti dengan gambar profil Anda
                  backgroundImage: AssetImage('assets/profile_pict.jpeg'),
                  // child: const Icon(Icons.person, size: 60, color: Colors.white), // Placeholder icon
                ),
                const SizedBox(height: 15),

                // Nama Lengkap
                Text(
                  '✿ Nida Aulia Amartika ✿', // Ganti dengan nama Anda
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF4A3B31),
                  ),
                ),
                const SizedBox(height: 5),

                // NRP
                Text(
                  '5026221095', // Ganti dengan NRP Anda
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xFF4A3B31),
                  ),
                ),
                const SizedBox(height: 25),

                // Kotak Similarities
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3E9DC), // Warna krem muda
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column( //mengatur item secara vertikal
                    children: [
                      Text(
                        '"Here\'s the similarity report between me and Arsya — Watson, please come and take notes!" 📜🖋️',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF5D4037), // Warna coklat sedang
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'The more you get similar the more you gain the XP, LET\'S GO 🧐',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF5D4037), // Warna coklat sedang
                        ),
                      ),
                      const SizedBox(height: 5),
                      _buildSimilarityItem( //membuat widget baris vertikal (kolom)
                        emoji: '👓',
                        variable: 'Glasses Frame Type',
                        percentage: 0.92, // 92%
                        xp: '+92 XP',
                        // Ganti dengan path ikon checklist Anda
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                      _buildSimilarityItem(
                        emoji: '🧣',
                        variable: 'Fashion Taste',
                        percentage: 0.90, // 90%
                        xp: '+90 XP',
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                      _buildSimilarityItem(
                        emoji: '🔍',
                        variable: 'Conanian',
                        percentage: 1.0, // 100%
                        xp: '+100 XP',
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                      _buildSimilarityItem(
                        emoji: '🍱',
                        variable: 'Culinary Tendencies',
                        percentage: 0.9, // 90%
                        xp: '+90 XP',
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                      _buildSimilarityItem(
                        emoji: '📚',
                        variable: 'Mystery Genre Lover',
                        percentage: 0.99, // 99%
                        xp: '+99 XP',
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                       _buildSimilarityItem( // Item baru berdasarkan gambar
                        emoji: '🕵🏻', // Emoji placeholder untuk Sherlockian
                        variable: 'Sherlockian',
                        percentage: 0.92, // 92%
                        xp: '+92 XP',
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                       _buildSimilarityItem( // Item baru berdasarkan gambar
                        emoji: '🎬', // Emoji placeholder untuk Movie
                        variable: 'Movie Preference',
                        percentage: 0.85, // 85%
                        xp: '+85 XP',
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                       _buildSimilarityItem( // Item baru berdasarkan gambar
                        emoji: '🥟', // Emoji placeholder untuk Dimsum Mentai
                        variable: 'Dimsum Mentai Junkie',
                        percentage: 0.96, // 96%
                        xp: '+96 XP',
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                      _buildSimilarityItem(
                        emoji: '🎨',
                        variable: 'Preferred Color Palette', // Sesuai gambar
                        percentage: 0.91, // 91%
                        xp: '+91 XP', // Sesuai gambar
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                      _buildSimilarityItem(
                        emoji: '🐦',
                        variable: 'Twitter Chronicler', // Sesuai gambar
                        percentage: 0.94, // 94%
                        xp: '+94 XP', // Sesuai gambar
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                      _buildSimilarityItem(
                        emoji: '🐱',
                        variable: 'CATTT LOVERR', // Sesuai gambar
                        percentage: 0.999, // 99.9%
                        xp: '+99,9 XP', // Sesuai gambar
                        checklistIconPath: 'assets/checklist_icon.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                // Tulisan Bawah
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                     color: const Color.fromARGB(255, 247, 238, 226), // Warna sedikit lebih gelap dari kotak utama
                     borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    'Double Agents of Deduction : Case Easily Closed !!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: const Color.fromARGB(255, 94, 20, 3),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSimilarityItem({
    required String emoji,
    required String variable,
    required double percentage,
    required String xp,
    String? checklistIconPath, // Opsional, jika tidak ada path, gunakan ikon default
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7), // Warna item sedikit transparan
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: const Color(0xFFD3B8AE), width: 1.5), // Border coklat muda
        ),
        child: Row(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    variable,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF4A3B31),
                    ),
                  ),
                  const SizedBox(height: 5),
                  LinearProgressIndicator(
                    value: percentage,
                    backgroundColor: const Color(0xFFE0CFC2), // Warna background progress bar
                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF8D6E63)), // Warna progress bar
                    minHeight: 8,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Text(
              xp,
              style: GoogleFonts.poorStory( // Font Poor Story untuk XP
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF795548), // Warna coklat lebih tua
              ),
            ),
            const SizedBox(width: 12),
            // Menggunakan ikon jika path tidak ada, atau gambar jika ada
            checklistIconPath != null
                ? Image.asset(checklistIconPath, width: 28, height: 28)
                : Container( // Placeholder jika tidak ada gambar checklist
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF8D6E63), // Warna coklat
                      border: Border.all(color: Colors.white, width: 2)
                    ),
                    child: const Icon(Icons.check, color: Colors.white, size: 18),
                  ),
          ],
        ),
      ),
    );
  }
}

class GridLineBackgroundPainter extends CustomPainter {
  final Color backgroundColor;
  final Color lineColor;
  final double lineWidth;
  final double gridSize;

  GridLineBackgroundPainter({
    this.backgroundColor = const Color.fromARGB(255, 213, 186, 167), // coklat muda
    this.lineColor = Colors.white,
    this.lineWidth = 2.3,
    this.gridSize = 30.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Gambar background polos coklat
    final backgroundPaint = Paint()..color = backgroundColor;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), backgroundPaint);

    // Gambar garis vertikal
    final linePaint = Paint()
      ..color = lineColor
      ..strokeWidth = lineWidth;

    for (double x = 0; x <= size.width; x += gridSize) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), linePaint);
    }

    // Gambar garis horizontal
    for (double y = 0; y <= size.height; y += gridSize) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), linePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
