import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ZOOM()));
}

class ZOOM extends StatefulWidget {
  const ZOOM({super.key});

  @override
  State<ZOOM> createState() => _ZOOMState();
}

class _ZOOMState extends State<ZOOM> {
  @override
  Widget build(BuildContext context) {
    List<String> ImageList = [
      "https://imgs.search.brave.com/O_GwkUKvX7OJZc8IVXqPWMnsMw8ZAcK1xDU-ZQKt-sI/rs:fit:475:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5w/WnRJV2tBcXVSZWFN/cG45ZHktYmh3SGFI/WiZwaWQ9QXBp",
      "https://imgs.search.brave.com/-ilX0K2z9uZIuKUiw7KGa1OBuaF1Wq7zDHyGMgykgbU/rs:fit:736:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5Q/SGwyM1d5cWxJNGU5/bFJsTmZQcEVBSGFF/eCZwaWQ9QXBp",
      "https://imgs.search.brave.com/fBLjOc-mRU9V-fewETJS09ezuv8avMS16RwBMBM1eJ4/rs:fit:691:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5x/eTB4RzhWM1dCbHZ3/cE56MGVXMGNnSGFG/RiZwaWQ9QXBp"
    ];
    int InitialPage = 0;
    CarouselController _controller = CarouselController();
    return Scaffold(
      body:  Container(
        child: Column(
          children: [
            CarouselSlider(
                carouselController: _controller,
                items: ImageList.map((ImageList) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InteractiveViewer(child:Image.network(ImageList) ),
                    );
                  });
                }).toList(),
                options: CarouselOptions(
                  height: 300.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      InitialPage = index;
                    });}
        ),
      ),
          ]))
    );
  }
}
