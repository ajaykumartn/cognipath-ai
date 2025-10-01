from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

# Use the DATABASE_URL from the environment variables in production.
# If it doesn't exist, fall back to the local SQLite database for development.
SQLALCHEMY_DATABASE_URL = os.getenv("DATABASE_URL", "sqlite:///./cognipath.db")

# Add a check for PostgreSQL to handle SSL arguments if needed
connect_args = {"check_same_thread": False} if "sqlite" in SQLALCHEMY_DATABASE_URL else {}

engine = create_engine(SQLALCHEMY_DATABASE_URL, connect_args=connect_args)

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

