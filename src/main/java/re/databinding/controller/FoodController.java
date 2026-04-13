package re.databinding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import re.databinding.model.Food;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/food")
public class FoodController {

    // Lưu tạm trong RAM
    private static List<Food> foodList = new ArrayList<>();

    // Dropdown dùng chung
    @ModelAttribute("categories")
    public List<String> getCategories() {
        return Arrays.asList("Khai vị", "Món chính", "Đồ uống", "Tráng miệng");
    }

    // Mở form
    @GetMapping("/add")
    public String showForm(Model model) {
        model.addAttribute("food", new Food());
        return "food-add";
    }

    // Xử lý submit
    @PostMapping("/add")
    public String addFood(
            @RequestParam("name") String name,
            @RequestParam("category") String category,
            @RequestParam("price") double price,
            @RequestParam("image") MultipartFile file,
            Model model
    ) {

        if (file.isEmpty()) {
            model.addAttribute("error", "Vui lòng chọn ảnh!");
            return "food-add";
        }

        String filename = file.getOriginalFilename();
        if (filename == null ||
                !(filename.endsWith(".jpg") ||
                        filename.endsWith(".png") ||
                        filename.endsWith(".jpeg"))) {

            model.addAttribute("error", "Chỉ chấp nhận file .jpg, .png, .jpeg");
            return "food-add";
        }

        if (price < 0) {
            model.addAttribute("error", "Giá phải >= 0");
            return "food-add";
        }

        try {
            String uploadDir = "C:/RikkeiFood_Temp/";
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            String filePath = uploadDir + filename;
            file.transferTo(new File(filePath));

            Food food = new Food(name, category, price, filePath);
            foodList.add(food);

            System.out.println("Đã thêm món: " + name);
            System.out.println("Tổng số món: " + foodList.size());

        } catch (IOException e) {
            e.printStackTrace();
            model.addAttribute("error", "Lỗi upload file!");
            return "food-add";
        }

        model.addAttribute("success", "Thêm món thành công!");
        return "food-add";
    }
}