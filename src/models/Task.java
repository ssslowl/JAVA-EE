package models;

public class Task {

    private String name;

    private String description;

    private String deadline;

    private boolean isMade = false;

    public Task(String name,  String description, String deadline, boolean isMade) {
        this.name = name;
        this.description = description;
        this.deadline = deadline;
        this.isMade = isMade;
    }

    public Task(String name,  String description, String deadline) {
        this.name = name;
        this.description = description;
        this.deadline = deadline;
    }


    public Task() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public boolean isMade() {
        return isMade;
    }

    public void setMade(boolean made) {
        isMade = made;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    @Override
    public String toString() {
        return "Task{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", deadline='" + deadline + '\'' +
                ", isMade=" + isMade +
                '}';
    }
}
