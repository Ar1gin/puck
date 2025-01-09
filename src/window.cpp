#include "window.h"
#include <QPushButton>
#include <QWidget>

Window::Window(QWidget *parent) : QWidget(parent) {
  setFixedSize(100, 50);
  this->setWindowFlags(Qt::WindowStaysOnTopHint | Qt::Tool |
                       Qt::WindowDoesNotAcceptFocus | Qt::Popup |
                       Qt::FramelessWindowHint | Qt::BypassWindowManagerHint);
  this->setFocusPolicy(Qt::NoFocus);
  this->setAttribute(Qt::WA_ShowWithoutActivating);
  m_button = new QPushButton("Unchecked", this);
  m_button->setGeometry(10, 10, 80, 30);
  m_button->setCheckable(true);
  connect(m_button, SIGNAL(clicked(bool)), this, SLOT(slotButtonClicked(bool)));
}

Window::~Window() { delete m_button; }

void Window::slotButtonClicked(bool checked) {
  if (checked) {
    m_button->setText("Checked");
  } else {
    m_button->setText("Unchecked");
  }
}
