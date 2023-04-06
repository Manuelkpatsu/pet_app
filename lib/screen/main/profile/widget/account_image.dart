import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/screen/main/profile/widget/account_type.dart';
import 'package:pet_app/theme/custom_color.dart';

class AccountImage extends StatelessWidget {
  final AccountType type;
  final VoidCallback? onPressed;
  final String? image;
  final String? shopName;

  const AccountImage({
    Key? key,
    required this.type,
    required this.onPressed,
    required this.image,
    required this.shopName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: -50,
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: type == AccountType.profile
            ? Ink(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColor.greyTextColor,
                  image: DecorationImage(
                    image: AssetImage(image!),
                    fit: BoxFit.contain,
                  ),
                ),
              )
            : Ink(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColor.sellerBackgroundColor,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    shopName!.characters.first.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ultra(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
