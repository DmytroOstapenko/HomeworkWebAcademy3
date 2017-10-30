//
//  ViewController.swift
//  HomeWork3
//
//  Created by universaliuk on 29.10.2017.
//  Copyright © 2017 OstapenkoDmytro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Блок String Easy, задание 1")
        print("В имени \(countMyName(name: "Dmytro")) букв.")
        print("============================================")

        print("Блок String Easy, задание 2")
        print(firstNameLastNameLowerCased(firstName: "Dmytro", lastName: "Ostapenko"))
        print("============================================")

        print("Блок String Easy, задание 3")
        determineSexOfPerson(nameAndPatronym: "Дмитрий Анатолиевич")
        print("============================================")

        print("Блок Collections Easy, задание 1")
        delArray(a: 5, b: 7, c: 9)
        print("============================================")

        print("Блок Collections Easy, задание 2")
        combinArray()
        print("============================================")

        print("Блок Collections Easy, задание 3")
        methodForCollectionEasyTask3(a: "One", b: "Two", c: "Three")
        print("============================================")

        print("Блок Collections Easy, задание 4")
        print(firstAndLastElement(a: "One", b: "Two", c: "Three", d: "Four"))
        print("============================================")

        print("Блок Collections Easy, задание 5")
        appendDictionary()
        print("============================================")

        print("Блок Collections Easy, задание 6")
        delDictionaryElement(dictionary: ["Dima": 12, "Sasha": 24, "Mark": 52], Key: "Dima")
        print("============================================")


    }

    //Блок String Easy, задание 1
    //Создать строку со своим именем.
    //Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем.
    //Возвращенное значение показать в консоль
    func countMyName(name: String) ->  Int {
        return name.count
    }

    //Блок String Easy, задание 2
    //Написать метод который принимает 2 слова, например имя и фамилию,
    //возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”
    func firstNameLastNameLowerCased(firstName: String, lastName: String) -> String {
        return ("\(firstName.lowercased())_\(lastName.lowercased())")
    }

    //Блок String Easy, задание 3
    //Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”.
    //Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
    func determineSexOfPerson(nameAndPatronym: String) {
        let nameAndPatronym = nameAndPatronym.lowercased()
        if nameAndPatronym.hasSuffix("ич") {
            print("M")
        } else if nameAndPatronym.hasSuffix("на") {
            print("Ж")
        }
    }

    //Блок Collections Easy, задание 1
    //Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
    func delArray(a: Int, b: Int, c: Int)  {
        var array = [a, b, c]
        let delArray = array.removeAll()
        print(delArray)
    }

    //Блок Collections Easy, задание 2
    //Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.
    func combinArray()  {
        let arrayOne = [10, 20, 30]
        let arrayTwo = [1, 2, 3, 4, 5]
        let combinArray = arrayOne + arrayTwo
        print(combinArray)
    }

    //Блок Collections Easy, задание 3
    //Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив.
    //Метод должен выводить в консоль элементы массива (по одному в одной строке)
    func methodForCollectionEasyTask3(a: String, b: String, c: String)  {
        let numbers = [a, b, c]
        for item in numbers {
            print(item)
        }
    }

    //Блок Collections Easy, задание 4
    //Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив.
    //Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром.
    func firstAndLastElement(a: String, b: String, c: String, d: String) -> Array<Any> {
        var array = [a, b, c, d]
        let arrayFirst = array.removeFirst()
        let arrayLast = array.removeLast()
        let arrayReturn = [arrayFirst, arrayLast]
        return(arrayReturn)
    }

    //Блок Collections Easy, задание 5
    //Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст.
    //Должно быть 3 элемента (3 пары). Добавить в данный словарь еще 2 новых элемента.
    func appendDictionary()  {
        var dictionary: [String: Int] = ["Dima": 25,
                                         "Vika": 24,
                                         "Olga": 19]
        dictionary["Pavel"] = 14
        dictionary["Igor"] = 99
        print(dictionary)
    }

    //Блок Collections Easy, задание 6
    //Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст.
    //Должно быть 3 элемента (3 пары).
    //Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка.
    //Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
    func delDictionaryElement(dictionary: [String: Int], Key: String)  {
        var delDictionaryElement = dictionary
        delDictionaryElement.removeValue(forKey: Key)
        print(delDictionaryElement)
    }



    //Блок String Hard, задание 1
    //Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку,
    //где они будут разделены пробелом
    //input = “TungFam”
    //output = “Tung Fam"
    //Сложность задачи в том, что имя может быть любое. Например:
    //Введя “ArtemPigor” должно вернуть “Artem Pigor”
    //Введя “AnnaSecure” должно вернуть “Anna Secure”
    //Введя “BlaCar” должно вернуть “Bla Car”
    //То есть алгоритм разбивает два слова которые начинаются на большую букву

    //Блок String Hard, задание 2
    //Создать метод который принимает как аргумент строку. Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП.
    //не используя reverse (сделать алгоритм самому посимвольно)

    //Блок String Hard, задание 3
    //добавить запятые в строку как их расставляет калькулятор
    //1234567 -> 1,234,567
    //12345 -> 12,345
    //(не использовать встроенный метод для применения формата)

    //Блок String Hard, задание 4
    //проверить пароль на надежность от 1 до 5
    //a) если пароль содержит числа +1
    //b) символы верхнего регистра +1
    //c) символы нижнего регистра +1
    //d) спец символы +1
    //e) если длина пароля 8 или более символов +1
    //пример:
    //123456 - 1 a)
    //qwertyui - 1 c)
    //12345qwerty - 2 a) c)
    //32556reWDr - 3 a) b) c)

    //Блок Collections Hard, задание 1
    //Создать метод который принимает 2 аргумента: массив строк и просто строку. Метод возвращает true или false
    //в зависимости есть ли данный элемент (тот второй аргумент, который строка) в массиве (тот первый аргумент, который массив строк).
    //например массив
    //let array = [“one”, “two”]
    //и если передать в этот метод “one“ то должно вернуть true
    //а если передать “three” то должно вернуть false

    //Блок Collections Hard, задание 2
    //метод который выведет все ключи словаря
    //метод который выведет все значения словаря

    //Блок Collections Hard, задание 3
    //сортировка массива не встроенным методом по возрастанию + удалить дубликаты
    //Например задается массив [3, 6, 1, 2, 2, 6, 13, 77, 36]
    //Результат должен быть [1, 2, 3, 6, 13, 36, 77]

    //Блок Collections Hard, задание 4
    //Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными.
    //Их мы будем передавать в метод, который напишем.
    //Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку.
    //Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.










}

