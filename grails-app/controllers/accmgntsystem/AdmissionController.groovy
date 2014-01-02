package accmgntsystem



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmissionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Admission.list(params), model:[admissionInstanceCount: Admission.count()]
    }

    def show(Admission admissionInstance) {
        respond admissionInstance
    }

    def create() {
        respond new Admission(params)
    }

    @Transactional
    def save(Admission admissionInstance) {
        if (admissionInstance == null) {
            notFound()
            return
        }

        if (admissionInstance.hasErrors()) {
            respond admissionInstance.errors, view:'create'
            return
        }

        admissionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'admissionInstance.label', default: 'Admission'), admissionInstance.id])
                redirect admissionInstance
            }
            '*' { respond admissionInstance, [status: CREATED] }
        }
    }

    def edit(Admission admissionInstance) {
        respond admissionInstance
    }

    @Transactional
    def update(Admission admissionInstance) {
        if (admissionInstance == null) {
            notFound()
            return
        }

        if (admissionInstance.hasErrors()) {
            respond admissionInstance.errors, view:'edit'
            return
        }

        admissionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Admission.label', default: 'Admission'), admissionInstance.id])
                redirect admissionInstance
            }
            '*'{ respond admissionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Admission admissionInstance) {

        if (admissionInstance == null) {
            notFound()
            return
        }

        admissionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Admission.label', default: 'Admission'), admissionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'admissionInstance.label', default: 'Admission'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
