#include "mainform.h"
#include <QDebug>

MainForm::MainForm(QObject *parent) : QObject(parent)
{

}

void MainForm::printMessage(QString txt){
    qDebug() << "Message from QML: " << txt;
}
