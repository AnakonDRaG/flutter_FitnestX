typedef void EventCallback(arg);

class EventBus {
  EventBus._internal();

  static final EventBus _singleton = EventBus._internal();

  factory EventBus() => _singleton;

  final _events = <Object, List<EventCallback>?>{};

  void on(eventName, EventCallback f) {
    if (eventName == null) return;
    _events[eventName] ??= [];
    _events[eventName]!.add(f);
  }

  void off(eventName, [EventCallback? f]) {
    var list = _events[eventName];

    if (eventName == null || list == null) return;
    if (f == null) {
      _events[eventName] = null;
    } else {
      list.remove(f);
    }
  }

  void emit(eventName, [arg]) {
    var list = _events[eventName];

    if (list == null) return;
    int len = list.length - 1;

    for (var i = len; i > -1; --i) {
      list[i](arg);
    }
  }
}

var eventBus = EventBus();
