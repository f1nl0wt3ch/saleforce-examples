trigger SetDefaultFirstAndLastnameBeforeInsertNewLead on Lead (before insert) {
    for(Lead l : Trigger.new) {
        l.FirstName = 'Thinh';
        l.LastName = 'Dinh';
    }
}