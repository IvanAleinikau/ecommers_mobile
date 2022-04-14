import 'package:ecommers_mobile/app/pages/acoustics/widgets/acoustics_widget.dart';
import 'package:ecommers_mobile/app/widgets/app_drawer.dart';
import 'package:ecommers_mobile/core/blocs/acoustics_bloc/acoustics_cubit.dart';
import 'package:ecommers_mobile/core/blocs/acoustics_bloc/acoustics_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AcousticsPage extends StatefulWidget {
  const AcousticsPage({Key? key}) : super(key: key);

  @override
  _AcousticsPageState createState() => _AcousticsPageState();
}

class _AcousticsPageState extends State<AcousticsPage> {
  late AcousticsCubit _cubit;

  @override
  void initState() {
    _cubit = AcousticsCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      body: BlocConsumer<AcousticsCubit, AcousticsState>(
        bloc: _cubit,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
              ),
              itemCount: state.acousticsList.length,
              itemBuilder: (context, index) {
                return AcousticsWidget(acoustics: state.acousticsList[index]);
              },
            );
          }
        },
        listener: (context, state) {},
      ),
    );
  }
}
