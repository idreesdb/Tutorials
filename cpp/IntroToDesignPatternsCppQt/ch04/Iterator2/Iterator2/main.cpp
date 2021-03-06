#include <QtCore/QCoreApplication>
#include <QtCore/QDir>
#include <QtCore/QDirIterator>
#include <QtCore/QString>
#include <QtCore/QStringList>
#include <QtCore/QTextStream>

QTextStream cout(stdout);
QTextStream cerr(stderr);

void addMp3File(QString path);
void usage();

int main(int argc, char *argv[]) {
    QCoreApplication app(argc, argv);
    QDir dir = QDir::current();

    if (app.arguments().size() > 1)
        dir = app.arguments()[1];

    if (!dir.exists()) {
        cerr << dir.path() << " does not exist!" << endl;
        usage();
        return -1;
    }

    QDirIterator qdi(dir.absolutePath(), QStringList() << "*.mp3", QDir::NoSymLinks | QDir::Files,
                     QDirIterator::Subdirectories);
    while (qdi.hasNext())
        addMp3File(qdi.next());

    return EXIT_SUCCESS;
}

void addMp3File(QString path) {
    cout << path << endl;
}

void usage() {
    cout << "Usage: diriterator [path]\n"
         << "     prints out a list of mp3 files it can find below [path] or the current directory."
         << endl;
}
