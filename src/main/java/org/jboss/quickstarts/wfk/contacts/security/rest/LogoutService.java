/*
 * JBoss, Home of Professional Open Source
 * Copyright 2014, Red Hat, Inc. and/or its affiliates, and individual
 * contributors by the @authors tag. See the copyright.txt in the
 * distribution for a full listing of individual contributors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.jboss.quickstarts.wfk.contacts.security.rest;

import org.jboss.quickstarts.wfk.contacts.security.annotation.UserLoggedIn;
import org.picketlink.Identity;

import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

/**
 * <p>A RESTful endpoint to logout users.</p>
 *
 * @author Pedro Igor
 */
@Path("/security/logout")
public class LogoutService {

    @Inject
    private Identity identity;

    @POST
    @UserLoggedIn
    public Response logout() {
        this.identity.logout();
        return Response.ok().build();
    }

}
