import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/send_section/send_bottom_buttons.dart';
import 'package:instagram/components/profile_widget.dart';

class SendButton extends StatelessWidget {
  final double widthTotal;

  const SendButton({super.key, required this.widthTotal});

  @override
  Widget build(BuildContext context) {

    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.40,
      maxChildSize: 1.0,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(
                      fontFamily: 'Instagram',
                      color: Theme.of(context).colorScheme.primary),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFA8A8A8),
                    ),
                    suffixIcon: const Icon(Icons.group_add_outlined),
                    hintText: 'Adicione um comentário para compartilhar',
                    hintStyle: const TextStyle(
                      color: Color(0xFFA8A8A8),
                    ),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                height: 0.5,
                thickness: 0.1,
              ),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      children: List.generate(
                        3,
                        (index) => const Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: ProfileWidget(
                                    profileName: 'Profile Name',
                                    paddingLeft: 0,
                                    paddingTop: 0,
                                    paddingRight: 0,
                                    paddingBottom: 10,
                                    size: 35,
                                    isColumn: true,
                                    hasDescription: false,
                  description: ''
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Divider(
                height: 0.5,
                thickness: 0.1,
              ),
              const SendBottomButtons(),
            ],
          ),
        );
      },
    );
  }
}
