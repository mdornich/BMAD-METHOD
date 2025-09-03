# Post-Development Phase Agents

## Overview

These agents handle activities after the main development phase is complete, focusing on growth, optimization, and market success.

## Agent Roles

### Growth Strategist (growth-strategist.md)

- **Phase**: Post-Development
- **Purpose**: User acquisition, viral mechanics, growth experiments
- **When to Use**: After MVP launch, during scaling phase
- **Key Activities**:
  - Design viral loops and referral programs
  - Run growth experiments and A/B tests
  - Optimize conversion funnels
  - Identify and scale growth channels

### Trend Analyst (trend-analyst.md)

- **Phase**: Planning & Post-Development
- **Purpose**: Market research, trend identification, opportunity validation
- **When to Use**:
  - Planning: Before starting development to validate ideas
  - Post-Development: To identify enhancement opportunities
- **Key Activities**:
  - Monitor viral trends and market signals
  - Validate product-market fit
  - Identify feature opportunities
  - Competitive intelligence gathering

## Integration with BMAD Workflow

### Planning Phase Enhancement

- **Trend Analyst** works with PM and Analyst to:
  - Validate market demand
  - Identify trending features to include
  - Assess competitive landscape
  - Size market opportunity

### Development Phase Enhancement

- **Rapid Prototyper** works with Dev to:
  - Quickly scaffold new features
  - Build MVPs for validation
  - Create demo-ready implementations
- **Test Engineer** works with QA to:
  - Write comprehensive test coverage
  - Fix failing tests intelligently
  - Maintain test suite health

- **Backend Specialist** works with Architect to:
  - Design scalable APIs
  - Optimize database performance
  - Implement security best practices

### Post-Development Phase (New)

After story completion and QA approval:

1. **Growth Strategist** implements:
   - Launch strategy
   - User acquisition campaigns
   - Viral mechanics
   - Growth tracking

2. **Trend Analyst** monitors:
   - User reception
   - Market response
   - Competitive reactions
   - New opportunities

## Command Flow

```yaml
# Planning Phase
*analyze-trends  # Trend Analyst validates opportunity
*create-prd      # PM creates requirements
*design-arch     # Architect + Backend Specialist design system

# Development Phase
*scaffold        # Rapid Prototyper sets up project
*develop-story   # Dev implements with specialist support
*create-tests    # Test Engineer ensures quality

# Post-Development Phase
*growth-strategy # Growth Strategist plans launch
*run-experiments # Growth experiments and optimization
*market-analysis # Trend Analyst tracks success
```

## Benefits of Integration

1. **Comprehensive Coverage**: From ideation through growth
2. **Specialized Expertise**: Deep skills for each domain
3. **Flexible Workflow**: Agents can be used as needed
4. **Data-Driven**: Analytics and trends inform decisions
5. **Quality Focus**: Testing and optimization built-in
