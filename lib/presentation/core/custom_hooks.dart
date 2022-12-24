import 'package:flutter_auth_app/domain/core/utils.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

DebounceTimer useDebounce() {
  final debounceTimerRef = useRef(DebounceTimer());
  useEffect(() {
    return debounceTimerRef.value.dispose;
  }, [debounceTimerRef.value]);
  return debounceTimerRef.value;
}
