package co.anabada.nego;

import java.util.Date;
import lombok.Data;

@Data
public class Nego {

	private int negoNum;
	private String negoChat;
	private int memberNum;
	private int itemNum;
	private Date negoChatDate;
	private String memberName;

}
