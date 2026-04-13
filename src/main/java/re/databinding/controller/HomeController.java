package re.databinding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import re.databinding.model.Student;

@Controller
public class HomeController {

    @GetMapping("/student")
    public String showForm(Model model) {
        model.addAttribute("student", new Student());
        return "student";
    }

    @PostMapping("/student/save")
    public String saveStudent(@ModelAttribute("student") Student student, Model model) {

        System.out.println("Tên: " + student.getName());
        System.out.println("Phone: " + student.getPhone());
        System.out.println("Active: " + student.isActive());

        model.addAttribute("student", student);
        return "result";
    }
}