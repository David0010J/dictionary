import 'package:flutter/material.dart';
import 'package:dictionary/style/styledText.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<Map<String, dynamic>> _allwords = [
    {"id":1, "name": "កណ្តេង ( ន. )", "translate": "ឈ្មោះ ភមរជាតិ មួយ ប្រភេទ ពួក ម្រោម មាន មេ ធំ ជាង ម្រោម បន្តិច, មិន ចេះ ទិច, ត្រឹប យក ដម និង លំអង ផ្កា ដូច ម្រោម ធើ្វ សំបុក នៅក្នុង រន្ធ ដំបូក មាន ជ័រ ពណ៌ ស ឬ លឿង រឹង ដូច ជ័រចុង ហៅថា ជ័រ កណ្តេង (មាន ដោយ ស្រុក) ។"},
    {"id":2, "name": "កណ្តេង ( ន. )", "translate": "ធូលី កករ នៅ បាត ក្អម ជាដើម ។"},
    {"id":3, "name": "កណ្តេង ( ន. )", "translate": "្មោះ សត្វ ល្អិត មួយ ពួក ក្នុង ពួក កណ្ដាច់ ចេះ ពូន ដី ឱយ កើត ជា ដំបូក ជា ត្រោក បាន ។"},
    {"id":4, "name": "កណ្តេង ( ន. )", "translate": "ប្រដាប់ ធ្វើ ដោយ ដែក មាន ផ្លែ ខុប សម្រាប់ ច្រូត ស្រូវ, ច្រូត ស្មៅ ជាដើម ។"},
    {"id":5, "name": "កណ្ដៀខ្មូត (ន.)", "translate": "ឈ្មោះ ភមរជាតិ មួយ ប្រភេទ ពួក ម្រោម មាន មេ ធំ ជាង ម្រោម បន្តិច, មិន ចេះ ទិច, ត្រឹប យក ដម និង លំអង ផ្កា ដូច ម្រោម ធើ្វ សំបុក នៅក្នុង រន្ធ ដំបូក មាន ជ័រ ពណ៌ ស ឬ លឿង រឹង ដូច ជ័រចុង ហៅថា ជ័រ កណ្តេង (មាន ដោយ ស្រុក) ។"},
    {"id":6, "name": "កណ្តេង ( ន. )", "translate": "ឈ្មោះ ភមរជាតិ មួយ ប្រភេទ ពួក ម្រោម មាន មេ ធំ ជាង ម្រោម បន្តិច, មិន ចេះ ទិច, ត្រឹប យក ដម និង លំអង ផ្កា ដូច ម្រោម ធើ្វ សំបុក នៅក្នុង រន្ធ ដំបូក មាន ជ័រ ពណ៌ ស ឬ លឿង រឹង ដូច ជ័រចុង ហៅថា ជ័រ កណ្តេង (មាន ដោយ ស្រុក) ។"},
    {"id":7, "name": "កណ្តេង ( ន. )", "translate": "ឈ្មោះ ភមរជាតិ មួយ ប្រភេទ ពួក ម្រោម មាន មេ ធំ ជាង ម្រោម បន្តិច, មិន ចេះ ទិច, ត្រឹប យក ដម និង លំអង ផ្កា ដូច ម្រោម ធើ្វ សំបុក នៅក្នុង រន្ធ ដំបូក មាន ជ័រ ពណ៌ ស ឬ លឿង រឹង ដូច ជ័រចុង ហៅថា ជ័រ កណ្តេង (មាន ដោយ ស្រុក) ។"},
    {"id":8, "name": "កណ្តេង ( ន. )", "translate": "ឈ្មោះ ភមរជាតិ មួយ ប្រភេទ ពួក ម្រោម មាន មេ ធំ ជាង ម្រោម បន្តិច, មិន ចេះ ទិច, ត្រឹប យក ដម និង លំអង ផ្កា ដូច ម្រោម ធើ្វ សំបុក នៅក្នុង រន្ធ ដំបូក មាន ជ័រ ពណ៌ ស ឬ លឿង រឹង ដូច ជ័រចុង ហៅថា ជ័រ កណ្តេង (មាន ដោយ ស្រុក) ។"},
    {"id":9, "name": "កណ្តេង ( ន. )", "translate": "ឈ្មោះ ភមរជាតិ មួយ ប្រភេទ ពួក ម្រោម មាន មេ ធំ ជាង ម្រោម បន្តិច, មិន ចេះ ទិច, ត្រឹប យក ដម និង លំអង ផ្កា ដូច ម្រោម ធើ្វ សំបុក នៅក្នុង រន្ធ ដំបូក មាន ជ័រ ពណ៌ ស ឬ លឿង រឹង ដូច ជ័រចុង ហៅថា ជ័រ កណ្តេង (មាន ដោយ ស្រុក) ។"},
    {"id":10, "name": "កណ្តេង ( ន. )", "translate": "ឈ្មោះ ភមរជាតិ មួយ ប្រភេទ ពួក ម្រោម មាន មេ ធំ ជាង ម្រោម បន្តិច, មិន ចេះ ទិច, ត្រឹប យក ដម និង លំអង ផ្កា ដូច ម្រោម ធើ្វ សំបុក នៅក្នុង រន្ធ ដំបូក មាន ជ័រ ពណ៌ ស ឬ លឿង រឹង ដូច ជ័រចុង ហៅថា ជ័រ កណ្តេង (មាន ដោយ ស្រុក) ។"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _allwords.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            key: ValueKey(_allwords[index]["id"]),
            // color: Colors.blueAccent,
            elevation: 2,
            child: ListTile(
              leading: Text(
                _allwords[index]["id"].toString(),
                style: const TextStyle(fontFamily: 'Chenla', fontSize: 12),
              ),
              title: StyledText(_allwords[index]['name']),
              subtitle: StyledSubText(_allwords[index]['translate']),
            ),
            // margin:,
          );
        },
      ),
    );
  }
}