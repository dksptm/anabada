package co.anabada.common;

import lombok.Data;

@Data
public class SearchVO {
	private int page;
	private String searchCondition;
	private String keyword;

}
