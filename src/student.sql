
/**

Name can never have the Primary key , because name is not an identifiant(an identifiant is a unique key)
Hint: Many people can have the same name and so forth
 */


alter table student add colum `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT;
/**
 Always better to make a copuy of al our data in a temporary table
 */

 rename table students to students_old_version;

 /**

 ** Now we will create a new table with a  correct primary key and all necesseray indexe
  */

  create table IF NOT EXISTS student (
   `id` int(10) unsigned not null AUTO_INCREMENT,
   `name` VARCHAR (255) not null ,
   `age` int(10) not null ,
   `grade` int(10) not null,
   `clasTeacher` VARCHAR(255),
   `subjects` VARCHAR (255),
  )ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;


---------Dumping table student-------



INSERT INTO `student` (`id`, `name`, `age`, `grade`, `classTeacher`, `subjects`) VALUES
(1, 'Johny Jones', '17', '12', 'Robin Smith', '“Eng/Afr/Math/Sci/Hist/Comp”'),
(2, 'Susan King', '17', '12', 'Robin Smith', '“Afr/Eng/Math/Sci/Geo/Hist”' ),
(3, 'John Doe', '15', '12', 'Tasha Cobbs','“Afr/Eng/Math/Sci/Geo/Hist”' );


/**
 teacher
 The same error has been found
 the name can never be set as ID
 so first we need to alter the table and assign the primary key
 **/

alter table Teacher add colum `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT;

  create table IF NOT EXISTS Teacher (
   `id` int(10) unsigned not null AUTO_INCREMENT,
   `name` VARCHAR (255) not null ,
   `subjects` VARCHAR(255) not null ,
    `headOfGRade` VARCHAR(255),
   `subjects` VARCHAR (255),
   `salary` int(10),
  )ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--------Dumpimg table student ----------

INSERT INTO `Teacher` (`id`,`name`, `subjects`, `headOfGrade`, `salary`) VALUES
(1, 'Robin Smith', '"Hist"', 'Yes', '1000'),
(2, 'John Doe','“Hist/Math”', 'No', '5000' );



-------------------------------QUESTION 3 a)------------------------
DROP FUNCTION IF EXISTS  FUNCTION_RETRIEVE_NUMBER
CREATE FUNCTION FUNCTION_RETRIEVE_NUMBER (prefix VARCHAR) RETURNS VARCHAR
BEGIN
/**
DECLARE VALUE YOU MAY NEED
 */
 DECLARE DESTINATION_FOUND, NUMBER_GIVEN VARCHAR DEFAULT "";
 SELECT destination, prefix VARCHAR prefix,ID FROM prefixMap
 WHERE ID = prefix;
   AND prefix = NUMBER_GIVEN;
   RETURN DESTINATION_FOUND;
  END;
------------- QUESTION 4 b)0----------------------------------------

DROP FUNCTION IF EXIST FUNCTION_CHANGE_DESTINATION
CREATE FUNCTION FUNCTION_CHANGE_DESTINATION(prefix VARCHAR) RETURNS VARCHAR
BEGIN
/**
 DECLARE VALUE
 */
