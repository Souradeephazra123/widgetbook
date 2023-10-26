import 'widgetbook.dart';
import 'widgetbook_leaf_component.dart'; 

List<WidgetbookComponent> convertToLeafComponents(List<WidgetbookComponent> components) {
  final leafComponents = <WidgetbookLeafComponent>[];
  
  for (final component in components) {
    if (component.useCases.length == 1) {
      final useCase = component.useCases.first;
      leafComponents.add(
        WidgetbookLeafComponent(
          name: component.name,
          builder: useCase.builder,
        ),
      );
    }
  }

  return leafComponents;
}

void main() {
  final widgetbookComponents = getWidgetbookComponents(); // Replace with your logic to get existing components
  final leafComponents = convertToLeafComponents(widgetbookComponents);

  
}
