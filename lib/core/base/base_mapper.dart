mixin BaseResponseMapper<E, R> {
  E fromResponseToEntity(R response);
}

mixin BaseEntityMapper<E, R> {
  R fromEntityToResponse(E entity);
}
