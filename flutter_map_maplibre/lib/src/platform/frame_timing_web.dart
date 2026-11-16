import 'dart:js_interop';
import 'dart:js_interop_unsafe';

/// Whether Flutter shows its frames one browser frame after it builds them.
///
/// Multi-threaded skwasm, which a wasm build uses on a cross-origin isolated
/// page, draws Flutter's frames on a web worker and shows a frame in the
/// browser frame after the one it was built in. MapLibre GL JS draws a camera
/// change made in a pointer event in the coming browser frame, and a change
/// made while Flutter builds a frame in the browser frame after that.
bool get framesShownOneBrowserFrameLate =>
    const bool.fromEnvironment('dart.tool.dart2wasm') &&
    (globalContext['crossOriginIsolated'] as JSBoolean?)?.toDart == true;
