import 'package:flutter/material.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';

class SearchInput extends StatefulWidget {
  final Function(String)? onChanged;
  final VoidCallback? onSearchTap;
  final VoidCallback? onFilterTap;
  final bool hasActiveFilters;
  
  const SearchInput({
    super.key,
    this.onChanged,
    this.onSearchTap,
    this.onFilterTap,
    this.hasActiveFilters = false,
  });

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 2,
              ),
            ),
            child: ValueListenableBuilder<TextEditingValue>(
              valueListenable: _controller,
              builder: (context, value, _) {
                return TextField(
                  controller: _controller,
                  onChanged: (value) {
                    widget.onChanged?.call(value);
                  },
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
                    suffixIcon: value.text.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              _controller.clear();
                              widget.onChanged?.call('');
                            },
                            icon: Icon(
                              Icons.close_rounded,
                              color: Colors.grey.shade500,
                            ),
                          )
                        : null,
                    hintText: "Procurar Pokémon...",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        if (widget.onFilterTap != null) ...[
          AppSpacing.horizontalSpaceSM,
          Container(
            decoration: BoxDecoration(
              color: widget.hasActiveFilters ? AppColors.primary : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.hasActiveFilters
                    ? AppColors.primary
                    : Colors.grey.shade300,
                width: 2,
              ),
            ),
            child: IconButton(
              onPressed: widget.onFilterTap,
              icon: Icon(
                Icons.tune,
                color: widget.hasActiveFilters ? Colors.white : Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
