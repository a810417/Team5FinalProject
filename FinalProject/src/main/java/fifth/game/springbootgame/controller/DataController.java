package fifth.game.springbootgame.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import fifth.game.springbootgame.model.Data;
import fifth.game.springbootgame.service.DataService;
@CrossOrigin
@RestController
public class DataController {
	
	@Autowired
	private DataService dService = new DataService();
	
	@CrossOrigin
	@PostMapping("/data/post")
	public void addData(@RequestParam(name="text")String text) {
		Data data = new Data(text);
		dService.insert(data);
		System.out.println("add 1 Data");
	}
	
	
	@PostMapping(path="/data/showAll")
	public List<Data> showAll() {
		return dService.findAll();
	}
	
	@GetMapping(path="/data/find/{id}")
	public Data findById(Integer id) {
		return dService.findById(id);
	}
}
