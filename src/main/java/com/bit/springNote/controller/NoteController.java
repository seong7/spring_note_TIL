package com.bit.springNote.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.springNote.command.NoteCommand;
import com.bit.springNote.command.NoteListCommand;
import com.bit.springNote.command.NoteWriteCommand;

@Controller
public class NoteController {

	NoteCommand command;
	
	@RequestMapping(value = "noteForm")
	public String noteForm() {
		return "noteForm"; //views/noteFrom.jsp 호출 
	}
	
	@RequestMapping(value = "write")
	public String write(HttpServletRequest req, Model model) {
		model.addAttribute("request", req);
		command = new NoteWriteCommand();
		command.execute(model);
		return "redirect:list";
	}
	
	@RequestMapping(value = "delete")
	public String delete(HttpServletRequest req, Model model) {
		model.addAttribute("request", req);
		command = new NoteWriteCommand();
		command.execute(model);
		return "redirect:list";
	}
	
	@RequestMapping(value="list")
	public String list(Model model) {
		command = new NoteListCommand();
		command.execute(model);
		return "noteList";
	}
	
	
}








