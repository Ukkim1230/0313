package com.web.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CourseDTO {
	private int ciNum;
	private String ciName;
	private int ciMax;
	private int cnt;
	private int siNum;
}
