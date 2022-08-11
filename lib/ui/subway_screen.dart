import 'package:flutter/material.dart';
import 'package:seoul_subway/model/subway_arrival.dart';
import 'package:seoul_subway/view_model/subway_screen_view_model.dart';
import 'package:provider/provider.dart';

class SubWayScreen extends StatefulWidget {
  const SubWayScreen({Key? key}) : super(key: key);

  @override
  State<SubWayScreen> createState() => _SubWayScreenState();
}

class _SubWayScreenState extends State<SubWayScreen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SubwayScreenViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('서울 지하철 실시간 도착정보'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 15, 5, 10),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        viewModel.fetchArrivalLists(_textController.text);
                        _textController.clear();
                      });
                    },
                    child: const Icon(Icons.search),
                  ),
                  hintText: '검색',
                  hintStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surfaceVariant,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: viewModel.arrivalList.map((SubwayArrival arrivalList) {
                  return Column(
                    children: [
                      Text(arrivalList.trainLineNm),
                      Text(arrivalList.arvlMsg2),
                      const Divider(),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
