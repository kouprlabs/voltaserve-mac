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
    var body: some Scene {
        Window("Toolbox", id: "toolbox") {
            VoltaserveMac()
                .frame(minWidth: 400, minHeight: 800)
        }
        .defaultSize(width: 400, height: 800)
        .windowIdealSize(.fitToContent)
        .windowStyle(.hiddenTitleBar)

        WindowGroup(for: VOWorkspace.Entity.self) { $workspace in
            if let workspace {
                WorkspaceWindow(
                    workspace,
                    sidebarSelection: .constant(.browse),
                    columnVisibility: .constant(.doubleColumn)
                )
            }
        }

        WindowGroup(for: VOGroup.Entity.self) { $group in
            if let group {
                GroupWindow(
                    group,
                    sidebarSelection: .constant(.members),
                    columnVisibility: .constant(.doubleColumn)
                )
            }
        }

        WindowGroup(for: VOOrganization.Entity.self) { $organization in
            if let organization {
                OrganizationWindow(
                    organization,
                    sidebarSelection: .constant(.members),
                    columnVisibility: .constant(.doubleColumn)
                )
            }
        }
    }
}
