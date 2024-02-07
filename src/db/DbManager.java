package db;

import models.Developer;
import models.Product;
import models.Task;

import java.util.ArrayList;
import java.util.List;

public class DbManager {
    private static List<Developer> developers = new ArrayList<>();


    static {
        developers.add(new Developer("Арман", "A", "it", 500000));
        developers.add(new Developer("Arsen", "A", "it", 500000));
        developers.add(new Developer("Argyn", "A", "it", 500000));
        developers.add(new Developer("Daniyar", "A", "it", 500000));
        developers.add(new Developer("Arman", "A", "it", 500000));
    }


    public static List<Developer> getDevelopers() {
        return developers;
    }



    private static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product("Iphone 15 pro max", 450000.0, 15));
        products.add(new Product("Poco X5 pro", 150000.0, 10));
        products.add(new Product("PlayStation 5", 320000.0, 22));
        products.add(new Product("Nintendo Switch", 260000.0, 11));
        products.add(new Product("Steam Deck", 390000.0, 9));
    }

    public static List<Product> getProducts() {
        return products;
    }

    public static void addProduct(Product product){
        products.add(product);
    }



    private static List<Task> tasks = new ArrayList<>();

    static {
        tasks.add(new Task("Сделать уроки","Нужно доделать задания по паре", "16.02.2024", false));
        tasks.add(new Task("Сделать уроки","Нужно доделать задания по паре", "12.05.2024", false));
        tasks.add(new Task("Сделать уроки","Нужно доделать задания по паре", "11.04.2024", false));
        tasks.add(new Task("Сделать уроки","Нужно доделать задания по паре", "1.01.2024", false));

    }

    public static List<Task> getTasks(){
        return tasks;
    }

    public static void addTask(Task task){
        tasks.add(task);
    }

    public static void changeTask(int id, String name, String description, String deadline, boolean isMade){
        Task new_task = new Task(name, description, deadline, isMade);

        tasks.set(id, new_task);
    }


    public static void deleteTask(int id){
        tasks.remove(id);
    }


}
