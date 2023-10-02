import 'package:flutter/material.dart';
import 'package:wellu_project/widget/buttonSettings.dart';
import 'package:wellu_project/widget/widgetOne.dart';
import 'package:wellu_project/widget/widgetSupport.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//DELETE TOTAL ANTES DOS PROBLEMAS
class _HomePageState extends State<HomePage> {
  //VARIAVEIS DE TEXTO
  String imAlready = 'I m already a customer';
  String texto1 = 'I m already a customer';
  String texto2 = 'I m not a customer';
  String textoSupport = 'Support';
  String textoFinacial = 'Financial';
  String TextTicket = 'Support';
  String TextViability = 'Financial';
  //LISTA DE OPÇÕES DO DROPDOWN 1
  List<String> list = <String>[
    'Select',
    'I m already a customer',
    'I m not a customer'
  ];
  late String dropdownValue = list.first;
  // FIM DA LISTA E VARIAVEIS DO DROPDOWN 1

  //LISTA DE OPÇÕES DROPDOWN 2
  final List<String> _newList = ['Select', 'Support', 'Financial'];
  late String newdropdownValue = _newList.first;
  //FIM DA LISTA E VARIAVEIS DO DROPDOWN 2

  //LISTA DE OPÇÕES DROPDOWN 3
  final List<String> _newList2 = ['Select', 'Ticket', 'Viability'];
  late String newdropdownValue2 = _newList2.first;
  //LISTA DE OPÇÕES DROPDOWN 4
  final List<String> _newList3 = ['Select', 'Teste1', 'Teste2'];
  late String newdropdownValue3 = _newList3.first;

