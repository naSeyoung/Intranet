package net.ezens.Intranet.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

@Configuration
public class DataSourceConfig {
	
	private static final Logger logger = LoggerFactory.getLogger(DataSourceConfig.class);
	
    @Bean
    @Primary
    @Qualifier ("datasource")
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource dataSource() {
    	logger.info("=== make dataSource bean ===");
        return DataSourceBuilder.create().build();
    }
    
    @Bean(name = "tx")
    public DataSourceTransactionManager tx(@Qualifier ("datasource")DataSource dataSource) {
    	logger.info("=== make DataSourceTransactionManager bean ===");
    	DataSourceTransactionManager txm = new DataSourceTransactionManager(dataSource);
    	return txm;
    }

	@Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        /* 맵퍼 xml 파일 경로 설정 */
        Resource[] resources = new PathMatchingResourcePatternResolver()
                .getResources("classpath:sql/mapper/*");
        sqlSessionFactoryBean.setMapperLocations(resources);
        /* alias 설정 com.package..entity.Board -> resultType"Board" */
        sqlSessionFactoryBean.setTypeAliasesPackage("net.ezens.Intranet.dto");
 
        SqlSessionFactory sqlSessionFactory = sqlSessionFactoryBean.getObject();
 
        org.apache.ibatis.session.Configuration configuration = sqlSessionFactory.getConfiguration();
        
        /* 실제DB컬럼명 스네이크 표기법 = 카멜케이스 표기법 맵핑 */
        configuration.setMapUnderscoreToCamelCase(true);
 
        return sqlSessionFactory;
    }
	
	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory){
		return new SqlSessionTemplate(sqlSessionFactory);
	}
	
	
}
