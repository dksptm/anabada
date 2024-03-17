package co.anabada.item;

import lombok.Data;

@Data
public class Category {
	private int level;
	private String categoryId;
	private String categoryName;
	private String parentCategory;

}
