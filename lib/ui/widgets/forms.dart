import 'package:seamless/shared/theme.dart';
import 'package:flutter/material.dart';

// 1. Ubah class utama menjadi StatefulWidget
class CustomFormField extends StatefulWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowTitle;
  final Function(String)? onFieldSubmitted;

  const CustomFormField({
    super.key,
    required this.title,
    this.obscureText = false, // Ini akan menjadi nilai awal
    this.controller,
    this.isShowTitle = true,
    this.onFieldSubmitted,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  // 2. Buat state variable untuk melacak kondisi obscure
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    // 3. Inisialisasi state dengan nilai dari widget
    _isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isShowTitle)
          Text(
            widget.title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (widget.isShowTitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          // Gunakan state variable di sini
          obscureText: _isObscure,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: !widget.isShowTitle ? widget.title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
            // 4. Tambahkan suffixIcon secara kondisional jika ini adalah field password
            suffixIcon: widget.obscureText
                ? IconButton(
                    icon: Icon(
                      // Ganti ikon berdasarkan state
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      // 5. Panggil setState untuk membangun ulang UI dengan state baru
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  )
                : null, // Jika bukan password field, tidak ada ikon
          ),
          onFieldSubmitted: widget.onFieldSubmitted,
        ),
      ],
    );
  }
}