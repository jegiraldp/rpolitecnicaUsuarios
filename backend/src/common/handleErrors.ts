import { BadRequestException, HttpException, InternalServerErrorException, Logger } from "@nestjs/common"

export const handleException = (error: any, logger: Logger) => {

    if (error.code === 'ER_DUP_ENTRY' || error.errno === 1062) {
        throw new BadRequestException(error.sqlMessage || 'Entrada duplicada')
    }
    if (error.code === 'ER_BAD_NULL_ERROR' || error.errno === 1048) {
        throw new BadRequestException(error.sqlMessage || 'Un campo requerido no puede ser nulo')
    }
    if (error.code === 'ER_ROW_IS_REFERENCED_2' || error.errno === 1451 || error.errno === 1452) {
        throw new BadRequestException('Hay registros relacionados vinculados a esta entrada')
    }

    logger.error(error)

    if (error instanceof HttpException) {
        throw error;
    }

    throw new InternalServerErrorException("Error inesperado, revisa los logs del servidor")
}
