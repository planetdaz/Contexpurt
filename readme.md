# Contexpurt

Contexpurt is a powerful, versatile tool designed to optimize interactions with Large Language Models (LLMs) by providing a dynamic and interactive context-building environment. It enables users to craft precise, relevant prompts for diverse applications, including querying codebases, managing personal knowledge bases, and handling work-related repositories.

## Features

- **Folder and Tag Management**
  - Upload and organize files into virtual folders.
  - Enable or disable specific folders for inclusion in context searches.
  - Apply user-defined or AI-generated tags to documents for efficient filtering and retrieval.

- **AI-Generated Metadata**
  - Generate concise summaries for uploaded documents to provide an overview of their content.
  - Automatically extract and assign keywords to documents for improved searchability.

- **Iterative Search and Expansion**
  - Use embeddings to retrieve relevant chunks of data based on a user-entered query.
  - Dynamically expand retrieved results by including neighboring chunks before or after the selected text.
  - Allow users to uncheck irrelevant chunks and reassemble the context.

- **Interactive Context Builder**
  - Assemble context dynamically by selecting, reordering, and refining chunks of text.
  - Display the evolving prompt in a live preview window for validation.
  - Exclude irrelevant chunks using checkboxes or drag-and-drop removal.

- **Persistent Context Storage**
  - Save assembled contexts for reuse in future queries.
  - Maintain a version history of saved contexts, allowing users to revisit and refine past prompts.

- **LLM Integration**
  - Send the final assembled context along with the user’s query to the LLM.
  - Integrate user feedback into refining future searches and chunking strategies.

## Technical Architecture

- **Document Storage and Indexing**
  - Store documents as Azure Storage Blobs for scalable and secure storage.
  - Index documents in the MSSQL database using vector embeddings, tags, folder structures, and metadata.
  - Utilize the new Vector data type in Azure MSSQL and SQL Server 2025 for embedding storage and semantic similarity search.
  - Leverage SQL functions such as `VECTOR_DISTANCE`, `VECTOR_NORM`, and `VECTOR_NORMALIZE` for advanced semantic similarity calculations and vector operations.

- **API**
  - Expose endpoints for document upload and tagging, embedding generation and storage, semantic search, and neighboring chunk retrieval.

- **Frontend**
  - Folder and tag managers.
  - Interactive context builder with drag-and-drop, checkboxes, and real-time preview.
  - Semantic search bar with expandable results.
  - Metadata display for retrieved chunks (e.g., source, section, relevance score).

- **Integration with LLMs**
  - Use OpenAI’s `text-embedding-ada-002` or similar for chunk-level embeddings.
  - Pass assembled context and queries to the LLM (e.g., OpenAI GPT models).

## Future Enhancements

- Advanced Search Features: Combine keyword-based filters with semantic search for hybrid retrieval. Implement AI-driven query suggestions.
- Context Summarization: Automatically summarize assembled contexts to save tokens.
- Collaboration Features: Enable real-time, multi-user context building sessions.
- Multi-Model Support: Integrate different LLMs for varied use cases (e.g., code-specific models like Codex).

## Getting Started

### Prerequisites

- [.NET SDK](https://dotnet.microsoft.com/download)
- [Node.js](https://nodejs.org/)
- [Azure Storage Account](https://azure.microsoft.com/en-us/services/storage/)
- [MSSQL Database](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/contexpurt.git
   cd contexpurt
   ```
2. Install the necessary dependencies:
   ```sh
   cd src/UI
   npm install
   ```

3. Build the .NET solution:
   ```sh
   dotnet build src/Contexpurt.sln
   ```

### Usage

1. Start the backend API:
   ```sh
   dotnet run --project src/Api
   ```

2. Start the frontend:
   ```sh
   cd src/UI
   npm run dev
   ```

3. Open your browser and navigate to `http://localhost:3000` to start using Contexpurt.

## Contributing

Contributions are welcome! Please read the contributing guidelines for more information.

## License

This project is licensed under the MIT License. See the LICENSE file for details.