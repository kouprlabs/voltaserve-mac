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

struct ToolboxProfile: View {
    var body: some View {
        VStack(alignment: .leading, spacing: VOMetrics.spacing) {
            HStack {
                VOAvatar(name: "Bruce Wayne", size: 30)
                VStack(alignment: .leading) {
                    Text("Bruce Wayne")
                        .font(.title3)
                    Text(verbatim: "bruce.wayne@voltaserve.com")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)

                }
            }
            VStack(alignment: .leading) {
                Text("5 GB of 30 GB used")
                ProgressView(value: Double(20) / 100.0)
            }
            VStack(alignment: .leading, spacing: VOMetrics.spacingSm) {
                Button {
                } label: {
                    HStack {
                        Image(systemName: "switch.2")
                        Text("Settings")
                    }
                }
                Button {
                } label: {
                    HStack {
                        Image(systemName: "paperplane")
                        Text("Invitations")
                    }
                }
                Button {
                } label: {
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                        Text("Sign Out")
                    }
                }
            }
            .buttonStyle(.plain)
        }
    }
}
