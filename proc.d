#!/usr/sbin/dtrace -s
/*-
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Copyright (c) 2022
 *	Seyed Pouria Mousavizadeh Tehrani.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */
 
#pragma D option quiet

BEGIN
{
        printf("Begin:\n\n");
}

sched:::wakeup
/pid == $1/
{
        proc = curthread->td_proc;
        ucred = proc->p_ucred;
        pgrp = proc->p_pgrp;
        pg_session = pgrp->pg_session;
        vmspace = proc->p_vmspace;
        vm_map = &vmspace->vm_map;
        cpuset = curthread->td_cpuset->cs_mask;

        printf("pid: ");
        trace(pid);

        printf("\nppid (parent pid): ");
        trace(ppid);

        printf("\nopid (real parent pid): ");
        trace(proc->p_oppid);

        printf("\n\nucred: \n");
        printf("\tcr_ref (reference count): ");
        trace(ucred->cr_ref);

        printf("\n\tcr_users (proc + thread using this cred): ");
        trace(ucred->cr_users);

        printf("\n\tcr_uid (effective user id): ");
        trace(ucred->cr_uid);

        printf("\n\tcr_ruid (real user id): ");
        trace(ucred->cr_ruid);

        printf("\n\tcr_svuid (saved user id): ");
        trace(ucred->cr_svuid);

        printf("\n\tcr_ngroups (number of groups): ");
        trace(ucred->cr_ngroups);

        printf("\n\tcr_rgid (real group id): ");
        trace(ucred->cr_rgid);

        printf("\n\tcr_svgid (saved group id): ");
        trace(ucred->cr_svgid);

        printf("\n\tcr_flags (credential flags): ");
        trace(ucred->cr_flags);

        printf("\n\np_state (process state):");
        trace(proc->p_state);

        printf("\n\ncpuset: ");
        trace(cpuset);
        
        
        printf("\n\nsession: \n");
        printf("\ts_sid (process group session id): ");
        trace(pg_session->s_sid);

        printf("\n\ts_count (number of process group in session): ");
        trace(pg_session->s_count);

        printf("\n\ts_leader (session leader): ");
        trace(pg_session->s_leader->p_pid);

        printf("\n\tpg_id (process group id): ");
        trace(pgrp->pg_id);


        printf("\n\nvmspace: \n");
        printf("vm_map: \n");
        printf("\tnentries (number of vm_map_entries): ");
        trace(vm_map->nentries);
        printf("\n\ttimestamp (version number): ");
        trace(vm_map->timestamp);

        exit(0);
}
