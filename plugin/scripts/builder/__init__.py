# Builder CLI — 确定性 SQL 质量检查规则生成器
# 覆盖 5 个维度：validity / uniqueness / completeness / consistency / accuracy
# 80% 常见规则无需 LLM，由本地 Builder 生成

from builder.base import BaseBuilder, Rule
from builder.validity_enhanced import ValidityBuilderEnhanced as ValidityBuilder
from builder.uniqueness import UniquenessBuilder
from builder.completeness_enhanced import CompletenessBuilderEnhanced as CompletenessBuilder
from builder.consistency_enhanced import ConsistencyBuilderEnhanced as ConsistencyBuilder
from builder.accuracy import AccuracyBuilder
from builder.semantic import match_business_term, get_enum_values, BUSINESS_TERM_RULES, STANDARD_ENUMS

__all__ = ["BaseBuilder", "Rule", "ValidityBuilder", "UniquenessBuilder",
           "CompletenessBuilder", "ConsistencyBuilder", "AccuracyBuilder",
           "match_business_term", "get_enum_values", "BUSINESS_TERM_RULES", "STANDARD_ENUMS"]
