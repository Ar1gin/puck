
#include <QApplication>
#include <QtQuick/QQuickView>
#include<QQmlApplicationEngine>
int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);
  QQmlApplicationEngine engine("qrc:///App.qml");
  return QApplication::exec();
}
