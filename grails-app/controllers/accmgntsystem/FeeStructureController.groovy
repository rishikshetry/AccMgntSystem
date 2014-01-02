package accmgntsystem



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FeeStructureController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FeeStructure.list(params), model: [feeStructureInstanceCount: FeeStructure.count()]
    }

    def show(FeeStructure feeStructureInstance) {
        respond feeStructureInstance
    }

    def create() {
        respond new FeeStructure(params)
    }

    @Transactional
    def save(FeeStructure feeStructureInstance) {
        if (feeStructureInstance == null) {
            notFound()
            return
        }

        if (feeStructureInstance.hasErrors()) {
            respond feeStructureInstance.errors, view: 'create'
            return
        }

        feeStructureInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'feeStructureInstance.label', default: 'FeeStructure'), feeStructureInstance.id])
                redirect feeStructureInstance
            }
            '*' { respond feeStructureInstance, [status: CREATED] }
        }
    }

    def edit(FeeStructure feeStructureInstance) {
        respond feeStructureInstance
    }

    @Transactional
    def update(FeeStructure feeStructureInstance) {
        if (feeStructureInstance == null) {
            notFound()
            return
        }

        if (feeStructureInstance.hasErrors()) {
            respond feeStructureInstance.errors, view: 'edit'
            return
        }

        feeStructureInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FeeStructure.label', default: 'FeeStructure'), feeStructureInstance.id])
                redirect feeStructureInstance
            }
            '*' { respond feeStructureInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FeeStructure feeStructureInstance) {

        if (feeStructureInstance == null) {
            notFound()
            return
        }

        feeStructureInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FeeStructure.label', default: 'FeeStructure'), feeStructureInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'feeStructureInstance.label', default: 'FeeStructure'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
