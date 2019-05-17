import csv
class CSVLibrary(object):

    def read_csv_file(self, filename):
        file = open(filename, 'r')
        csvfile = csv.reader(file)
        # file.close()
        print [row for row in csvfile]
        return [row for row in csvfile]

    def read_csv_files(self, filename, tc):
        '''This creates a keyword named "Read CSV File"

        This keyword takes one argument, which is a path to a .csv file. It
        returns a list of rows, with each row being a list of the data in
        each column.
        '''
        data = []
        with open(filename, 'rb') as csvfile:
            reader = csv.reader(csvfile)
            for row in reader:
                data.append(row)
        return data

    def read_test_data(self, filename, tc):
        with open(filename, 'ab+') as csvfile:
            csvDictReader = csv.DictReader(csvfile, delimiter=';')
            for row in csvDictReader:
                if row['TC'] == tc:
                    return row['Headers'], row['Url'], row['Requests']