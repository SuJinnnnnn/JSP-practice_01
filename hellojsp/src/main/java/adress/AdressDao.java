package adress;

import java.util.ArrayList;

public class AdressDao {
	ArrayList<AdressDo> v = new ArrayList();
	
	public void insertAddr(AdressDo ado) {
		//ArrayList에 데이터 저장
		v.add(ado);
	}
	
	public ArrayList<AdressDo> getAdr() {
		return v;
	}

}
