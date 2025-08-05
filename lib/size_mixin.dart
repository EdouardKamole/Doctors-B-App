import 'size_config.dart';

mixin SizeMixin {
  double getRelativeHeight(double percentage) {
    return SizeConfig.getRelativeHeight(percentage);
  }

  double getRelativeWidth(double percentage) {
    return SizeConfig.getRelativeWidth(percentage);
  }

  double getProportionateScreenHeight(double inputHeight) {
    return SizeConfig.getProportionateScreenHeight(inputHeight);
  }

  double getProportionateScreenWidth(double inputWidth) {
    return SizeConfig.getProportionateScreenWidth(inputWidth);
  }
}