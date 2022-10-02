import 'package:app5/components/Button/yb_btn.dart';
import 'package:app5/components/Text/text_styles.dart';
import 'package:app5/components/Text/yb_text.dart';
import 'package:app5/modules/basic/form/form_widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class FormWidgetScreen extends StatelessWidget {
  const FormWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.put(FormWidgetController());
    return Scaffold(
      appBar: AppBar(
        title: const YbText('Form Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const YbText(
            'Example Form',
            type: YbTextType.titleLarge,
          ),
          FormBuilder(
            key: c.formKey,
            child: Column(
              children: [
                const SizedBox(height: 15),
                FormBuilderTextField(
                  name: 'name',
                  decoration: const InputDecoration(labelText: 'Full Name'),
                ),
                FormBuilderTextField(
                  name: 'password',
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
                FormBuilderTextField(
                  name: 'age',
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
                FormBuilderDropdown<String>(
                  name: 'gender',
                  decoration: const InputDecoration(
                    labelText: 'Gender',
                    hintText: 'Select Gender',
                  ),
                  items: c.genderOptions
                      .map(
                        (gender) => DropdownMenuItem(
                          alignment: AlignmentDirectional.centerStart,
                          value: gender,
                          child: Text(gender),
                        ),
                      )
                      .toList(),
                  valueTransformer: (val) => val?.toString(),
                ),
                FormBuilderDateTimePicker(
                  name: 'dob',
                  initialEntryMode: DatePickerEntryMode.calendar,
                  initialValue: DateTime.now(),
                  inputType: InputType.both,
                  decoration: InputDecoration(
                    labelText: 'DOB',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        c.clearValue('dob');
                      },
                    ),
                  ),
                  initialTime: const TimeOfDay(hour: 8, minute: 0),
                ),
                FormBuilderDateRangePicker(
                  name: 'date_range',
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2030),
                  decoration: InputDecoration(
                    labelText: 'Date Range',
                    helperText: 'Helper text',
                    hintText: 'Hint text',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        c.clearValue('date_range');
                      },
                    ),
                  ),
                ),
                FormBuilderSlider(
                  name: 'slider',
                  min: 0.0,
                  max: 10.0,
                  initialValue: 7.0,
                  divisions: 20,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.pink[100],
                  decoration: const InputDecoration(
                    labelText: 'Number of things',
                  ),
                ),
                FormBuilderRangeSlider(
                  name: 'range_slider',
                  min: 0.0,
                  max: 100.0,
                  initialValue: const RangeValues(4, 7),
                  divisions: 20,
                  activeColor: Colors.blue,
                  inactiveColor: Colors.pink[100],
                  decoration: const InputDecoration(labelText: 'Price Range'),
                ),
                FormBuilderRadioGroup<String>(
                  decoration: const InputDecoration(
                    labelText: 'My chosen language',
                  ),
                  initialValue: null,
                  separator: const SizedBox(
                    width: 10,
                  ),
                  name: 'best_language',
                  options: ['Dart', 'Kotlin', 'Java', 'Swift', 'Objective-C']
                      .map(
                        (lang) => FormBuilderFieldOption(
                          value: lang,
                          child: Text(lang),
                        ),
                      )
                      .toList(growable: false),
                  controlAffinity: ControlAffinity.leading,
                  orientation: OptionsOrientation.vertical,
                ),
                FormBuilderCheckboxGroup<String>(
                  activeColor: Colors.blue,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      labelText: 'The language of my people'),
                  name: 'languages',
                  // initialValue: const ['Dart'],
                  options: const [
                    FormBuilderFieldOption(value: 'Dart'),
                    FormBuilderFieldOption(value: 'Kotlin'),
                    FormBuilderFieldOption(value: 'Java'),
                    FormBuilderFieldOption(value: 'Swift'),
                    FormBuilderFieldOption(value: 'Objective-C'),
                  ],

                  separator: const SizedBox(
                    width: 10.0,
                  ),
                ),
                FormBuilderFilterChip<String>(
                  decoration: const InputDecoration(
                      labelText: 'The language of my people'),
                  name: 'languages_filter',
                  spacing: 4.0,
                  selectedColor: Colors.blue,
                  options: const [
                    FormBuilderChipOption(
                      value: 'Dart',
                    ),
                    FormBuilderChipOption(
                      value: 'Kotlin',
                    ),
                    FormBuilderChipOption(
                      value: 'Java',
                    ),
                    FormBuilderChipOption(
                      value: 'Swift',
                    ),
                    FormBuilderChipOption(
                      value: 'Objective-C',
                    ),
                  ],
                ),
                FormBuilderChoiceChip<String>(
                  decoration: const InputDecoration(
                      labelText:
                          'Ok, if I had to choose one language, it would be:'),
                  name: 'languages_choice',
                  initialValue: 'Dart',
                  selectedColor: Colors.red,
                  spacing: 4.0,
                  options: const [
                    FormBuilderChipOption(
                      value: 'Dart',
                      avatar: CircleAvatar(child: Text('D')),
                    ),
                    FormBuilderChipOption(
                      value: 'Kotlin',
                      avatar: CircleAvatar(child: Text('K')),
                    ),
                    FormBuilderChipOption(
                      value: 'Java',
                      avatar: CircleAvatar(child: Text('J')),
                    ),
                    FormBuilderChipOption(
                      value: 'Swift',
                      avatar: CircleAvatar(child: Text('S')),
                    ),
                    FormBuilderChipOption(
                      value: 'Objective-C',
                      avatar: CircleAvatar(child: Text('O')),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FormBuilderCheckbox(
                  name: 'accept_terms',
                  activeColor: Colors.blue,
                  initialValue: false,
                  title: RichText(
                    text: TextSpan(
                      style: TextStyles(context).getBodyStyle(),
                      children: const [
                        TextSpan(
                          text: 'I have read and agree to the ',
                        ),
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          YbButton(
            child: const YbText('Submit'),
            onPressed: () {
              c.submitForm();
            },
          ),
          YbButton(
            onPressed: () {
              c.resetForm();
            },
            type: YbButtonType.outline,
            child: const YbText('Reset'),
          ),
        ],
      ),
    );
  }
}
