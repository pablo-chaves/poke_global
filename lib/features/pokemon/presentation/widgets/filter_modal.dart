import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/constants/app_colors.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/widgets/custom_button.dart';

class FilterModal extends StatefulWidget {
  final List<String> selectedTypes;
  final Function(List<String>) onApply;

  const FilterModal({
    super.key,
    required this.selectedTypes,
    required this.onApply,
  });

  @override
  State<FilterModal> createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  late List<String> _selectedTypes;
  bool _isExpanded = true;

  final Map<String, String> _typeNames = {
    'normal': 'Normal',
    'fire': 'Fuego',
    'water': 'Agua',
    'electric': 'Eléctrico',
    'grass': 'Planta',
    'ice': 'Hielo',
    'fighting': 'Lucha',
    'poison': 'Veneno',
    'ground': 'Tierra',
    'flying': 'Volador',
    'psychic': 'Psíquico',
    'bug': 'Bicho',
    'rock': 'Roca',
    'ghost': 'Fantasma',
    'dragon': 'Dragón',
    'dark': 'Siniestro',
    'steel': 'Acero',
    'fairy': 'Hada',
  };

  @override
  void initState() {
    super.initState();
    _selectedTypes = List.from(widget.selectedTypes);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: AppSpacing.radiusXL,
          topRight: AppSpacing.radiusXL,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(top: AppSpacing.sm),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            Padding(
              padding: AppSpacing.paddingLG,
              child: Text(
                'Filtra por tus preferencias',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Divider(height: 1),

            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isExpanded = !_isExpanded;
                        });
                      },
                      child: Padding(
                        padding: AppSpacing.paddingMD,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tipo',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              _isExpanded
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                            ),
                          ],
                        ),
                      ),
                    ),

                    if (_isExpanded)
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                        ),
                        child: Column(
                          children: _typeNames.entries.map((entry) {
                            final isSelected = _selectedTypes.contains(
                              entry.key,
                            );
                            return CheckboxListTile(
                              title: Text(entry.value),
                              value: isSelected,
                              activeColor: AppColors.primary,
                              onChanged: (bool? value) {
                                setState(() {
                                  if (value == true) {
                                    _selectedTypes.add(entry.key);
                                  } else {
                                    _selectedTypes.remove(entry.key);
                                  }
                                });
                              },
                            );
                          }).toList(),
                        ),
                      ),

                    AppSpacing.verticalSpaceMD,
                  ],
                ),
              ),
            ),

            Padding(
              padding: AppSpacing.paddingMD,
              child: Column(
                children: [
                  CustomButton(
                    onPressed: () {
                      widget.onApply(_selectedTypes);
                      Navigator.pop(context);
                    },
                    text: 'Aplicar',
                  ),
                  AppSpacing.verticalSpaceSM,
                  CustomButton(
                    onPressed: () {
                        setState(() {
                          _selectedTypes.clear();
                        });
                        widget.onApply([]);
                        Navigator.pop(context);
                      },
                    text: 'Cancelar',
                    type: ButtonType.secondary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
