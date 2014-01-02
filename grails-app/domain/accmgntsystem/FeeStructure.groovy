package accmgntsystem

class FeeStructure {

    Integer grade;
    Integer admissionFee;
    Integer tutionFee;

    static constraints = {

    }

    static belongsTo = [admission:Admission, studentAccount:StudentAccount]
}
