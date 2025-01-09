#pragma once

#include <QWidget>

class QPushButton;
class Window : public QWidget {
  Q_OBJECT
public:
  explicit Window(QWidget *parent = 0);
  ~Window();
private slots:
  void slotButtonClicked(bool checked);

private:
  QPushButton *m_button;
};
