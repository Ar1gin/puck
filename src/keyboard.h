#pragma once

#include <QQmlEngine>
#include <QWidget>

class QPushButton;
class Keyboard : public QObject {
  Q_OBJECT
  QML_ELEMENT
public:
  explicit Keyboard(QObject *parent = 0);
  ~Keyboard();
  Q_INVOKABLE void buttonClicked(int key);
private:
  int keyboard_fd;
};
