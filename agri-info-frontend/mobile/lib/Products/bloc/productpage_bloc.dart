import '../../libs.dart';

class ProductpageBloc extends Bloc<ProductpageEvent, ProductpageState> {
  ProductpageBloc() : super(ProductpageInitial());

  @override
  Stream<ProductpageBloc>(ProductpageEvent event) async* {}
}
