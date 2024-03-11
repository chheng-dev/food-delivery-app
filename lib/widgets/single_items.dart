import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItems extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final String description;

  const SingleItems({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 4,
          ),
          child: Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(.4),
                          ),
                        ),
                        Container(
                          width: 50,
                          child: Divider(),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ ${price}',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Add"),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 8,
                                ),
                                elevation: 0,
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // void _showModalBottomAddItem(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return SizedBox(
  //         width: double.maxFinite,
  //         height: 100,
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Row(
  //                 children: [
  //                   Expanded(
  //                     child: ListTile(
  //                       title: Text(
  //                         '1 Item | Subtotal: \$${5.00}', // Removed const because of the dynamic expression
  //                         style: TextStyle(
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 20,
  //                         ),
  //                       ),
  //                       subtitle: Text(
  //                           'Extra charges may apply.'), // Removed const for consistency and typo fix
  //                     ),
  //                   ),
  //                   ElevatedButton(
  //                     style: ElevatedButton.styleFrom(
  //                       elevation: 0,
  //                       backgroundColor: Colors.redAccent,
  //                       foregroundColor: Colors.white,
  //                     ),
  //                     onPressed: () {},
  //                     child: Text(
  //                       'Order',
  //                       style: TextStyle(
  //                         fontSize: 18,
  //                         fontWeight: FontWeight.w700,
  //                       ),
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
