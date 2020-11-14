package com.khotel.Dao;

import java.util.HashMap;
import java.util.List;

import com.khotel.Vo.RoomVo;

public interface RoomDao {
	public List<RoomVo> selectRoomList(RoomVo roomVo) throws Exception;
	public RoomVo selectRoom(RoomVo roomVo) throws Exception;
	public void insertRoom(RoomVo roomVo) throws Exception;
	public void updateRoom(RoomVo roomVo) throws Exception;
	public void deleteRoom(RoomVo roomVo) throws Exception;
	public List<RoomVo> listRoom() throws Exception;
	public List<RoomVo> listBlockSelect(HashMap<String, Object> map);
	public RoomVo boardView(String id);
	public List<RoomVo> listFindRoom(HashMap<String, Object> map);
	public int findRoomTotal(HashMap<String, Object> map);
	public List<RoomVo> viewList(HashMap<String, Object> map);
	public int findDateTotal(HashMap<String, Object> map);
}