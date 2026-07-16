// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:go_router/go_router.dart';
// import 'package:insight_news/Core/Services/local_storage.dart';

// class SplashView extends StatefulWidget {
//   const SplashView({super.key});

//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView> {
//   bool isUpload = false;
//   @override
//   void initState() {
//     super.initState();
//     AppLocal.getCashedData(AppLocal.isUploadKey).then((value) {
//       setState(() {
//         isUpload = value ?? false;
//       });
//     });
//     Future.delayed(Duration(seconds: 4), () {
//       if (mounted) {
//         isUpload ? context.go('/navbar') : context.go('/Upload');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).highlightColor,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/978c4b78d5e31c5f367fb09c879ca2de-transformed 1.png',

//                 color: Theme.of(context).canvasColor,
//               ),

//               Gap(20),
//               Text(
//                 ' Insights News',
//                 style: Theme.of(context).textTheme.displayLarge,
//               ),
//               Gap(20),
//               Text(
//                 'Stay Informed, Stay Updated',
//                 style: Theme.of(context).textTheme.displaySmall?.copyWith(
//                   fontSize: 18,
//                   color: Theme.of(context).canvasColor,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
