#ifndef MAINFORM_H
#define MAINFORM_H

#include <QObject>

class MainForm : public QObject
{
    Q_OBJECT
public:
    explicit MainForm(QObject *parent = 0);
    Q_INVOKABLE void printMessage(QString txt);

signals:

public slots:
};

#endif // MAINFORM_H
