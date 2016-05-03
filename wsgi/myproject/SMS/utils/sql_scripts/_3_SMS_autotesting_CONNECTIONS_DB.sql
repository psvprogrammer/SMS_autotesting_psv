USE SMSDB;

-- ---------------- ADD TABLE CONSTRAINTS ------------------
ALTER TABLE `Groups`
ADD CONSTRAINT `Groups_school_id_fk_Schools_id` FOREIGN KEY (`school_id`) REFERENCES `Schools` (`id`),
ADD CONSTRAINT `Groups_teacher_id_fk_Teachers_id` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`id`);

ALTER TABLE `Journal`
ADD CONSTRAINT `Journal_lesson_id_fk_Lessons_id` FOREIGN KEY (`lesson_id`) REFERENCES `Lessons` (`id`),
ADD CONSTRAINT `Journal_marktype_id_fk_MarkTypes_id` FOREIGN KEY (`marktype_id`) REFERENCES `MarkTypes` (`id`),
ADD CONSTRAINT `Journal_student_id_fk_Students_id` FOREIGN KEY (`student_id`) REFERENCES `Students` (`id`);

ALTER TABLE `Lessons`
ADD CONSTRAINT `Lessons_teacher_subject_group_id_fk_TeacherSubjectGroups_id` FOREIGN KEY (`teacher_subject_group_id`) REFERENCES `TeacherSubjectGroups` (`id`),
ADD CONSTRAINT `Lessons_lesson_type_id_fk_LessonTypes_id` FOREIGN KEY (`lesson_type_id`) REFERENCES `LessonTypes` (`id`),
ADD CONSTRAINT `Lessons_teacher_replace_id_fk_Teachers_id` FOREIGN KEY (`teacher_replace_id`) REFERENCES `Teachers` (`id`);

ALTER TABLE `Schools`
ADD CONSTRAINT `Schools_director_id_fk_Teachers_id` FOREIGN KEY (`director_id`) REFERENCES `Teachers` (`id`);

ALTER TABLE `Students`
ADD CONSTRAINT `Students_group_id_fk_Groups_id` FOREIGN KEY (`group_id`) REFERENCES `Groups` (`id`);

ALTER TABLE `TeacherSubjectGroups`
ADD CONSTRAINT `TeacherSubjectGroups_group_id_fk_Groups_id` FOREIGN KEY (`group_id`) REFERENCES `Groups` (`id`),
ADD CONSTRAINT `TeacherSubjectGroups_teacher_subject_id_fk_TeacherSubjects_id` FOREIGN KEY (`teacher_subject_id`) REFERENCES `TeacherSubjects` (`id`);

ALTER TABLE `TeacherSubjects`
ADD CONSTRAINT `TeacherSubjects_subject_id_fk_Subjects_id` FOREIGN KEY (`subject_id`) REFERENCES `Subjects` (`id`),
ADD CONSTRAINT `TeacherSubjects_teacher_id_fk_Teachers_id` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`id`);

ALTER TABLE `Teachers`
ADD CONSTRAINT `Teachers_school_id_fk_Schools_id` FOREIGN KEY (`school_id`) REFERENCES `Schools` (`id`),
ADD CONSTRAINT `Teachers_role_id_fk_Roles_id` FOREIGN KEY (`role_id`) REFERENCES `Roles` (`id`);

ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissions_group_id_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_group_permissions_permission_id_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permission_content_type_id_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permissions_user_id_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_permission_id_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);