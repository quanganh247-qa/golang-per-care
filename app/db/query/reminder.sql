-- name: CreateReminder :one
INSERT INTO Reminder (
    UserID,
    PetID,
    ReminderType,
    ReminderDate,
    Description,
    Status
) VALUES (
    $1, $2, $3, $4, $5, $6
) RETURNING *;
