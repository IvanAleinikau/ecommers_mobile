import 'package:ecommers_mobile/app/pages/vinyl/widgets/vinyl_widget.dart';
import 'package:ecommers_mobile/app/widgets/app_drawer.dart';
import 'package:ecommers_mobile/core/blocs/vinyl/vinyl_cubit.dart';
import 'package:ecommers_mobile/core/blocs/vinyl/vinyl_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VinylPage extends StatefulWidget {
  const VinylPage({Key? key}) : super(key: key);

  @override
  _VinylPageState createState() => _VinylPageState();
}

class _VinylPageState extends State<VinylPage> {
  late VinylCubit _cubit;

  @override
  void initState() {
    _cubit = VinylCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      body: BlocConsumer<VinylCubit, VinylState>(
        bloc: _cubit,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF7D4848)),
            );
          } else {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.60,
              ),
              itemCount: state.vinylList.length,
              itemBuilder: (context, index) {
                return VinylWidget(vinyl: state.vinylList[index]);
              },
            );
          }
        },
        listener: (context, state) {},
      ),
    );
  }
}
