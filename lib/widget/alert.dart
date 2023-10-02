// import 'package:flutter/material.dart';

// class CustomAlertDialog extends StatefulWidget {
//   const CustomAlertDialog({super.key});

//   @override
//   _CustomAlertDialogState createState() => _CustomAlertDialogState();
// }

// class _CustomAlertDialogState extends State<CustomAlertDialog> {
//   int? selectedOption;
//   String searchText = '';

//   List<int> options = [1, 2, 3];
//   List<int> filteredOptions = [1, 2, 3];

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: const Color(0xff303030),
//       title: const Text(
//         'Selecione uma opção',
//         style: TextStyle(color: Colors.white),
//       ),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextField(
//             style: const TextStyle(color: Colors.white),
//             decoration: const InputDecoration(
//               hintText: 'Digite para pesquisar',
//               hintStyle: TextStyle(color: Colors.white70),
//             ),
//             onChanged: (value) {
//               setState(() {
//                 searchText = value;
//                 filterOptions();
//               });
//             },
//           ),
//           Column(
//             children: filteredOptions.map((option) {
//               return RadioListTile<int>(
//                 title: Text(
//                   'Projeto $option',
//                   style: const TextStyle(color: Colors.white),
//                 ),
//                 value: option,
//                 groupValue: selectedOption,
//                 onChanged: (int? value) {
//                   setState(() {
//                     selectedOption = value;
//                   });
//                 },
//                 controlAffinity: ListTileControlAffinity.trailing,
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//       actions: [
//         TextButton(
//           child: const Text(
//             'Cancelar',
//             style: TextStyle(color: Colors.white),
//           ),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         TextButton(
//           child: const Text(
//             'Ok',
//             style: TextStyle(color: Colors.white),
//           ),
//           onPressed: () {
//             if (selectedOption != null) {
//               // Lógica para lidar com a opção selecionada
//               print('Opção selecionada: $selectedOption');
//             }
//             Navigator.of(context).pop();
//           },
//         ),
//       ],
//     );
//   }

//   void filterOptions() {
//     filteredOptions = options
//         .where((option) =>
//             'Projeto $option'.toLowerCase().contains(searchText.toLowerCase()))
//         .toList();
//   }
// }
