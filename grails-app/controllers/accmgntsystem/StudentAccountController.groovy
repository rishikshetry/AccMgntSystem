package accmgntsystem



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StudentAccountController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StudentAccount.list(params), model: [studentAccountInstanceCount: StudentAccount.count()]
    }

    def show(StudentAccount studentAccountInstance) {
        respond studentAccountInstance
    }

    def create() {
        respond new StudentAccount(params)
    }

    @Transactional
    def save(StudentAccount studentAccountInstance) {
        if (studentAccountInstance == null) {
            notFound()
            return
        }

        if (studentAccountInstance.hasErrors()) {
            respond studentAccountInstance.errors, view: 'create'
            return
        }

        studentAccountInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'studentAccountInstance.label', default: 'StudentAccount'), studentAccountInstance.id])
                redirect studentAccountInstance
            }
            '*' { respond studentAccountInstance, [status: CREATED] }
        }
    }

    def edit(StudentAccount studentAccountInstance) {
        respond studentAccountInstance
    }

    @Transactional
    def update(StudentAccount studentAccountInstance) {
        if (studentAccountInstance == null) {
            notFound()
            return
        }

        if (studentAccountInstance.hasErrors()) {
            respond studentAccountInstance.errors, view: 'edit'
            return
        }

        studentAccountInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StudentAccount.label', default: 'StudentAccount'), studentAccountInstance.id])
                redirect studentAccountInstance
            }
            '*' { respond studentAccountInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StudentAccount studentAccountInstance) {

        if (studentAccountInstance == null) {
            notFound()
            return
        }

        studentAccountInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StudentAccount.label', default: 'StudentAccount'), studentAccountInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'studentAccountInstance.label', default: 'StudentAccount'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
