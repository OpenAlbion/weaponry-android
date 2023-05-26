import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class SimpleDropDown extends StatelessWidget {
  final List<String> itemList;
  final Function(String selectedItem) onSelected;
  const SimpleDropDown({super.key, required this.itemList, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButtonFormField2(
        value: itemList.first,
        decoration: InputDecoration(
          filled: true,
          fillColor: getCardColor(context),

          //Add isDense true and zero Padding.
          //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: BorderSide.none),
          //Add more decoration as you want here
          //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
        ),
        buttonStyleData:
            const ButtonStyleData(height: 40, padding: EdgeInsets.only(right: MARGIN_MEDIUM)),
        dropdownStyleData: DropdownStyleData(
          offset: Offset(0, -8),
          decoration: BoxDecoration(
              color: getCardColor(context), borderRadius: BorderRadius.circular(4), boxShadow: []),
        ),
        onChanged: (item) {
          if (item != null) {
            onSelected(item);
          }
        },
        items: itemList
            .map(
              (title) => DropdownMenuItem(
                value: title,
                child: InterText(
                  title,
                  style: TextStyle(fontSize: TEXT_SMALL),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
