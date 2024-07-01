import 'package:flutter/material.dart';

class AddAcount extends StatelessWidget{
    final double widthButton;
  const AddAcount({super.key, required this.widthButton,});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      color: const Color.fromARGB(255, 37, 54, 65),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          const Text('Adicionar conta', style: TextStyle(fontFamily: 'Instagram', fontWeight: FontWeight.bold, fontSize: 17),),
          const SizedBox(height: 10,),
          SizedBox(
            width: (widthButton * 2) + 15,
            child: FilledButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                side: WidgetStateProperty.all(
                  const BorderSide(color: Colors.blue),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Entrar na conta existente',
                style: TextStyle(fontFamily: 'Instagram', color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: (widthButton * 2) + 15,
            child: OutlinedButton(
              style: ButtonStyle(
                side: WidgetStateProperty.all(
                  const BorderSide(color: Colors.white),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Criar nova conta',
                style: TextStyle(fontFamily: 'Instagram', color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

}