
#include <QApplication>
#include <QtQuick/QQuickView>
#include <QQmlApplicationEngine>
int main(int argc, char *argv[]) {
  // QGuiApplication app(argc, argv);
  QApplication app(argc, argv);
  app.setWindowIcon(QIcon(":/icon.png"));
  QQmlApplicationEngine engine(":/App.qml");
  return app.exec();
}
