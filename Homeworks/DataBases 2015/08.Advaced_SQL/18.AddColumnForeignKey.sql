USE TelerikAcademy
GO

ALTER TABLE Users ADD GroupID int
GO

ALTER TABLE Users
ADD CONSTRAINT FK_Groups
	FOREIGN KEY(GroupID)
	REFERENCES Groups(GroupID)
GO