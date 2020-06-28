package br.com.fapen.estoque.enums;

public enum TipoProdEnum {
	LIVRO("Livro"), 
	E_BOOK("E-book"), 
	AULA("Video Aula"),
	EQUIP("Equipamento");

	private final String displayValue;

	private TipoProdEnum(String displayValue) {
		this.displayValue = displayValue;
	}

	public String getDisplayValue() {
		return displayValue;
	}
}
