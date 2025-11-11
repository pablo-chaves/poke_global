import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_global/core/constants/app_spacing.dart';
import 'package:poke_global/core/routes/route_names.dart';
import 'package:poke_global/core/widgets/custom_button.dart';
import 'package:poke_global/features/profile/presentation/providers/user_name_provider.dart';

class AskNameScreen extends ConsumerStatefulWidget {
  const AskNameScreen({super.key});

  @override
  ConsumerState<AskNameScreen> createState() => _AskNameScreenState();
}

class _AskNameScreenState extends ConsumerState<AskNameScreen> {
  final _controller = TextEditingController();
  bool _saving = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final name = _controller.text.trim();
    if (name.isEmpty) return;
    setState(() => _saving = true);
    await ref.read(userNameProvider.notifier).setName(name);
    if (mounted) {
      FocusScope.of(context).unfocus();
      if (context.canPop()) {
        context.pop();
      } else {
        context.go(RouteNames.home);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: AppSpacing.paddingHorizontalMD,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSpacing.verticalSpaceLG,
                Text(
                  '¿Cómo te llamas?',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                AppSpacing.verticalSpaceSM,
                Text('Personaliza tu experiencia ingresando tu nombre.'),
                AppSpacing.verticalSpaceLG,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                  ),
                  child: TextField(
                    controller: _controller,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) => _save(),
                    decoration: const InputDecoration(
                      fillColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'Tu nombre',
                    ),
                  ),
                ),
                AppSpacing.verticalSpaceLG,
                CustomButton(
                  text: _saving ? 'Guardando...' : 'Continuar',
                  onPressed: () {
                    if (_saving) return;
                    _save();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
