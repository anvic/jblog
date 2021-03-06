/*
 * Copyright 2016 Victor Andreenko
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.jblogcms.core.comment.service;

import org.jblogcms.core.account.model.Account;
import org.jblogcms.core.comment.model.Comment;
import org.jblogcms.core.comment.model.CommentRelation;
import org.jblogcms.core.common.model.JItem;
import org.jblogcms.core.common.service.ItemRelationService;

/**
 * Provides the service for accessing, adding, changing, deleting {@link CommentRelation}
 */
public interface CommentRelationService
        extends ItemRelationService<Comment, CommentRelation> {
    /**
     * Creates {@link CommentRelation} using the method parameters and saves the entity
     *
     * @param itemId    the primary key of the {@link Comment} which extends the {@link JItem}
     * @param accountId the primary key of the {@link Account}
     * @return the saved comment relation
     */
    @Override
    CommentRelation saveItemRelation(long itemId, long accountId);

    /**
     * Deletes {@link CommentRelation} using the method parameters
     *
     * @param itemId    the primary key of the {@link Comment} which extends the {@link JItem}
     * @param accountId the primary key of the {@link Account}
     */
    @Override
    boolean deleteItemRelation(long itemId, long accountId);

}
