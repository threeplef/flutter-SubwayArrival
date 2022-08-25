import 'package:flutter/material.dart';
import 'package:seoul_subway/ui/subway_screen_view_model.dart';
import 'package:seoul_subway/debounce.dart';
import 'package:provider/provider.dart';

class SubWayScreen extends StatefulWidget {
  const SubWayScreen({Key? key}) : super(key: key);

  @override
  State<SubWayScreen> createState() => _SubWayScreenState();
}

class _SubWayScreenState extends State<SubWayScreen> {
  final _textController = TextEditingController();

  final _debounce = Debounce(milliseconds: 500);

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
        title: const Center(child: Text('서울 지하철 실시간 도착정보')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: TextField(
                controller: _textController,
                onChanged: _debounce.run(() => setState(() {
                      viewModel.fetchArrivalLists(_textController.text);
                    })),
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
                  hintText: '🚆  지하철 역 검색',
                  hintStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.surfaceVariant,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Text(
                          '[ ${viewModel.arrivalList.statnNm} (${viewModel.arrivalList.updnLine}) ]',
                          style: const TextStyle(fontSize: 16)),
                      Text(viewModel.arrivalList.trainLineNm,
                          style: const TextStyle(fontSize: 15)),
                      const SizedBox(height: 5),
                      Text(viewModel.arrivalList.arvlMsg2,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text('🚇 ${viewModel.arrivalList.arvlMsg3}'),
                      const Divider(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
