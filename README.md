# Introvert or Extrovert Quiz Rails API
This Rails application serves as the backend API for the Introvert or Extrovert quiz. It provides endpoints for retrieving quiz questions and computing scores based on user answers.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
Before running the Rails server, ensure you have the following dependencies installed on your machine:

- Ruby (version 3.1.2)
- Rails (version 7.1.3)
- PostgreSQL

### Installing
1. Clone the repository to your local machine:
```bash
git clone <repository-url>
```

2. Navigate into the project directory:
```bash
cd introvert-extrovert-quiz-api
```

3. Install dependencies using Bundler:
```bash
bundle install
```

4. Create and migrate the database:
```bash
rails db:create
rails db:migrate
```

### Running the Server
Start the Rails server with the following command:
```bash
rails server
```

The API server will start running on http://localhost:3000.

## API Endpoints
- GET /questions: Retrieve all quiz questions.
- POST /questions/compute_score: Compute the user's personality score based on their answers.
  - Request body should include an array of answer objects.
