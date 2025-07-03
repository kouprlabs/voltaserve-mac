// Copyright (c) 2025 Anass Bouassaba.
//
// Use of this software is governed by the Business Source License
// included in the file LICENSE in the root of this repository.
//
// As of the Change Date specified in that file, in accordance with
// the Business Source License, use of this software will be governed
// by the GNU Affero General Public License v3.0 only, included in the file
// AGPL-3.0-only in the root of this repository.

import SwiftUI
import VoltaserveCore

@available(macOS 15.0, *)
@main
struct VoltaserveMacApp: App {
    @Environment(\.modelContext) private var context
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @StateObject private var sessionStore = SessionStore()
    @StateObject private var workspaceStore = WorkspaceStore()
    @StateObject private var groupStore = GroupStore()
    @StateObject private var organizationStore = OrganizationStore()

    var body: some Scene {
        voltaserveMac(
            context: context,
            openWindow: openWindow,
            dismissWindow: dismissWindow,
            sessionStore: sessionStore,
            workspaceStore: workspaceStore,
            groupStore: groupStore,
            organizationStore: organizationStore
        )
    }
}
