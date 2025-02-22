// import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
// import 'package:book_app/Features/home/data/models/book_model/volume_info.dart';
import 'package:book_app/Features/home/presentation/manager/bestSeller_books_cubit/bset_seller_books_cubit_cubit.dart';
import 'package:book_app/Features/home/presentation/views/widgets/best_seller_view_item.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/core/widgets/custom_loading_indicator_Best_seller.dart';
import 'package:book_app/core/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BsetSellerBooksCubitCubit, BsetSellerBooksCubitState>(
      builder: (context, state) {
        if (state is BsetSellerBooksCubitSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.Books.length+1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerViewItem(
                    bookModel: state.Books[index],
                    //auther: state.Books[index].volumeInfo.authors!,
                    //price: '',
                  ),
                );
              });
        } else if (state is BsetSellerBooksCubitFailure) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showSnackBar(context, state.errMessage, Colors.red);
          });
          return Center(
              child: Text(
            "${state.errMessage}",
            style: Styles.textstyle14,
          ));
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
