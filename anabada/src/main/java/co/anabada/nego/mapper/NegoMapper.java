package co.anabada.nego.mapper;

import java.util.List;

import co.anabada.nego.Nego;

public interface NegoMapper {

	List<Nego> negoForm(int itemNum);

	int AddnegoChat(Nego nego);

}
