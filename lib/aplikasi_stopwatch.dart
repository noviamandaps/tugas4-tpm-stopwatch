import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class AplikasiStopwatch extends StatefulWidget {
  @override
  _AplikasiStopwatchState createState() => _AplikasiStopwatchState();
}

class _AplikasiStopwatchState extends State<AplikasiStopwatch>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Stopwatch _stopwatch = Stopwatch();
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 50),
    )..addListener(() {
        setState(() {});
      });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    _stopwatch.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _stopwatch.elapsed.toString().substring(0, 10),
              style: TextStyle(fontSize: 40.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_isRunning) {
                        _isRunning = false;
                        _stopwatch.stop();
                        _controller.stop();
                      } else {
                        _isRunning = true;
                        _stopwatch.start();
                        _controller.repeat();
                      }
                    });
                  },
                  child: Text(_isRunning ? 'Stop' : 'Start'),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _stopwatch.reset();
                      _isRunning = false;
                    });
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
