                  import 'package:flutter/material.dart';
                  import 'package:seamless/shared/theme.dart';

                  class CostumFilledButton extends StatelessWidget {
                    final VoidCallback? onPressed;
                    final String title;
                    final double width;
                    final double height;
                    const CostumFilledButton({super.key,
                      this.onPressed, 
                      required this.title, 
                      this.width = double.infinity,
                      this.height = 50,
                    });

                    @override
                    Widget build(BuildContext context) {
                      return SizedBox(
                      width: width,
                      height: height,
                      child: TextButton(
                        onPressed: onPressed, 
                        style: TextButton.styleFrom(
                          backgroundColor: purpleColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(56),
                          ),
                        ),
                        child: Text(
                          title,
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                      ),
                    )
                  );
                }
              }


class CostumTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
                    final String title;
                    final double width;
                    final double height;
  const CostumTextButton({super.key,
    this.onPressed,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
          );
  }
}