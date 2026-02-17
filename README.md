# Socha

## Elevator pitch
**Journaling for the Social Age: Bridging the gap between individual reflection and communal support.**

## About the project
Socha was born out of a desire to transform the solitary act of mental health tracking into a shared experience of empathy and support.

### Inspiration
Mental health is often treated as a private, solo journey—yet human connection is one of the most powerful tools for emotional resilience. We were inspired to build a platform where the privacy of a personal journal meets the strength of a social circle, ensuring that no one has to process their day alone.

### What it does
Socha is a social-emotional tracking platform that encourages daily reflection.
- **Intelligent Journaling**: Users record thoughts and moods, which are analyzed in real-time.
- **Sentiment Analysis**: Each entry is processed to determine an emotional score $S$, where $S \in [-1.0, 1.0]$. A score nearing $1.0$ indicates positive sentiment, while $-1.0$ reflects distress.
- **Circles**: Users organize into "Circles" (communities) where aggregated, privacy-first insights allow members to see the general emotional "pulse" of their group without violating individual privacy.
- **Acts of Kindness**: The app suggests actionable ways to support friends based on the community’s collective state.

### How I built it
We architected Socha using a modern full-stack approach:
- **Frontend**: A cross-platform mobile app built with **React Native** and **Expo**. We utilized **Apollo Client** for state management and **Three.js** (via `expo-three`) for immersive data visualizations.
- **Backend**: A **Node.js** and **Express** server serving a **GraphQL** API.
- **Database**: **MySQL** managed through the **Sequelize** ORM to handle complex relationships between users, entries, and circles.
- **Intelligence**: Integrated the **Google Cloud Natural Language API** to perform high-precision sentiment and magnitude analysis on user text.

### Challenges I ran into
One of the primary hurdles was designing a GraphQL schema that could efficiently aggregate emotional data across different "Circles" without compromising performance or privacy. We also spent significant time fine-tuning the sentiment analysis magnitude to ensure that nuanced entries weren't "misread" by the AI.

### Accomplishments that I'm proud of
We are incredibly proud that **Socha won First Place at HackSC 2020**. Seeing the system successfully translate individual text entries into a cohesive community "health" dashboard was a major milestone for our team.

### What I learned
This project was a deep dive into the intersection of **NLP (Natural Language Processing)** and social psychology. I learned how to bridge disparate tech stacks—connecting a mobile frontend to a cloud-based AI engine—while maintaining a focus on user-centric design and ethical data handling.

### What's next for it
We plan to expand the "Circles" feature with more granular community goals and deeper integration of **3D emotional landscapes** using Three.js to help users visualize their mental growth over time.

## Built with
- **Frontend**: React Native, Expo, Apollo Client, Three.js, Styled Components, Native Base.
- **Backend**: Node.js, Express, GraphQL, Google Cloud Natural Language API.
- **Data**: MySQL, Sequelize ORM.
- **Cloud**: Google Cloud Platform.