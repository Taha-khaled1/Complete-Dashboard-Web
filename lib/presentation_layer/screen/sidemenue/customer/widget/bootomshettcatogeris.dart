import 'package:dashboard/application_layer/sherdfunction/valid.dart';
import 'package:dashboard/domain_layer/controller/catogerycontroller.dart';
import 'package:dashboard/presentation_layer/Infowidget/models/device_info.dart';
import 'package:dashboard/presentation_layer/resource/mangertextstyel.dart';
import 'package:dashboard/presentation_layer/widget/custombutten.dart';
import 'package:dashboard/presentation_layer/widget/customdialogforcatogery.dart';
import 'package:dashboard/presentation_layer/widget/customtextfild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../resource/mangecolor.dart';
import 'package:image_picker/image_picker.dart';

final ImagePicker picker = ImagePicker();
void bottomshetforCatogeris(
    DeviceInfo deviceInfo, TextTheme textTheme, String text) {
  final CatogeryControllerImp catogeryControllerImp =
      Get.put(CatogeryControllerImp());
  final GlobalKey<FormState> formkey = GlobalKey();
  Get.bottomSheet(
    backgroundColor: MangerColor.bgColor,
    SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        width: 900,
        child: Form(
          key: formkey,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const SizedBox(height: 20),
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 500,
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Textfeild(
                          width: 500,
                          onsaved: (value) {
                            catogeryControllerImp.onsavednamecatogery(value);
                          },
                          titel: 'Catogery name english',
                          valid: (val) {
                            return validInput(val!, 4, 100, 'name');
                          },
                        ),
                        Textfeild(
                          width: 500,
                          onsaved: (value) {
                            catogeryControllerImp.onsavednamecatogeryar(value);
                          },
                          titel: 'Catogery name Arabic',
                          valid: (val) {
                            return validInput(val!, 4, 100, 'name');
                          },
                        ),
                        GetBuilder<CatogeryControllerImp>(
                          builder: (controller) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Buttenwidget(
                                  width: 170,
                                  haigh: 55,
                                  color: MangerColor.kTextColorteal,
                                  text: 'Uplod image',
                                  press: () {
                                    customdialog(
                                        textTheme, catogeryControllerImp);
                                  },
                                ),
                                if (controller.x == true)
                                  SizedBox(
                                    width: 250,
                                    child: ListTile(
                                      title: Text(
                                        'The photo selected',
                                        style: MangerTextstyel.subtitalcustom(
                                            textTheme),
                                      ),
                                      trailing: const Icon(
                                        Icons.done,
                                        size: 30,
                                        color: MangerColor.kTextColorgreen,
                                      ),
                                    ),
                                  )
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Buttenwidget(
                    width: 500,
                    haigh: 70,
                    color: MangerColor.kTextColorteal,
                    text: 'Add Now',
                    press: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        catogeryControllerImp.insertnewcatogery();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 7,
                  )
                ],
              ),
              Positioned(
                top: 0,
                left: 10,
                child: Text(
                  text,
                  style: textTheme.headline6,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
