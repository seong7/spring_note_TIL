package com.bit.springNote.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class NoteDto {
	
	private int id;
	private String writer;
	private String content;
}
