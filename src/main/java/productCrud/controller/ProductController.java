package productCrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import productCrud.dao.ProductDAO;
import productCrud.entity.Product;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductDAO productDAO;


    @GetMapping("/product-list")
    public String getAllProducts(Model model){
        List<Product> productList = productDAO.getAllProducts();
        model.addAttribute("products", productList);
        return "product-list";
    }

    @GetMapping("/product/{id}")
    public String getProduct(@PathVariable("id") int id, Model model){
        Product product = productDAO.getProduct(id);
        model.addAttribute("product", product);
        return "product-details";
    }


    @GetMapping("/add-product-form")
    public String viewForm(Model model){
        return "add-form";
    }

    @PostMapping("/add-product")
    public String createProduct(@ModelAttribute Product product){
        productDAO.createProduct(product);
        return "redirect:/product-list";
    }

    @GetMapping("/update-form/{id}")
    public String viewUpdateForm(@PathVariable("id") int id, Model model){
        Product product = productDAO.getProduct(id);
        model.addAttribute("product", product);
        return "update-form";
    }
    @PostMapping("/update-product/{id}")
    public String updateProduct(@PathVariable("id") int id, @ModelAttribute Product product, Model model){
        product.setId(id);
        model.addAttribute("product", productDAO.updateProduct(product));
        return "redirect:/product-list";
    }
    @GetMapping("/delete-product/{id}")
    public String deleteProduct(@PathVariable("id") int id){
        productDAO.deleteProduct(id);
        return "redirect:/product-list";
    }
}
