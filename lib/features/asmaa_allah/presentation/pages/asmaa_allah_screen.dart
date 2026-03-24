import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/core/extensions/context_extensions.dart';
import 'package:template/core/services/dependencies.dart';
import 'package:template/core/utils/request_status.dart';

import '../../../counter/presentation/pages/tasbih_screen.dart';
import '../bloc/asmaa_bloc.dart';

class AsmaaAllahScreen extends StatefulWidget {
  const AsmaaAllahScreen({super.key});

  @override
  State<AsmaaAllahScreen> createState() => _AsmaaAllahScreenState();
}

class _AsmaaAllahScreenState extends State<AsmaaAllahScreen> {
  @override
  void initState() {
    getIt<AsmaaBloc>().add(GetAsmaaAllahEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('أسماء الله الحسنى')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 120),
            ListTile(
              tileColor: Colors.transparent,
              leading: Icon(Icons.format_list_bulleted, color: context.theme.colorScheme.onPrimary),
              title: Text(
                'أسماء الله الحسنى',
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                // Already on this screen, do nothing
              },
            ),
            ListTile(
              tileColor: Colors.transparent,
              leading: Icon(Icons.repeat, color: context.theme.colorScheme.onPrimary),
              title: Text(
                'المسبحة',
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const TasbihScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: BlocBuilder<AsmaaBloc, AsmaaState>(
        bloc: getIt<AsmaaBloc>(),
        builder: (context, state) {
          if (state.getAsmaaAllahStatus.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.getAsmaaAllahStatus.isFailed) {
            return Center(child: Text('حدث خطأ'));
          } else if (state.names.isEmpty) {
            return const Center(child: Text('لا توجد بيانات'));
          }
          final names = state.names;
          return ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: names.length,
            itemBuilder: (context, index) {
              final name = names[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white,
                          index % 2 == 0 ? const Color(0xFFF8F9FA) : Colors.white,
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        // Name number
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE8F0F8),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E3A5F),
                                fontFamily: 'Amiri',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Name details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name.name ?? '',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Amiri',
                                  color: Color(0xFF1E3A5F),
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                name.meaning ?? '',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                  fontFamily: 'Amiri',
                                ),
                                textDirection: TextDirection.rtl,
                              ),
                              if (name.transliteration != null)
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    name.transliteration!,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[500],
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        // Icon
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE8F0F8).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.chevron_left, size: 20, color: Color(0xFF1E3A5F)),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
