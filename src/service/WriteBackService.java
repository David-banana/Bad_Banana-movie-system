package service;

import java.util.List;

import bean.WriteBack;

public interface WriteBackService {
	List<WriteBack> findWriteback(int cid);
}
