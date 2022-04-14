import 'package:ecommers_mobile/app/pages/accessories/widgets/accessories_widget.dart';
import 'package:ecommers_mobile/app/widgets/app_drawer.dart';
import 'package:ecommers_mobile/core/blocs/accessories/accessories_cubit.dart';
import 'package:ecommers_mobile/core/blocs/accessories/accessories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccessoriesPage extends StatefulWidget {
  const AccessoriesPage({Key? key}) : super(key: key);

  @override
  _AccessoriesPageState createState() => _AccessoriesPageState();
}

class _AccessoriesPageState extends State<AccessoriesPage> {
  late AccessoriesCubit _cubit;

  @override
  void initState() {
    _cubit = AccessoriesCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      body: BlocConsumer<AccessoriesCubit, AccessoriesState>(
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
                childAspectRatio: 0.55,
              ),
              itemCount: state.accessoriesList.length,
              itemBuilder: (context, index) {
                return AccessoriesWidget(accessories: state.accessoriesList[index]);
              },
            );
          }
        },
        listener: (context, state) {},
      ),
    );
  }
}
