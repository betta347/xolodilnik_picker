// import 'package:dawa_app/assets/colors/app_colors.dart';
// import 'package:flutter/cupertino.dart';
//
// class WCupertinoSwitch extends StatefulWidget {
//   final Color activeColor;
//   final Color inactiveColor;
//   final double height;
//   final double width;
//   final bool isSwitched;
//   final double padding;
//
//   /// switching duration in milliseconds
//   final int switchingDuration;
//   final ValueChanged<bool> onChange;
//
//   const WCupertinoSwitch({
//     required this.onChange,
//     this.isSwitched = false,
//     this.width = 40,
//     this.padding = 2,
//     this.height = 24,
//     this.activeColor = mainButtonColor,
//     this.inactiveColor = geyser,
//     this.switchingDuration = 200,
//     Key? key,
//   })  : assert(width - 5 >= height, '(Width - 5) cannot be less than height'),
//         super(key: key);
//
//   @override
//   State<WCupertinoSwitch> createState() => _WCupertinoSwitchState();
// }
//
// class _WCupertinoSwitchState extends State<WCupertinoSwitch> {
//   bool isSwitched = false;
//   bool isClicked = false;
//
//   @override
//   void didUpdateWidget(covariant WCupertinoSwitch oldWidget) {
//     isSwitched = widget.isSwitched;
//     super.didUpdateWidget(oldWidget);
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     isSwitched = widget.isSwitched;
//   }
//
//   @override
//   Widget build(BuildContext context) => Listener(
//         onPointerDown: (value) {
//           setState(() {
//             isClicked = true;
//           });
//         },
//         onPointerUp: (value) {
//           setState(() {
//             isClicked = false;
//           });
//         },
//         onPointerCancel: (value) {
//           setState(() {
//             isClicked = false;
//           });
//         },
//         child: GestureDetector(
//           onTap: () {
//             isSwitched = !isSwitched;
//             widget.onChange(isSwitched);
//             setState(() {});
//           },
//           onHorizontalDragStart: (details) {
//             // setState(() {
//             //   if (details.localPosition.dx < widget.height - 4) {
//             //     isSwitched = false;
//             //     widget.onChange(isSwitched);
//             //   } else {
//             //     isSwitched = true;
//             //     widget.onChange(isSwitched);
//             //   }
//             //   isClicked = true;
//             // });
//           },
//           onHorizontalDragUpdate: (details) {
//             // setState(() {
//             //   if (details.localPosition.dx < widget.height - 4) {
//             //     isSwitched = false;
//             //     widget.onChange(isSwitched);
//             //   } else {
//             //     isSwitched = true;
//             //     widget.onChange(isSwitched);
//             //   }
//             //
//             //   isClicked = true;
//             // });
//           },
//           onHorizontalDragEnd: (details) {
//             isClicked = false;
//             isSwitched = !isSwitched;
//
//             widget.onChange(isSwitched);
//             setState(() {});
//           },
//           child: Stack(
//             alignment: Alignment.centerLeft,
//             children: [
//               AnimatedContainer(
//                 duration: Duration(milliseconds: widget.switchingDuration),
//                 width: widget.width,
//                 height: widget.height,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(widget.height / 2),
//                   color: isSwitched ? widget.activeColor : widget.inactiveColor,
//                 ),
//               ),
//               AnimatedPositioned(
//                 duration: Duration(milliseconds: widget.switchingDuration),
//                 right: isClicked && isSwitched
//                     ? widget.padding
//                     : isClicked && !isSwitched
//                         ? widget.width - (widget.height - 4 + 5) - widget.padding
//                         : isSwitched
//                             ? 2
//                             : widget.width - (widget.height - 4) - widget.padding,
//                 left: isClicked && isSwitched
//                     ? widget.width - (widget.height - 4 + 5) - widget.padding
//                     : isClicked && !isSwitched
//                         ? widget.padding
//                         : !isSwitched
//                             ? widget.padding
//                             : widget.width - (widget.height - 4) - widget.padding,
//                 child: AnimatedContainer(
//                   duration: Duration(milliseconds: widget.switchingDuration),
//                   width: widget.height - 4,
//                   height: widget.height - 4,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular((widget.height - 4) / 2),
//                     color: AppColors.white,
//                     border: Border.all(color: AppColors.black.withOpacity(0.04), width: 0.5),
//                     boxShadow: [
//                       BoxShadow(blurRadius: 1, offset: const Offset(0, 3), color: AppColors.black.withOpacity(0.06)),
//                       BoxShadow(blurRadius: 8, offset: const Offset(0, 3), color: AppColors.black.withOpacity(0.15)),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
// }
