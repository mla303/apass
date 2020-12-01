
import 'package:apass/presentation/resident_home.dart';
import 'package:bloc/bloc.dart';


enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
  MyNewsBoardClickedEvent,
  ResidetHomeClickedEvent,
  MyEstateDuesClickedEvent,
  MySettingsClickedEvent,
  MyLoginPageClickedEvent,
  MyChatPageClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);

  @override
  // NavigationStates get initialState => MyAccountsPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        // yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        // yield MyAccountsPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        // yield MyOrdersPage();
        break;
      case NavigationEvents.MyNewsBoardClickedEvent:
        // yield MyNewsBoardPage();
        break;
      case NavigationEvents.ResidetHomeClickedEvent:
        yield resident_home();
        break;
      case NavigationEvents.MyEstateDuesClickedEvent:
        // yield MyEstateDuesPage();
        break;
      case NavigationEvents.MySettingsClickedEvent:
        //yield MySettingsPage();
        // yield MainProf();
        break;
      case NavigationEvents.MyLoginPageClickedEvent:
        // yield HomePage();
        break;
      case NavigationEvents.MyChatPageClickedEvent:
        // yield MyChat();
        break;


    }
  }
}
