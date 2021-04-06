					<div class="list-group">
<c:forEach var="chapter" items="${chapterList }">
							<div class="accordion accordion-flush" id="accordionFlushExample">
								<div class="accordion-item">
									<h2 class="accordion-header"
										id="flush-heading${chapter.chapter_id }">
										<button class="accordion-button  collapse show" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#flush-collapse${chapter.chapter_id }"
											aria-expanded="false"
											aria-controls="flush-collapse${chapter.chapter_id }">
											${chapter.chapter_title }</button>
									</h2>
									<div id="flush-collapse${chapter.chapter_id }"
										class="accordion-collapse collapse"
										aria-labelledby="flush-heading${chapter.chapter_id }"
										data-bs-parent="#accordionFlushExample">
										<div class="accordion-body">
											<c:forEach var="curriculum" items="${curriculum }">
												<c:if test="${chapter.chapter_id == curriculum.chapter_id}">
													<a
														href="${contextPath }/video/${chapter.lecture_title}/${curriculum.video_id}"
														class="curriculum__text"> 
														<c:choose>
															<c:when test="${openYn=='true'}">

																<c:forEach var="myProgress" items="${myProgress }">
																	<c:if test="${myProgress.video_id == curriculum.video_id && myProgress.progress==1}">

																		<i class="fas fa-check-circle"></i>${curriculum.title }
										
										</c:if>
																	<c:if test="${myProgress.video_id == curriculum.video_id && myProgress.progress==0}">

																		<i class="far fa-check-circle"></i>${curriculum.title }
										
										</c:if>

																</c:forEach>

															</c:when>


															<c:when test="${openYn2=='true'}">

																<i class="far fa-check-circle"></i>${curriculum.title }
										
										
										</c:when>


															<c:otherwise>

																<c:if test="${curriculum.secret eq 'y'}">
																	<i class="fas fa-lock locked"></i>${curriculum.title }
										</c:if>

																<c:if test="${curriculum.secret eq 'n'}">

																	<i class="fas fa-unlock-alt"></i>${curriculum.title }
										
										</c:if>




															</c:otherwise>



														</c:choose>


													</a>

												</c:if>

											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						</div>