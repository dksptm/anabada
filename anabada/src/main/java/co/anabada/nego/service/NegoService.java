package co.anabada.nego.service;

import java.util.List;

import co.anabada.nego.Nego;

public interface NegoService {

	// List<Nego> negoForm(int itemNum);

	boolean AddnegoChat(Nego nego);

	List<Nego> negoForm(int itemNum);

}
