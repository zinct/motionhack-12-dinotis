import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/features/home/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed(ROUTER.PROFILE),
            icon: Icon(Icons.person),
          )
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFDDDDDD),
                          ),
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello World"),
                            Text("Hello World"),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
