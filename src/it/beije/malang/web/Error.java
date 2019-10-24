package it.beije.malang.web;

public enum Error {

	UNKNOWN {
		@Override
		public String getError() {
			return "Riprova piu' tardi";
		}
	},
	INVALID_FIELD {
		@Override
		public String getError() {
			return "Inserisci campi validi";
		}
	},
	INVALID_EMAIL {
		@Override
		public String getError() {
			return "Inserisci una mail valida";
		}
	},
	INVALID_PHONE_NUMBER {
		@Override
		public String getError() {
			return "Inserisci un numero di telefono valido";
		}
	};
	
	public abstract String getError();
}
