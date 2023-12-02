import 'package:api_example/component/my_component.dart';
import 'package:api_example/cubit/home_cubit.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = HomeCubit.get(context);
    homeCubit.getBusinessNews();

    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(

          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ConditionalBuilder(

                condition: homeCubit.newsModel!=null,

                builder: (context) => ListView.separated(

                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => MyComponent.buildNews(
                        context, homeCubit.newsModel!.articles![index]),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 20,
                        ),
                    itemCount: homeCubit.newsModel!.articles!.length),
                fallback: (context) =>
                    Center(child: CircularProgressIndicator(),),
              ),
            ],
          ),
        );
      },
    );
  }
}
