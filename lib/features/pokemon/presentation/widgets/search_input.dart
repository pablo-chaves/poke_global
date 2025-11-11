import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final Function(String)? onChanged;
  final VoidCallback? onSearchTap;
  const SearchInput({super.key, this.onChanged, this.onSearchTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 2,
              ),
            ),
            child: TextField(
              onChanged: onChanged,
              textAlignVertical: TextAlignVertical.center,
              onSubmitted: (_) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                isDense: false,
                contentPadding: EdgeInsets.all(11),
                fillColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                filled: false,
                icon: Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                hintText: "Procurar Pokémon...",
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        // AppSpacing.horizontalSpaceMD,
        // Container(
        //   width: 48,
        //   height: 48,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     shape: BoxShape.circle,
        //     border: Border.all(
        //       color: Colors.grey.shade300,
        //       width: 2,
        //     ),
        //   ),
        //   child: IconButton(
        //     splashRadius: 24,
        //     onPressed: () {
        //       FocusScope.of(context).unfocus();
        //       onSearchTap?.call();
        //     },
        //     icon: Icon(
        //       Icons.search,
        //       color: Colors.grey.shade500,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
