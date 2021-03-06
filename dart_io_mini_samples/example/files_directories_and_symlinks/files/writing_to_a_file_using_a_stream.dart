// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Use the File `openWrite()` method to create a new IOSink for a file, to
/// write to the file a little at a time.
/// To append to the file, set the `mode` argument to `FileMode.APPEND`
/// (it defaults to `FileMode.WRITE`).

import 'dart:io';

main() {
  var file = new File('file.txt');
  var sink = file.openWrite();
  sink.write('FILE ACCESSED ${new DateTime.now()}\n');

  // Close the IOSink to free system resources.
  sink.close();
}
