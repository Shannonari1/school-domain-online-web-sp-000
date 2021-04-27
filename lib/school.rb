# code here!
class School
    attr_accessor :name, :roster
    def initialize(name) #initialized with a name
        @name=name
        @roster={} #empty hash upon initialization 
    end

    def add_student(name, grade) #method with an argument of the student's name
                                 #and their grade
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade) #Method that takes in an argument of a grade and
                     #returns all of the students in that grade.
        @roster[grade]
    end

    def sort #sorted list of all the students where the strings 
            #in the student arrays are sorted alphabetically.
        sorted_hash = {}
        @roster.each do |grade_key, student_array|
            sorted_hash[grade_key] = student_array.sort
        end
        sorted_hash
    end
end
