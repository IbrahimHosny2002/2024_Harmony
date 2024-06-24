import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocd/cubits/auth_cubit/auth_cubit.dart';
//import 'package:ocd/screens/home/STEPPERWEDGET/Mytimeline.dart';
import 'package:ocd/widget/home/days.dart';
import 'package:ocd/widget/home/startsurveycart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 50.0),
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is LoginSuccess) {
                return Text(
                    "Hello , ${BlocProvider.of<AuthCubit>(context).userModel!.name}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'workSans',
                    ));
              }else{
                 return Text(
                    "Hello , ${BlocProvider.of<AuthCubit>(context).userName??'Omar'}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'workSans',
                    ));
              }
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Days(),
        ),
        const SurveyCart(),
      ],
    );
  }
}
