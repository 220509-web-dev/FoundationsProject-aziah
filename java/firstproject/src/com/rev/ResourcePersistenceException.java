package com.rev;

public class ResourcePersistenceException extends RuntimeException {
    public ResourcePersistenceException() {
        super("An issue occurred and the resource could not be persisted.");
    }
}
