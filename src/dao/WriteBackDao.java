package dao;

import java.util.List;

import bean.WriteBack;

public interface WriteBackDao {
	List<WriteBack> selectWriteBack(int cid);
	void addNewWriteBack(WriteBack writeback);
}
