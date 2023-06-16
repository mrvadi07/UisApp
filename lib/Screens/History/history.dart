import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:uisapp/Api/Model_View/get_all_form_view_model.dart';
import 'package:uisapp/Controller/get_controler.dart';
import '../../Api/Model/get_all_form_response_model.dart';
import '../../Const/commonElevetedbutton.dart';
import '../../Const/decoration.dart';
import '../../Const/icon_button.dart';
import '../../Const/textstyle.dart';
import 'package:uisapp/Api/api_response.dart' as status;
import '../HomeScreen/form.dart';

class History1 extends StatefulWidget {
  const History1({Key? key}) : super(key: key);
  @override
  State<History1> createState() => _History1State();
}

class _History1State extends State<History1> {
  // List title1 = [
  //   "Jane Cooper",
  //   "Wade Warren",
  //   "Esther Howard",
  //   "Brooklyn Simmons",
  //   "Jenny Wilson",
  //   "Guy Hawkins",
  //   "Albert Flores",
  //   "Ralph Edward",
  //   "Annette Black"
  // ];
  GetC name = Get.put(GetC());
  GetAllFormModel getAllFormModel = Get.put(GetAllFormModel());
  @override
  void initState() {
    getAllFormModel.getAllFormModel();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 2.6.w),
          child: buildIconButton(() {
            // controller.setCount(1);
          }),
        ),
        title: Text("History", style: kblack14w100),
      ),
      body: GetBuilder<GetAllFormModel>(
        builder: (controller) {
          if (controller.ApiResponseGetAllForm.status ==
              status.Status.COMPLETE) {
            GetAllFormsResponseModel responseModel =
                controller.ApiResponseGetAllForm.data;
            return SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 1.5.h),
                      Column(
                        children: List.generate(
                          responseModel.data.length,
                          (index) => Container(
                            height: 7.5.h,
                            width: 90.w,
                            margin: EdgeInsets.symmetric(vertical: 0.5.h),
                            decoration: bWhiteShade10grey,
                            child: Center(
                              child: ListTile(
                                title: Text(
                                  responseModel.data[index].deceasedName,
                                  style: kblack10,
                                ),
                                subtitle: Row(
                                  children: [
                                    const Text('Date of Details'),
                                    SizedBox(width: 2.w),
                                    Text("26-03-2023", style: kblack10),
                                  ],
                                ),
                                trailing:
                                    buildElevatedButton1("View Details", () {
                                  Get.to(const FormUi());
                                }),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else if (controller.ApiResponseGetAllForm.status ==
              status.Status.LOADING) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.ApiResponseGetAllForm.status ==
              status.Status.LOADING) {
            return const Center(child: Text("ERROR"));
          } else {
            return const Center(child: Text("Something went wrong"));
          }
        },
      ),
    );
  }
}
