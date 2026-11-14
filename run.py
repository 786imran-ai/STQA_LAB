import uvicorn
from app.main import app
from app.seeder import seed_database

if __name__ == "__main__":
    print("=" * 70)
    print("  TESTLAB - Integrated Software Testing & QA Platform")
    print("  Server starting on: http://127.0.0.1:8000")
    print("  Default Accounts:")
    print("    • Student Account: student@testlab.edu  / Student123!")
    print("    • Teacher Account: teacher@testlab.edu  / Teacher123!")
    print("=" * 70)
    seed_database()
    uvicorn.run("app.main:app", host="127.0.0.1", port=8000, reload=True)

