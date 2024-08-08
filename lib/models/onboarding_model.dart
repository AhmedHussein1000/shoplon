import 'package:shoplon/utils/assets.dart';

class OnboardingModel {
  final String title;
  final String description;
  final String image;
  OnboardingModel({required this.title, required this.description, required this.image});
}
  final List<OnboardingModel> onboardingData = [
    OnboardingModel(
      image: Assets.imagesIllustrationIllustration0,
      title: "Find the item you’ve \nbeen looking for",
      description:
          "Here you’ll see rich varieties of goods, carefully classified for seamless browsing experience.",
    ),
    OnboardingModel(
      image: Assets.imagesIllustrationIllustration1,
      title: "Get those shopping \nbags filled",
      description:
          "Add any item you want to your cart, or save it on your wishlist, so you don’t miss it in your future purchases.",
    ),
    OnboardingModel(
      image: Assets.imagesIllustrationIllustration2,
      title: "Fast & secure \npayment",
      description: "There are many payment options available for your ease.",
    ),
    OnboardingModel(
      image: Assets.imagesIllustrationIllustration3,
      title: "Package tracking",
      description:
          "In particular, Shoplon can pack your orders, and help you seamlessly manage your shipments.",
    ),
    OnboardingModel(
      image: Assets.imagesIllustrationIllustration4,
      title: "Nearby stores",
      description:
          "Easily track nearby shops, browse through their items and get information about their prodcuts.",
    ),
  ];