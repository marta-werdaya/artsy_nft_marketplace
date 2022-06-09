import 'package:artsy_nft_marketplace/model/product_model.dart';
import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'overlay_sugestion.dart';

class SearchBar extends StatefulWidget {
  final List<ProductModel> products;
  final String hint;
  const SearchBar({
    Key? key,
    required this.products,
    required this.hint,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

final controller = TextEditingController();
List<ProductModel> productsAll = [];
final layerLink = LayerLink();
OverlayEntry? overlayEntry;
FocusNode focusNode = FocusNode();

class _SearchBarState extends State<SearchBar> {
  void searchLogic(String query, BuildContext context) {
    final suggestion = widget.products.where((product) {
      final productTitle = product.nftName.toLowerCase();
      final productSeller = product.sellerName.toLowerCase();
      final input = query.toLowerCase();

      return productTitle.contains(input) || productSeller.contains(input);
    }).toList();

    if (overlayEntry == null) {
      showOverlay(context);
    }
    setState(() {
      productsAll = suggestion;
    });
  }

  void removeEntry() {
    controller.text = '';
    overlayEntry?.remove();
    overlayEntry = null;
  }

  void showOverlay(BuildContext context) {
    OverlayState? overlayState = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    overlayEntry = OverlayEntry(
      builder: (context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
        child: CompositedTransformFollower(
          link: layerLink,
          showWhenUnlinked: false,
          offset: Offset(24, size.height - 20),
          child: OverlaySugesstion(
            products: productsAll,
            onTap: () {
              focusNode.unfocus();
              removeEntry();
            },
          ),
        ),
      ),
    );
    overlayState?.insert(overlayEntry!);
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   focusNode.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: AppSizes.p32,
          left: AppSizes.p24,
          right: AppSizes.p24,
        ),
        child: TextFormField(
          focusNode: focusNode,
          controller: controller,
          onChanged: (value) {
            if (value == '') {
              removeEntry();
            } else {
              print(value);
              searchLogic(value, context);
            }
          },
          decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
