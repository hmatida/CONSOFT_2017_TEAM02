package SGCteam02;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply=true)
public class LocalDateTimeAttributeConverter implements
				AttributeConverter<LocalDate, Date>{

	@Override
	public Date convertToDatabaseColumn(LocalDate locDate) {
		if (locDate != null){
			return Date.valueOf(locDate);
		}else{
			return null;
		}
	}

	@Override
	public LocalDate convertToEntityAttribute(Date dbData) {
		if(dbData != null){
			return dbData.toLocalDate();
		}else{
			return null;
		}
	}

}
