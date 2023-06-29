package spring.orm.model.input;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class SpecializationInput {
	@NotEmpty(message = "ID is required")
	@Size(max = 5, message = "ID must not exceed 5 characters")
	private String id;

	@NotEmpty(message = "Title is required")
	private String title;

	@NotEmpty(message = "Description is required")
	@Size(max = 50, message = "Description must not exceed 50 characters")
	private String description;

	@Override
	public String toString() {
		return "SpecializationInput [id=" + id + ", title=" + title + ", description=" + description + "]";
	}

	public SpecializationInput() {
		// default constructor
	}

	public SpecializationInput(String id, String title, String description) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
