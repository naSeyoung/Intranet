package net.ezens.Intranet.util;

import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

public class TxUtil {
	
	private DataSourceTransactionManager txManager;

	public DataSourceTransactionManager getTxManager(DataSourceTransactionManager txManager) {
		return this.txManager = txManager;
	}

	public TransactionStatus getTransaction() {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		return this.txManager.getTransaction(def);
	}
	
	public void commitTransaction(TransactionStatus status) {
		this.txManager.commit(status);
	}
	
	public void rollBackTransaction(TransactionStatus status) {
		this.txManager.rollback(status);
	}
}
