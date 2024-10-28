INSERT INTO `company` (`name`, `description`)
VALUES
  ('TechCorp', 'A technology solutions company specializing in software development and cloud services.'),
  ('GreenSolutions', 'A company focused on sustainable energy and eco-friendly solutions.'),
  ('HealthPlus', 'Healthcare company providing medical services and products to hospitals.'),
  ('EduFuture', 'An educational technology firm developing e-learning platforms and educational content.');

  INSERT INTO `Candidate` (`login`, `password`, `lastname`, `firstname`, `phone`, `presentation`)
VALUES
  ('jdoe', 'password123', 'Doe', 'John', '1234567890', 'Experienced software developer with a background in cloud computing.'),
  ('asmith', 'password456', 'Smith', 'Alice', '0987654321', 'Marketing specialist with expertise in digital strategies.'),
  ('bwayne', 'password789', 'Wayne', 'Bruce', '5551234567', 'Financial analyst with a focus on investments and portfolio management.'),
  ('ckent', 'password101', 'Kent', 'Clark', '5559876543', 'Journalist with experience in investigative reporting.');

  INSERT INTO `recruiter` (`login`, `password`, `company_id`)
VALUES
  ('recruiter1', 'recruiterpass123', 1),
  ('recruiter2', 'recruiterpass456', 2),
  ('recruiter3', 'recruiterpass789', 3),
  ('recruiter4', 'recruiterpass101', 4);

  INSERT INTO `recruiter` (`login`, `password`, `company_id`)
VALUES
  ('recruiter1', 'recruiterpass123', 1),
  ('recruiter2', 'recruiterpass456', 2),
  ('recruiter3', 'recruiterpass789', 3),
  ('recruiter4', 'recruiterpass101', 4);