  //VERIFICAÇÃO DOS SWITCH
  bool isSwitched = false;
  bool isSwitched2 = false;

  
  @override
  Widget build(BuildContext context) {
    setState(
      () {
        if (dropdownValue == 'Select') {
          texto1 = 'I m already a customer';
          texto2 = 'I m not a customer';
        } else if (dropdownValue == 'I m already a customer' &&
            newdropdownValue == 'Select') {
          texto1 = 'Support';
          texto2 = 'Financial';
        } else if (newdropdownValue == 'Support' &&
            dropdownValue == 'I m already a customer') {
          texto1 = 'Ticket';
          texto2 = 'Viability';
        }
      },
    );
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: const Color(0xff46964a),
            borderRadius: BorderRadius.circular(10)),
        child: IconButton(
          onPressed: () {
             Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ButtonSettings(),
                  ),
                );
          },
          icon: const Icon(
            Icons.add,
            color: Color(0xfffffffff),
          ),
        ),
      ),
      backgroundColor: const Color(0xff303030),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff424242),
        elevation: 1,
        title: const Text('Menu Settings'),
      ),
      //INICIO TEMPLATE FOTO
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0x99535353),
                  ),
                  child: SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.network(
                      'https://storage.googleapis.com/ecdt-logo-saida/aefd69d060e1a63cd12399d373de74e042f9ccaa0cd56d49664c8919ca853e3e/VELOCITYNET-TELECOM.webp',
                      //scale:0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Configure your virtual assistant menus here',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                //FIM DO TEMPLATE FOTO
                // DROPDOWN 1  ESTILIZAÇÃO
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Activated',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                isSwitched = !isSwitched;
                              },
                            );
                          },
                          child: const SizedBox(
                            height: 0,
                          ),
                        ),
                        Switch(
                          value: isSwitched,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Just greeting message?',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                isSwitched2 = !isSwitched2;
                              },
                            );
                          },
                          child: const SizedBox(
                            height: 0,
                          ),
                        ),
                        Switch(
                          value: isSwitched2,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(
                              () {
                                isSwitched2 = value;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18.0, top: 5, bottom: 20),
                      child: Text(
                        '# Menus',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0, top: 5),
                      child: Text(
                        'Actions',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        textAlign: TextAlign.end,
                        '1',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 58,
                        child: DropdownButtonFormField<String>(
                          padding: const EdgeInsets.only(left: 10),
                          decoration: const InputDecoration(
                            labelText: 'Select',
                            labelStyle: TextStyle(
                                color: Color(0xff46964a), fontSize: 17),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(70),
                              ),
                              borderSide:
                                  BorderSide(color: Color(0xffffffffff)),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffffffffff)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(70),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff46964a),
                            ),
                          ),
                          value: dropdownValue,
                          dropdownColor: const Color(0xff424242),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xff46964a),
                          ),
                          isExpanded: true,
                          elevation: 16,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          onChanged: (String? value) {
                            setState(
                              () {
                                dropdownValue = value!;
                                print(value);
                                if (dropdownValue == 'Select') {
                                  newdropdownValue = '';
                                  newdropdownValue2 = '';
                                  newdropdownValue3 = '';
                                } else {
                                  newdropdownValue = 'Select';
                                  newdropdownValue2 = 'Select';
                                  newdropdownValue3 = 'Select';
                                }
                              },
                            );
                          },
                          items: list.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ), //FIM DO EXPANDED DO PRIMEIRO DROPDOWN
                    // INICIO DO CONTAINER DE EDIÇÃO DO DROPDOWN 1
                    Container(
                      child: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              dropdownValue = 'Select';
                              newdropdownValue = 'Select';
                              newdropdownValue2 = 'Select';
                              newdropdownValue3 = 'Select';
                              texto1 = 'I m already a customer';
                              texto2 = 'I m not a customer';
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const widgetOneEdit(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit,
                            color: Colors.white, size: 30),
                      ),
                    ),
                    //FIM CONTAINER DE EDIÇÃO DO DROPDOWN 1
                  ],
                ),
                //INICIO TEMPLATE DROPDOWN 2
                // dropDown2(),
                dropdownValue == 'I m already a customer'
                    ? dropDown2()
                    : Container(),

                newdropdownValue == 'Support' ? dropDown3() : Container(),

                newdropdownValue2 == 'Ticket' ? dropDown4() : Container(),

                // dropDown3(),
                //RECOMENDÇÕES GERAL DO TEMPLATE DE RECOMENDAÇÕES
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20, left: 15, top:20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '# Buttons',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            textAlign: TextAlign.end,
                            '1',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 50,
                          width: 255,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            children: [
                              Image.asset(
                                'lib/image/icon.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                texto1,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_forever,
                            color: Color(0xffF14D4D),
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ButtonSettings(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit,
                              color: Colors.white, size: 30),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            textAlign: TextAlign.end,
                            '2',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          height: 50,
                          width: 255,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'lib/image/icon.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                texto2,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_forever,
                            color: Color(0xffF14D4D),
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ButtonSettings(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit,
                              color: Colors.white, size: 30),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),

                //FIM DAS RECOMENDAÇÕES
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dropDown2() {
    return Padding(
      padding: const EdgeInsets.only(top:15),
      child: Row(
        //INICIO TEMPLATE DROPDOWN 2
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              textAlign: TextAlign.end,
              '2',
              style: TextStyle(
                  fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 58,
              child: DropdownButtonFormField<String>(
                padding: const EdgeInsets.only(left: 10),
                decoration: const InputDecoration(
                  labelText: 'Select',
                  labelStyle: TextStyle(color: Color(0xff46964a), fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                    borderSide: BorderSide(color: Color(0xffffffffff)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffffffffff)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff46964a),
                  ),
                ),
                value: newdropdownValue,
                dropdownColor: const Color(0xff424242),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff46964a),
                ),
                isExpanded: true,
                elevation: 16,
                style: const TextStyle(
                  color: Colors.white,
                ),
                onChanged: (value) {
                  setState(
                    () {
                      newdropdownValue = value!;
                      print(value);
                    },
                  );
                },
                items: _newList.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ), //FIM DO EXPANDED DROPDOWN 2
          // INICIO DO CONTAINER DE EDIÇÃO DO DROPDOWN 2
          Container(
            child: IconButton(
              onPressed: () {
                setState(() {
                  newdropdownValue = 'Select';
                  newdropdownValue2 = 'Select';
                  newdropdownValue3 = 'Select';
                });
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const widgetSupportEdit(),
                  ),
                );
              },
              icon: const Icon(Icons.edit, color: Colors.white, size: 30),
            ),
          ),
    
          //FIM CONTAINER DE EDIÇÃO DO DROPDOWN 2
        ],
      ),
    );
  }

  Widget dropDown3() {
    return Padding(
      padding: const EdgeInsets.only(top:15),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              textAlign: TextAlign.end,
              '3',
              style: TextStyle(
                  fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 58,
              child: DropdownButtonFormField<String>(
                padding: const EdgeInsets.only(left: 10),
                decoration: const InputDecoration(
                  labelText: 'Select',
                  labelStyle: TextStyle(color: Color(0xff46964a), fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                    borderSide: BorderSide(color: Color(0xffffffffff)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffffffffff)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff46964a),
                  ),
                ),
                value: newdropdownValue2,
                dropdownColor: const Color(0xff424242),
                icon: const Icon(Icons.arrow_drop_down, color: Color(0xff46964a)),
                isExpanded: true,
                elevation: 16,
                style: const TextStyle(
                  color: Colors.white,
                ),
                onChanged: (String? value) {
                  setState(
                    () {
                      newdropdownValue2 = value!;
                      print(newdropdownValue2);
                    },
                  );
                },
                items: _newList2.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ), //FIM DO EXPANDED DROPDOWN 3
          //INICIO CONTAINER DE EDIÇÃO DROPDOWN 3
          Container(
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      newdropdownValue = 'Support';
                      newdropdownValue2 = 'Select';
                      texto1 = 'I m already a customer';
                      texto2 = 'I m not a customer';
                    });
                    print('Ícone clicado!');
                  },
                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 30,
                  ))),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const widgetSupportEdit(),
                  ),
                );
              },
              icon: const Icon(Icons.edit, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }

  Widget dropDown4() {
    return Padding(
      padding: const EdgeInsets.only(top:15),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              textAlign: TextAlign.end,
              '4',
              style: TextStyle(
                  fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 58,
              child: DropdownButtonFormField<String>(
                padding: const EdgeInsets.only(left: 10),
                decoration: const InputDecoration(
                  labelText: 'Select',
                  labelStyle: TextStyle(color: Color(0xff46964a), fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                    borderSide: BorderSide(color: Color(0xffffffffff)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffffffffff)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff46964a),
                  ),
                ),
                value: newdropdownValue3,
                dropdownColor: const Color(0xff424242),
                icon: const Icon(Icons.arrow_drop_down, color: Color(0xff46964a)),
                isExpanded: true,
                elevation: 16,
                style: const TextStyle(
                  color: Colors.white,
                ),
                onChanged: (String? value) {
                  setState(
                    () {
                      newdropdownValue3 = value!;
                      print(newdropdownValue3);
                    },
                  );
                },
                items: _newList3.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ), //FIM DO EXPANDED DROPDOWN 3
          //INICIO CONTAINER DE EDIÇÃO DROPDOWN 3
          Container(
              child: IconButton(
                  onPressed: () {
                    print('teste');
                    setState(() {
                      newdropdownValue3 = 'Select';
                    });
                  },
                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 30,
                  ))),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const widgetSupportEdit(),
                  ),
                );
              },
              icon: const Icon(Icons.edit, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
