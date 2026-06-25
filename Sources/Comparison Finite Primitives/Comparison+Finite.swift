// Comparison+Finite.swift
// Finite extensions for Comparison from comparison-primitives.

import Cardinal_Primitives
public import Comparison_Primitives
public import Finite_Enumerable_Primitives
import Ordinal_Primitives
public import Pair_Primitives

// MARK: - Tagged Value

extension Comparison {
    /// A value paired with a comparison result.
    public typealias Value<Payload> = Pair<Comparison, Payload>
}

// MARK: - Finite.Enumerable

extension Comparison: @retroactive Finite.Enumerable {
    /// Number of comparison values.
    @inlinable
    public static var count: Cardinal { 3 }

    /// Ordinal of this value (0: less, 1: equal, 2: greater).
    @inlinable
    public var ordinal: Ordinal {
        switch self {
        case .less: 0
        case .equal: 1
        case .greater: 2
        }
    }

    /// Creates a value from its ordinal.
    @inlinable
    public init(_unchecked: Void, ordinal: Ordinal) {
        self = [.less, .equal, .greater][ordinal]
    }
}
