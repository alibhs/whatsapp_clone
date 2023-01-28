import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extencion/custom_theme_extancion.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_icon_button.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
  }) : super(key: key);

  showBottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4,
                  width: 30,
                  decoration: BoxDecoration(
                    color: context.theme.greyColor!.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CustomIconButton(
                      onTap: () => Navigator.of(context).pop(),
                      icon: Icons.close_outlined,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "App Language",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: context.theme.greyColor!.withOpacity(0.3),
                  thickness: .5,
                ),
                RadioListTile(
                  value: true,
                  groupValue: true,
                  onChanged: (value) {},
                  activeColor: Coloors.greenDark,
                  title: Text("English"),
                  subtitle: Text(
                    "(phone's language)",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                  ),
                ),
                RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (value) {},
                  activeColor: Coloors.greenDark,
                  title: Text("Türkçe"),
                  subtitle: Text(
                    "(Türkish)",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: Coloors.greenDark,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "English",
                style: TextStyle(color: Coloors.greenDark),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Coloors.greenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
