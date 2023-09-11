import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});
  static const items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              children: [
                const Row(children: [
                  Text("Personal Info",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ]),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'First name',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Last name',
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Birthday', helperText: 'DD/MM/YYYY'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Social Security',
                            helperText: '### - ## - ####'),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                const Row(children: [
                  Text("Residence address",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ]),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Address',
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: 'City'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: DropdownButtonFormField(
                      hint: const Text('State'),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(),
                      ),
                      isExpanded: true,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black54),
                          ),
                        );
                      }).toList(),

                      onChanged: (_) {},
                    )),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: 'ZIP Code'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: DropdownButtonFormField(
                      hint: const Text('Country'),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(),
                      ),
                      isExpanded: true,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black54),
                          ),
                        );
                      }).toList(),

                      onChanged: (_) {},
                    )),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
