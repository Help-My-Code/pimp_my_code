import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'post_card.dart';

class HomeLoaded extends StatelessWidget {
  const HomeLoaded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          GFButton(
            onPressed: () {},
            text: 'Ajouter une publication',
            // icon: Icon(Icons.add),
            shape: GFButtonShape.square,
            // type: GFButtonType.transparent,
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 28,
              itemBuilder: (context, index) {
                return PostCard(
                  onLikePressed: () {},
                  onUnlikePressed: () {},
                  onCommentaryPressed: () {},
                  codes: const [
                    '''
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: MaterialButton(
              padding: const EdgeInsets.all(15),
              elevation: 0,
              child: Icon(
                Icons.arrow_back,
                color: widget.dark ? Colors.white : Colors.black,
                size: 25,
              ),
              color: widget.dark ? Colors.black12 : Colors.white70,
              highlightElevation: 0,
              minWidth: double.minPositive,
              height: double.minPositive,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        )
                        ''',
                  ],
                  title: 'Je suis totalement perdu !!!!',
                  post:
                      "On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).",
                  images: const [
                    'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
                    'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
                    'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
                    'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
                    'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
                  ],
                  imageURL:
                      'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg',
                  username: 'Benjamin Raynal',
                  date: 'Il y a 5 minutes',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
