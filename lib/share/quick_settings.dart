import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class QuickSettings extends StatefulWidget {
  @override
  _QuickSettingsState createState() => _QuickSettingsState();
}

class _QuickSettingsState extends State<QuickSettings> {
  bool isSwitched = false;
  String deliveryQuality = 'Hight';

  /* call cupertino action sheet for changing delivery quality */
  changeDeliveryQuality(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: Text('Change Music Quality'),
            cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel')
            ),
            actions: <Widget>[
              CupertinoActionSheetAction(
                onPressed: () {
                  setState(() {
                    deliveryQuality = 'HD';
                  });
                  Navigator.of(context).pop();
                },
                child: Text('HD'),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  setState(() {
                    deliveryQuality = 'High';
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Hight'),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  setState(() {
                    deliveryQuality = 'Medium';
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Medium'),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  setState(() {
                    deliveryQuality = 'Low';
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Low'),
              )
            ],
          );
        }
    );
  }


  selectSleepTime() {

  }



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Quick settings', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 15,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                   changeDeliveryQuality(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Download Quality'),
                      Text('$deliveryQuality')
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Music Language(s)'),
                    Row(
                      children: <Widget>[
                        Text('Hindi, Telgu'),
                        SizedBox(width: 5,),
                        SizedBox(
                          width: 7,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Sleep'),
                    SizedBox(width: 60,
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        DatePicker.showDateTimePicker(context,
                            showTitleActions: true,
                            onChanged: (date) {
                              print('change $date');
                            }, onConfirm: (date) {
                              print('confirm $date');
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,
                    ),),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Text('View All Settings', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12, fontWeight: FontWeight.bold),),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
