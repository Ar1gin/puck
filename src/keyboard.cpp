#include "keyboard.h"
#include <QPushButton>
#include <QWidget>
#include <fcntl.h>
#include <linux/input-event-codes.h>
#include <linux/uinput.h>
#include <sys/ioctl.h>
#include <unistd.h>

Keyboard::Keyboard(QObject *parent) : QObject(parent) {
  keyboard_fd = open("/dev/uinput", O_WRONLY | O_NONBLOCK);

  ioctl(keyboard_fd, UI_SET_EVBIT, EV_KEY);
  for (int code = 1; code <= 83; code++) {
    ioctl(keyboard_fd, UI_SET_KEYBIT, code);
  }

  struct uinput_setup usetup;
  memset(&usetup, 0, sizeof(usetup));
  usetup.id.bustype = BUS_USB;
  usetup.id.vendor = 0x1234;
  usetup.id.product = 0x5678;
  strcpy(usetup.name, "PUCK Virtual Keyboard");

  ioctl(keyboard_fd, UI_DEV_SETUP, &usetup);
  ioctl(keyboard_fd, UI_DEV_CREATE);
}

Keyboard::~Keyboard() {
  ioctl(keyboard_fd, UI_DEV_DESTROY);
  close(keyboard_fd);
}

void emit_code(int fd, int type, int code, int val) {
  struct input_event ie;

  ie.type = type;
  ie.code = code;
  ie.value = val;
  ie.time.tv_sec = 0;
  ie.time.tv_usec = 0;
  write(fd, &ie, sizeof(ie));
}

void Keyboard::buttonClicked(int key) {
  if (key != 0) {
    bool ctrl = key & 0x00010000;
    bool shift = key & 0x00020000;
    int code = key & 0x0000ffff;
    if (ctrl) {
      emit_code(keyboard_fd, EV_KEY, KEY_LEFTCTRL, 1);
    }
    if (shift) {
      emit_code(keyboard_fd, EV_KEY, KEY_LEFTSHIFT, 1);
    }
    emit_code(keyboard_fd, EV_KEY, code, 1);
    emit_code(keyboard_fd, EV_SYN, SYN_REPORT, 0);
    if (ctrl) {
      emit_code(keyboard_fd, EV_KEY, KEY_LEFTCTRL, 0);
    }
    if (shift) {
      emit_code(keyboard_fd, EV_KEY, KEY_LEFTSHIFT, 0);
    }
    emit_code(keyboard_fd, EV_KEY, code, 0);
    emit_code(keyboard_fd, EV_SYN, SYN_REPORT, 0);
    printf("Code: %d, Ctrl: %d, Shift: %d\n", code, ctrl, shift);
  }
}
