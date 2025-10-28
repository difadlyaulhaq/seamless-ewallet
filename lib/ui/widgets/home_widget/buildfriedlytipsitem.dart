import 'package:flutter/material.dart';
import '../../../shared/theme.dart'; // Pastikan path ini benar

class Buildfriedlytipsitem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap; // Tambahkan onTap jika diperlukan

  const Buildfriedlytipsitem({
    super.key,
    required this.iconUrl,
    required this.title,
    this.onTap, // Tambahkan onTap jika diperlukan
  });

  @override
  Widget build(BuildContext context) {
    // Gunakan InkWell jika item ini perlu di-tap
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18), // Sesuaikan radius
      child: Container(
        width: 160,
        height: 90,
        margin: const EdgeInsets.only(right: 16), // Margin di luar InkWell
        // Gunakan ClipRRect untuk membulatkan sudut Stack
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          // Gunakan Stack untuk menumpuk elemen
          child: Stack(
            fit: StackFit.expand, // Agar elemen di dalam Stack mengisi Container
            children: [
              // 1. Gambar Background
              Image.asset(
                iconUrl,
                fit: BoxFit.cover, // Gunakan BoxFit.cover agar gambar mengisi penuh
              ),
              // 2. Gradient Overlay (opsional, agar teks lebih terbaca)
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.0), // Transparan di atas
                      Colors.black.withOpacity(0.6), // Gelap di bawah
                    ],
                    stops: const [0.5, 1.0], // Mulai gradient dari tengah ke bawah
                  ),
                ),
              ),
              // 3. Teks di bagian bawah
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0), // Padding untuk teks
                  child: Text(
                    title,
                    style: whiteTextStyle.copyWith( // Gunakan whiteTextStyle agar kontras
                      fontSize: 14,
                      fontWeight: medium, // Gunakan variabel dari theme
                    ),
                    maxLines: 2, // Batasi teks jika terlalu panjang
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

