//
//  ConstraintsBuilder.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

@resultBuilder
struct ConstraintsBuilder {
    static func buildBlock(_ components: Constraints...) -> Constraints {
        components.reduce(Constraints(), +)
    }

    static func buildEither(first component: Constraints) -> Constraints {
        return component
    }

    static func buildEither(second component: Constraints) -> Constraints {
        return component
    }

    static func buildArray(_ components: [Constraints]) -> Constraints {
        components.reduce(Constraints(), +)
    }
}
