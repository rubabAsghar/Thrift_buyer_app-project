
import '../../const/seller const/color.dart';
import '../../const/seller const/const.dart';
import 'normal_text.dart';

Widget OurButton({title , color = purpleColor , onPress}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        primary: color,
        padding: EdgeInsets.all(12),
      ),
      onPressed: onPress,
      child: Normaltext(
          text: title,
          size: 16.0));
}