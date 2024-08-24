import 'dart:io' as io;
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'dart:html' as html;

Future<void> urlFunction(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception("Could not lanuch $url");
  }
}

Future<void> cUrlFunction(String link) async {
  final Uri url = Uri.parse(link);
  if (!await launchUrl(url)) {
    throw Exception("Could not launch $url");
  }
}

Future<void> launchGmail(String email) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
  );

  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    throw 'Could not launch $emailUri';
  }
}

Future<void> launchPhoneDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> downloadResume() async {
  if (kIsWeb) {
    await _downloadResumeWeb();
  } else if (io.Platform.isAndroid || io.Platform.isIOS) {
    await _downloadResumeMobile();
  } else {
    print('Unsupported platform');
  }
}

Future<void> _downloadResumeWeb() async {
  try {
    final ByteData data =
        await rootBundle.load('assets/resume/Muniasamy_K_Resume.pdf');
    final List<int> bytes = data.buffer.asUint8List();
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "Muniasmy_K_resume.pdf")
      ..click();
    html.Url.revokeObjectUrl(url);
  } catch (e) {
    print('Error downloading resume on web: $e');
  }
}

Future<void> _downloadResumeMobile() async {
  try {
    final ByteData data =
        await rootBundle.load('assets/resume/Muniasamy_K_Resume.pdf');
    final Uint8List bytes = data.buffer.asUint8List();
    final Directory tempDir = await getTemporaryDirectory();
    final File file = io.File('${tempDir.path}/resume.pdf');
    await file.writeAsBytes(bytes, flush: true);
    await OpenFile.open(file.path);
  } catch (e) {
    print('Error downloading resume on mobile: $e');
  }
}
