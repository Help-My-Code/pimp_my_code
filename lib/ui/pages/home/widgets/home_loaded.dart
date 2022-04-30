import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pimp_my_code/domain/entities/content.dart';
import 'post_card.dart';

class HomeLoaded extends StatelessWidget {
  final List<Content> publications;

  const HomeLoaded({
    Key? key,
    required this.publications,
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
              itemCount: publications.length,
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
                  title: publications[index].title,
                  post: publications[index].content,
                  images: publications[index].medias,
                  imageURL: publications[index].medias.isEmpty
                      ? 'https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg'
                      : publications[index].medias[0],
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
