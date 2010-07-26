/*
 * libvirt-glib-main.c: libvirt glib integration
 *
 * Copyright (C) 2008 Daniel P. Berrange
 * Copyright (C) 2010 Red Hat
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA
 *
 * Author: Daniel P. Berrange <berrange@redhat.com>
 */

#if !defined(__LIBVIRT_GLIB_H__) && !defined(LIBVIRT_GLIB_BUILD)
#error "Only <libvirt-glib/libvirt-glib.h> can be included directly."
#endif

#ifndef __LIBVIRT_GLIB_MAIN_H__
#define __LIBVIRT_GLIB_MAIN_H__

#include <glib.h>

G_BEGIN_DECLS

void vir_g_init(int *argc,
                char ***argv);
gboolean vir_g_init_check(int *argc,
                          char ***argv,
                          GError **err);

G_END_DECLS

#endif /* __LIBVIRT_GLIB_MAIN_H__ */
