import 'package:dart_openai/openai.dart';
import 'package:eunice_template/l10n/l10n.dart';
import 'package:eunice_template/prompt/cubit/api_key_cubit.dart';
import 'package:eunice_template/prompt/dialog/api_key_input_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromptScreen extends StatefulWidget {
  const PromptScreen({super.key});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.appTitle),
      ),
      body: BlocBuilder(
        bloc: context.read<ApiKeyCubit>(),
        builder: (context, String? apiKey) {
          if (apiKey == null || apiKey.isEmpty) {
            return Center(
              child: TextButton.icon(
                icon: const Icon(Icons.add),
                onPressed: () {
                  ApiKeyInputDialog.show(
                    context,
                    onSubmitted: (apiKey) {
                      OpenAI.apiKey = apiKey;
                      context.read<ApiKeyCubit>().setApiKey(apiKey: apiKey);
                      Navigator.of(context).pop();
                    },
                  );
                },
                label: Text(
                  context.l10n.apiKeyInputDialogButton,
                ),
              ),
            );
          } else {
            return FutureBuilder(
              future: OpenAI.instance.model.list(),
              builder:
                  (context, AsyncSnapshot<List<OpenAIModelModel>?> snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      snapshot.error.toString(),
                    ),
                  );
                } else if (snapshot.hasData &&
                    (snapshot.data?.isNotEmpty ?? false) == true) {
                  return SingleChildScrollView(
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(16),
                            child: Text(
                              context.l10n.openAiApiKeyAvailable,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(16),
                            child: Text(
                              snapshot.data
                                      ?.map((e) => '*\t${e.id}')
                                      .join('\n') ??
                                  'No models found',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            );
          }
        },
      ),
    );
  }
}
