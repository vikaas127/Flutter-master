import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/data/repositories/buyer/buyer_repository.dart';
import 'package:inventory_management/ui/components/edit_pop_up.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:provider/provider.dart';

class EditBuyerPageArgument {
  final String buyerName;
  final String description;
  final String buyerId;

  EditBuyerPageArgument({
    @required this.buyerName,
    @required this.buyerId,
    @required this.description,
  });
}

class EditBuyerPage extends StatefulWidget {
  static String routeName = '/buyerEdit';
  final String supplierName;
  final String supplierId;
  final String description;

  const EditBuyerPage(
      {Key key,
      @required this.supplierName,
      @required this.description,
      @required this.supplierId})
      : super(key: key);
  @override
  _EditBuyerPageState createState() => _EditBuyerPageState();
  static Widget wrapped(EditBuyerPageArgument supplierPageArgument) {
    return EditBuyerPage(
      supplierId: supplierPageArgument.buyerId,
      supplierName: supplierPageArgument.buyerName,
      description: supplierPageArgument.description,
    );
  }
}

class _EditBuyerPageState extends State<EditBuyerPage> {
  String _description;

  @override
  Widget build(BuildContext context) {
    final buyerRepository = context.watch<BuyerRepository>();

    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.notifications), onPressed: () {})
            ],
            leading: const BackButton(),
            centerTitle: true,
            title: const Text("Buyer Information"),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color(0xFF033CFF),
                    Color(0xFF30AAFF),
                    Color(0xFF33CFFF),
                    Colors.blue
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  LengthCountingTextField(
                    widget.supplierName,
                    label: 'SupplierName',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LengthCountingTextField(
                    widget.description,
                    label: 'Description',
                    maxLength: null,
                    onChanged: (value) {
                      setState(() {
                        _description = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 0,
          right: 0,
          child: Container(
            color: Theme.of(context).colorScheme.onPrimary,
            height: 56,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  onPressed: () {
                    EditDialog.show(
                      context,
                      onEdit: () {
                        buyerRepository.updateBuyers(
                            buyerId: widget.supplierId,
                            description: _description);
                      },
                    );
                  },
                  child: const Text('Edit'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
