# Hospital-Database
Overview
This project is the implementation of a relational database for managing hospital job positions, candidates, interviews, and associated skills. The design follows a well-structured approach, using composite and foreign keys to ensure data integrity and avoid redundancy. The system allows hospitals to hire candidates with specific skills for different positions and maintains a log of interviews conducted for various positions.

Technologies Used
Database: MySQL
Operating System: MacOS
Student Name: Shlok Patel
Student Number: 22715709
Database Structure
1. Skills Details
skill_id: Primary Key, a unique identifier for each skill.
skill_name: Name of the skill.
2. Position_Skill
position_id and skill_id: Composite Primary Key. Links a position to its required skills.
position: Foreign Key referencing the Position Details table.
skill: Foreign Key referencing the Skills Details table.
3. Position Details
position_id: Primary Key, unique identifier for each position.
hospital_hiring: Composite Primary Key, links the position to a specific hospital.
type_of_pos: Describes the type of position.
position_hospital: Foreign Key referencing the Hospital Details table.
4. Interview Details
interview_id: Primary Key, unique identifier for each interview.
position_id and candidate_id: Foreign Keys, linking interviews to specific candidates and positions.
interview_date: The date and time of the interview.
offered_position: Boolean value indicating if a position was offered after the interview.
5. Hospital Details
hospital_id: Primary Key, unique identifier for each hospital.
hospital_name: Name of the hospital.
address: Address of the hospital.
telephone: Contact number of the hospital.
6. Candidate_Skill
candidate_id and skill_id: Composite Primary Key. Links candidates to their skills.
candidate_id: Foreign Key referencing the Candidate Details table.
skill_id: Foreign Key referencing the Skills Details table.
7. Candidate Details
candidate_id: Primary Key, unique identifier for each candidate.
firstname and surname: Candidate’s first and last name.
address: Candidate’s address.
telephone: Candidate’s contact number.
Assumptions and Additions
Three additional tables were created:

Position_Skill: Represents the relationship between positions and required skills.
Candidate_Skill: Represents the relationship between candidates and their skills.
Skills Details: Ensures that skill names are not duplicated between Candidate_Skill and Position_Skill tables.
Instead of a separate table for job offers, a Boolean attribute (offered_position) was added to the Interview Details table.

Design Features
Composite Keys: Used in Position_Skill and Candidate_Skill tables to ensure a many-to-many relationship between positions, candidates, and skills.
Foreign Keys: Used extensively to link related tables and maintain referential integrity.
Data Redundancy Prevention: Only the necessary data is stored in each table to avoid duplication.
Reaction Policies
ON DELETE CASCADE and ON UPDATE CASCADE are used on foreign key constraints to maintain referential integrity. This ensures that related rows are updated or deleted accordingly when changes occur in the parent table.
Candidate_Skill: Updates and deletions cascade to reflect changes in the candidate or skill data.
Interview Details: Changes in candidate or position data cascade to the corresponding interview details.
Position_Skill: If a new skill is added to or removed from a position, it is updated in this table automatically.
ER Diagram
An Entity-Relationship diagram was created to visually represent the database structure, illustrating the relationships between candidates, positions, hospitals, skills, and interviews.
